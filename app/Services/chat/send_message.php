<?php


namespace App\Services\chat;


use App\Models\chats;
use App\Models\conversations;
use App\Models\User;
use App\Services\notifications\create_notification;

class send_message
{
    public static function send($data){

        // check first chat conversation
        $check_message = chats::query()
            ->whereRaw('(sender_id = '.$data['sender_id'].' and receiver_id = '.$data['receiver_id'].') OR ( sender_id = '.$data['receiver_id'].' and receiver_id = '.$data['sender_id'].')')
            ->orderBy('id','DESC')->first();

        if($check_message != null){
            $conversation_id = $check_message->conversation_id;
        }else{
            // create new conversation
            $conversation = conversations::query()->create([
                'users'=>$data['sender_id'].','.$data['receiver_id'],
                'type'=>'1:1',
            ]);
            $conversation_id = $conversation->id;
        }
        $data['conversation_id'] = $conversation_id;
        // send new message
        $data['receiver_id'] = 7;
        chats::query()->create($data);


    }
}
