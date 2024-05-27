<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResumeResource extends JsonResource
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
            'name'=>$this->name,
            'file'=>$this->file,
            'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];
    }
}
