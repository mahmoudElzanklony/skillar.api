<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserCvSectionResource extends JsonResource
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
          'user_cv'=>UserCvResource::make($this->whenLoaded('user_cv')),
          'section'=>SectionResource::make($this->whenLoaded('section')),
          'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];
    }
}
