<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SkillsResource extends JsonResource
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
          'title'=>$this->{app()->getLocale().'_title'},
          'description'=>$this->{app()->getLocale().'_desc'},
          'note'=>$this->note,
          'sk_group'=>TitleDescResource::make($this->whenLoaded('sk_group'))            /*'sk_group_id'=>$this->sk_group_id,
            'title'=>$this->{app()->getLocale().'_title'},
            'desc'=>$this->{app()->getLocale().'_desc'},
            'note'=>$this->note,
            'sk_group'=>TitleDescResource::make($this->whenLoaded('sk_group')),*/
        ];
    }
}
