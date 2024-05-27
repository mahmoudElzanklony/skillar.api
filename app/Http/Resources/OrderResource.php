<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
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
            'template'=>TemplateResource::make($this->whenLoaded('template')),
            'user'=>UserResource::make($this->whenLoaded('user')),
            'price'=>$this->price,
            'service_profit'=>$this->service_profit,
            'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];
    }
}
