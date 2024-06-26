<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class EmployeeInfoItemResource extends JsonResource
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
          'employee_profile_section_id'=>$this->employee_profile_section_id,
          'attribute_id'=>$this->attribute_id,
          'answer'=>$this->answer,
          'type'=>$this->type,
          'attribute'=>AttributeResource::make($this->whenLoaded('attribute'))
        ];
    }
}
