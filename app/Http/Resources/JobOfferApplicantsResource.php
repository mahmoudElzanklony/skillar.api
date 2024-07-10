<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class JobOfferApplicantsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        /*return [
          'id'=>$this->id,
          'user'=>UserResource::make($this->whenLoaded('user')),
          'file'=>$this->file,
          'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];*/
        return [
            'id'=>$this->id,
            'job'=>JobOfferResource::make($this->whenLoaded('job')),
            'resume'=>UserResumeResource::make($this->whenLoaded('resume')),
            'job_id'=>$this->job_id,
            'user_resume_id'=>$this->user_resume_id,
            'status'=>$this->status ?? 'pending',
            'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];
    }
}
