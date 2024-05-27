<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AttributeSearchTableResource extends JsonResource
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
          'name'=>isset($this->ar_name) ? $this->{app()->getLocale().'_name'} : $this->{app()->getLocale().'_title'},
          'description'=>isset($this->ar_desc) ? $this->{app()->getLocale().'_desc'} : '',
        ];
    }
}
