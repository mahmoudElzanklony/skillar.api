<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class JobOfferResource extends JsonResource
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
          'company_id'=>$this->company_id,
          'name'=>$this->name,
          'description'=>$this->description,
          'responsibilities'=>$this->responsibilities,
          'company'=>UserResource::make($this->whenLoaded('company')),
          'category'=>CategoryResource::make($this->whenLoaded('category')),
          'min_experience'=>$this->min_experience,
          'max_experience'=>$this->max_experience,
          'city'=>CityResource::make($this->whenLoaded('city')),
          'work_time'=>$this->work_time,
          'work_type'=>$this->work_type,
          'salary'=>$this->salary,
          'status'=>$this->status,
          'skills'=>SkillsResource::collection($this->whenLoaded('skills')),
          'applicants'=>JobOfferApplicantsResource::collection($this->whenLoaded('applicants')),
          'applicants_count'=>$this->applicants_count,
          'views'=>$this->views,
          'created_at'=>$this->created_at->format('Y h d,h:i A'),
          'published'=>$this->created_at->diffForHumans()
        ];
    }
}
