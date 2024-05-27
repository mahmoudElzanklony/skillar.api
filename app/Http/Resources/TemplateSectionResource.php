<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TemplateSectionResource extends JsonResource
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
          'section_id'=>$this->section_id,
          'template_id'=>$this->template_id,
          'template'=>TemplateResource::make($this->whenLoaded('template')),
          'section'=>SectionResource::make($this->whenLoaded('section')),
          'attr_answers'=>TemplateSecAttrValueResource::collection($this->whenLoaded('attr_answers')),
          'content_width'=>$this->content_width,
          'created_at'=>$this->created_at,
        ];
    }
}
