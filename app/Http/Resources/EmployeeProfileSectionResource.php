<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class EmployeeProfileSectionResource extends JsonResource
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
          'section_id'=>$this->section_id,
          'attributes_data'=>EmployeeInfoItemResource::collection($this->whenLoaded('attributes_data')),
          'first_attribute_data'=>EmployeeInfoItemResource::make($this->whenLoaded('first_attribute_data'))
        ];
    }
}
