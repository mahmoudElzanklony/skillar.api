<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ChatResource extends JsonResource
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
          'sender_id'=>$this->sender_id,
          'receiver_id'=>$this->receiver_id,
          'sender'=>UserResource::make($this->whenLoaded('sender')),
          'receiver'=>UserResource::make($this->whenLoaded('receiver')),
          'message'=>$this->message,
          'conversation_id'=>$this->conversation_id,
          'read_at'=>$this->read_at,
          'created_at'=>$this->created_at != null ? $this->created_at->format('Y h d,h:i A'):'',
          'published_at'=>$this->created_at->diffForHumans()
        ];
    }
}
