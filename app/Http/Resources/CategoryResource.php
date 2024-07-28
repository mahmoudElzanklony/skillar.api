<?php

namespace App\Http\Resources;

use App\Services\FormRequestHandleInputs;
use Illuminate\Http\Resources\Json\JsonResource;

class CategoryResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $arr =  [
            'id'=>$this->id,
            'name'=>FormRequestHandleInputs::handle_output_column($this->name),
            'image'=>ImageResource::make($this->whenLoaded('image')),
            'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];
        if(isset($this->jobs_count)){
            $arr['jobs_count'] = $this->jobs_count;
        }
        return $arr;
    }
}
