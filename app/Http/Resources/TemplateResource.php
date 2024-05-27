<?php

namespace App\Http\Resources;

use App\Services\FormRequestHandleInputs;
use Illuminate\Http\Resources\Json\JsonResource;

class TemplateResource extends JsonResource
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
          'user_id'=>$this->user_id,
          'category_id'=>$this->category_id,
          'category'=>CategoryResource::make($this->whenLoaded('category')),
          'user'=>UserResource::make($this->whenLoaded('user')),
          'style'=>StyleResource::make($this->whenLoaded('style')),
          'image'=>ImageResource::make($this->whenLoaded('image')),
          'children'=>TemplateResource::collection($this->whenLoaded('children')),
          'sections'=>TemplateSectionResource::collection($this->whenLoaded('sections')),
          'name'=>$this->name,
          'type'=>$this->type,
          'visibility'=>$this->visibility,
          'price'=>$this->price,
          'parent_id'=>$this->parent_id,
          'children_count'=>$this->when(isset($this->children_count),function (){
              return $this->children_count;
          }),
          'sections_count'=>$this->when(isset($this->sections_count),function (){
              return $this->sections_count;
          }),
          'created_at'=>$this->created_at->format('Y h d,h:i A'),

        ];
    }
}
