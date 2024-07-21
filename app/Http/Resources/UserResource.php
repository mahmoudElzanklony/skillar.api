<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
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
          'username'=>$this->username,
          'email'=>$this->email,
          'phone'=>$this->phone,
          'country'=>CountryResource::make($this->whenLoaded('country')),
          'owner_cvs'=>$this->owner_cvs_count ?? null,
          'fork_cvs'=>$this->fork_cvs_count ?? null,
          'image'=>['name'=>$this->image ?? 'default.png'],
          'profile_sections'=>EmployeeProfileSectionResource::collection($this->whenLoaded('profile_sections_data')),
          'bio'=> $this->bio ?? '',
          'serial_number'=> $this->serial_number,
          'email_verified_at'=> $this->email_verified_at,
          'created_at'=>$this->created_at != null ? $this->created_at->format('Y h d,h:i A'):'',
        ];
    }
}
