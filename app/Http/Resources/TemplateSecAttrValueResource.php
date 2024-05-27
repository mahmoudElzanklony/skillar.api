<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TemplateSecAttrValueResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
          'id'=>$this->id,
          'template_section_id'=>$this->template_section_id,
          'attribute_id'=>$this->attribute_id,
          'template_section'=>TemplateSectionResource::make($this->whenLoaded('template_section')),
          'attribute'=>AttributeResource::make($this->whenLoaded('attribute')),
          'answer'=>$this->answer,
          'selection_table_val'=>$this->when($this->answer_type == 'selection',function(){
              $table = app($this->attribute->selections->model);
              $row_val = $table->where('id','=',$this->answer)->first();
              if($row_val != null){
                  $val = $row_val->{app()->getLocale().'_name'};
                  if(!($val)){
                      $val = $row_val->{app()->getLocale().'_title'};
                  }
                  return json_encode(['key'=>$this->answer,'value'=>$val],JSON_UNESCAPED_UNICODE);
              }
          }),
          'answer_type'=>$this->answer_type,
          'content_width'=>$this->content_width,
          'created_at'=>$this->created_at,
        ];
    }
}
