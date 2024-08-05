<?php


namespace App\Services\chat;


use App\Models\chats;

class conversation_data
{
    public static function data($conversation_id){
        return chats::query()->with(['sender','receiver'])
            ->where('conversation_id','=',$conversation_id)
            ->orderBy('id','DESC')
            ->paginate(8);
    }
}
