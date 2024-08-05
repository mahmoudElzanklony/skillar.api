<?php

namespace App\Http\Controllers;

use App\Http\Requests\chatFormRequest;
use App\Http\Resources\ChatResource;
use App\Http\traits\messages;
use App\Models\User;
use App\Services\chat\conversation_data;
use App\Services\chat\friends_inbox;
use App\Services\chat\seen_conversation;
use App\Services\chat\send_message;
use App\Models\chats;

class InboxController extends Controller
{
    //


    public function get_friends(){
        $data = friends_inbox::get_inbox_users();
        return messages::success_output('',ChatResource::collection($data));
    }

    public function get_conversation()
    {
        $data = chats::query()
            ->when(request()->filled('conversation_id'),function ($e){
                $e->where('conversation_id','=',request('conversation_id'));
            })
            ->paginate(150);
        $receiver = User::query()
            ->with('image')
            ->find(request('receiver_id'));
        return messages::success_output('',[
            'messages'=>ChatResource::collection($data),
            'receiver'=>$receiver
        ]);
    }

    public function send_message(chatFormRequest $request){
        $data = $request->validated();
        $data['sender_id'] = auth()->id();
        send_message::send($data);
        $data = friends_inbox::get_inbox_users();
        return messages::success_output('',ChatResource::collection($data));
    }
}
