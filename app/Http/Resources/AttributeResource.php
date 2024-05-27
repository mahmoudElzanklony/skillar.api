<?php

namespace App\Http\Resources;

use App\Services\FormRequestHandleInputs;
use Illuminate\Http\Resources\Json\JsonResource;

class AttributeResource extends JsonResource
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
            'name'=>$this->name,
            'label'=>FormRequestHandleInputs::handle_output_column($this->label),
            'placeholder'=>FormRequestHandleInputs::handle_output_column($this->placeholder),
            'before_answer'=>FormRequestHandleInputs::handle_output_column($this->before_answer),
            'type'=>$this->type,
            'image'=>ImageResource::make($this->whenLoaded('image')),
            'selections'=>$this->type == 'selections' ? AttributeSelectionResource::make($this->selections):[],
            'created_at'=>$this->created_at,
        ];
    }
}
