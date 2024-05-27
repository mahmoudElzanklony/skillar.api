<?php


namespace App\Http\traits;


use App\Http\Actions\ImageModalSave;
use App\Http\Controllers\Filters\CategoryId;
use App\Http\Controllers\Filters\NameFilter;
use App\Http\Controllers\Filters\ParentId;
use App\Http\Controllers\Filters\PriceFilter;
use App\Http\Controllers\Filters\UserId;
use App\Http\Requests\templateSectionsFormRequest;
use App\Http\Requests\templatesFormRequest;
use App\Http\Resources\StyleResource;
use App\Http\Resources\TemplateResource;
use App\Http\Resources\TemplateSectionResource;
use App\Models\elements_style;
use App\Models\orders;
use App\Models\templates;
use App\Services\FormRequestHandleInputs;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;

trait TemplatesHelper
{
    use upload_image , messages;

    public function all_templates_info($withSection = false)
    {
        return templates::query()->with('user')->when($withSection == true , function ($q){
            $q->with('sections',function ($e){
                $e->with(['section'=>function ($r) {
                    $r->with('attributes.image','image');
                },'attr_answers.attribute']);
            });
        });
    }
    public function all_templates(){
        $templates =  $this->all_templates_info()
            ->when(!(request()->has('parent_id')),function ($e){
                $e->whereRaw('(visibility = "public" and parent_id is null)');
            })
            ->with('children.user.image')
            ->with('user.image')
            ->withCount('sections')
            ->with('image')->orderBy('id','DESC');
        $output = app(Pipeline::class)
                 ->send($templates)
                  ->through([
                    NameFilter::class,
                    UserId::class,
                    CategoryId::class,
                    PriceFilter::class,
                    ParentId::class
                 ])
                ->thenReturn()
                ->paginate(10);
        return TemplateResource::collection($output);
    }



    public function all_info($id)
    {
        $data =  $this->all_templates_info(true)
            ->with('image')
            ->with('style')->findOrFailWithMsg($id,'this id element not found');
        return $this->try_execute($data,TemplateResource::class,'make');


    }

    public function check_payment($id)
    {
        $order = orders::query()
            ->where('user_id','=',auth()->id())
            ->where('template_id','=',$id)->first();

        if($order == null){
            return response()->json(false);
        }else{
            return response()->json(true);
        }
    }

    public function style($id)
    {
        $style = elements_style::query()
            ->where('styleable_type','=','App\Models\templates')
            ->where('styleable_id','=',$id)->first();

        $layoutStyle = elements_style::query()
            ->where('styleable_type','=','templates_layout')
            ->where('styleable_id','=',$id)->first();
        return response()->json(['style'=>json_decode($style->style,true),'layout'=>json_decode($layoutStyle->style,true)]);
    }

    public function save_template(templatesFormRequest $request){
        $data = $request->validated();
        $data['user_id'] = auth()->id();
        $data =  FormRequestHandleInputs::handle_inputs_langs($data,['name']);
        DB::beginTransaction();
        $template = \App\Models\templates::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);

        if(request()->hasFile('image')){
            $image = $this->upload(request('image'),'templates');
            ImageModalSave::make($template->id,'templates','templates/'.$image);
        }
        DB::commit();
        return messages::success_output(trans('messages.saved_successfully'),TemplateResource::make($template));
    }

    public function save_template_sections(templateSectionsFormRequest $request){
        $data = $request->validated();
        DB::beginTransaction();
        $template = \App\Models\templates_sections::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);


        DB::commit();
        return messages::success_output(trans('messages.saved_successfully'),TemplateSectionResource::make($template));
    }
}
