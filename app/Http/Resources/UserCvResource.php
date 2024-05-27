<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserCvResource extends JsonResource
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
          'user'=>UserResource::make($this->whenLoaded('user')),
          'template'=>TemplateResource::make($this->whenLoaded('template')),
          'created_at'=>$this->created_at,
        ];
    }
}
