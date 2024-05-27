<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserCvSecAttrValResource extends JsonResource
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
          'attribute'=>AttributeResource::make($this->whenLoaded('attribute')),
          'user_cv_section'=>UserCvSectionResource::make($this->whenLoaded('user_cv_section')),
          'answer'=>$this->answer,
          'answer_type'=>$this->answer_type,
          'content_width'=>$this->content_width,
          'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];
    }
}
