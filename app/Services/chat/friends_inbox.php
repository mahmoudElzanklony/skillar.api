<?php


namespace App\Services\chat;


use App\Models\chats;

class friends_inbox
{
    public static function get_inbox_users(){
        return chats::query()->with(['receiver','sender'])
            ->whereRaw('(sender_id  = '.auth()->id().' OR receiver_id = '.auth()->id().')')
            ->whereRaw(' id IN ( SELECT max(id) as id FROM chats GROUP by conversation_id ORDER by id DESC )')
            ->orderBy('created_at','DESC')
            ->get();
    }
}
