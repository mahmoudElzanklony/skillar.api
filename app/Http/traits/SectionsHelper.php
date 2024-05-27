<?php


namespace App\Http\traits;


use App\Http\Actions\SectionsWithAllData;
use App\Http\Resources\TemplateSectionResource;
use App\Models\sections;
use App\Models\templates_sections;
use App\Services\FormRequestHandleInputs;
use App\Http\Actions\ImageModalSave;
use App\Http\Controllers\Filters\NameFilter;
use App\Http\Requests\sectionsFormRequest;
use App\Http\Requests\templatesFormRequest;
use App\Http\Resources\SectionResource;
use App\Http\Resources\TemplateResource;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;

trait SectionsHelper
{
    use upload_image;
    public static function all_sections(){
        $sections = SectionsWithAllData::get_data();
        $output = app(Pipeline::class)
            ->send($sections)
            ->through([
                NameFilter::class
            ])
            ->thenReturn()
            ->paginate(25);
        return SectionResource::collection($output);
    }

    public static function specific_section($name){
        $output =  $sections = \App\Models\sections::query()
            ->when($name != "first",function($e) use ($name){
                $e->where('id','=',$name);
            })
            ->with(['attributes','image'])
            ->first();
        return SectionResource::make($output);
    }

    public static function names(){
        $sections = SectionsWithAllData::get_data();
    }

    public static function per_template($template_id){
        $data = templates_sections::query()
            ->with(['section.attributes'])
            ->where('template_id','=',$template_id)
            ->orderBy('id','DESC')
            ->get();
        return TemplateSectionResource::collection($data);
    }

    public function save_section(sectionsFormRequest $request){
        $data = $request->validated();
        $data['user_id'] = auth()->id();
        $data =  FormRequestHandleInputs::handle_inputs_langs($data,['name','info']);

        DB::beginTransaction();
        $section = \App\Models\sections::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);

        if(request()->hasFile('image')){
            $image = $this->upload(request('image'),'sections');
            ImageModalSave::make($section->id,'sections','sections/'.$image);
        }

        if(request()->has('attributes')){
            $section->attributes()->sync(request('attributes'));
        }
        DB::commit();
        return messages::success_output(trans('messages.saved_successfully'),SectionResource::make($section));
    }
}
