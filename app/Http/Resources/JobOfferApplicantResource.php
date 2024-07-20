<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class JobOfferApplicantResource extends JsonResource
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
          'job_id'=>$this->job_id,
          'user_resume_id'=>$this->user_resume_id,
          'job'=>JobOfferResource::make($this->whenLoaded('job')),
          'resume'=>UserResumeResource::make($this->whenLoaded('resume')),
          'status'=>$this->status,
          'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];
    }
}
