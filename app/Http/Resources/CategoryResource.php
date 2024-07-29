<?php

namespace App\Http\Resources;

use App\Models\languages;
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
        if(request()->hasHeader('AllLangs')){
            $langs = languages::query()->select('prefix')->get();
            // data
            $name = FormRequestHandleInputs::handle_output_column_for_all_lang('name',$this->name,$langs);
            return array_merge($arr,$name);
        }
        return $arr;
    }
}
