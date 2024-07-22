<?php

namespace App\Http\Resources;

use App\Models\User;
use App\Services\FormRequestHandleInputs;
use Illuminate\Http\Resources\Json\JsonResource;

class NotificationResource extends JsonResource
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
          'data'=>[
            'info'=>FormRequestHandleInputs::handle_output_column($this['data']['data']),
            'sender'=>UserResource::make(User::query()->with('image')->find($this['data']['sender']))
          ],
          'read_at'=>$this->read_at,
          'created_at'=>$this->created_at->format('Y h d,h:i A'),
        ];
    }
}
