<?php


namespace App\Services\chat;


use App\Models\chats;

class seen_conversation
{
    public static function seen($conversation_id){
        $data = chats::query()->where('conversation_id','=',$conversation_id)
            ->where('sender_id','!=',auth()->id())->update(['seen'=>1]);
    }
}
