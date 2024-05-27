<?php


namespace App\Http\traits;


use App\Http\Controllers\Filters\LabelFilter;
use App\Http\Requests\AttributeFormRequest;
use App\Http\Resources\AttributeResource;
use App\Models\attributes;
use App\Models\attributes_selections;
use App\Models\images;
use App\Services\FormRequestHandleInputs;
use App\Http\Actions\ImageModalSave;
use App\Http\Controllers\Filters\NameFilter;
use App\Http\Requests\sectionsFormRequest;

use App\Http\Resources\SectionResource;

use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;

trait AttributesHelper
{
    use upload_image;
    public static function all_attributes(){
        $sections = attributes::query()->with('image')->orderBy('id','DESC');
        $output = app(Pipeline::class)
            ->send($sections)
            ->through([
                LabelFilter::class
            ])
            ->thenReturn()
            ->paginate(10);
        return AttributeResource::collection($output);
    }

    public function save_attribute(AttributeFormRequest $request){
        $data = $request->validated();
        $data['user_id'] = auth()->id();
        $data =  FormRequestHandleInputs::handle_inputs_langs($data,['label','placeholder','before_answer']);

        DB::beginTransaction();
        $output = \App\Models\attributes::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);
        // if this attr multi selections
        if(request()->filled('table')){
            $this->save_attr_selections($output->id,request('table'));
        }
        // apply image icon for this attribute
        if(request()->has('image')){
            images::query()
                ->where('imageable_id','=',$output->id)
                ->where('imageable_type','=','App\Models\attributes')->delete();
            ImageModalSave::make($output->id,'attributes',request('image'));
        }


        DB::commit();
        return messages::success_output(trans('messages.saved_successfully'),AttributeResource::make($output));
    }

    public function save_attr_selections($attr_id,$table){
        attributes_selections::query()->updateOrCreate([
            'attribute_id'=>$attr_id
        ],[
            'model'=>'App\\Models\\'.$table
        ]);
    }
}
