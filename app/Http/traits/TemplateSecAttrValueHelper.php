<?php


namespace App\Http\traits;


use App\Http\Controllers\Filters\AttributeId;
use App\Http\Controllers\Filters\EndDateFilter;
use App\Http\Controllers\Filters\StartDateFilter;
use App\Http\Controllers\Filters\TemplateSectionId;
use App\Http\Controllers\Filters\UsernameFilter;
use App\Http\Requests\templateSecAttrValueFormRequest;
use App\Http\Resources\AttributeSearchTableResource;
use App\Http\Resources\TemplateSecAttrValueResource;
use App\Models\attributes;
use App\Models\attributes_selections;
use App\Models\template_sec_attr_value;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

trait TemplateSecAttrValueHelper
{
    public function all_template_sec_attr_data(){
        $data = template_sec_attr_value::query()->with(['attribute'])->orderBy('id','DESC');
        $output = app(Pipeline::class)
            ->send($data)
            ->through([
                TemplateSectionId::class,
                AttributeId::class,
            ])
            ->thenReturn()
            ->get();
        return TemplateSecAttrValueResource::collection($output);
    }
    public function save_template_sec_attr_value(templateSecAttrValueFormRequest $request){
        $data = $request->validated();
        $output = template_sec_attr_value::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);
        return TemplateSecAttrValueResource::make($output);
    }

    public function search_attribute_values(){
        $attribute = attributes_selections::query()->where('attribute_id','=',request('attribute_id'))->first();
        $data  = app($attribute->model)::query();
        if (Schema::hasColumn(Str::replace('App\Models\\','',$attribute->model), 'ar_name')) {
            $data->whereRaw('(ar_name like "%'.request('name').'%" or en_name like "%'.request('name').'%")');
        } else {
            $data->whereRaw('(ar_title like "%'.request('name').'%" or en_title like "%'.request('name').'%")');
        }
        return AttributeSearchTableResource::collection($data->get());
    }
}
