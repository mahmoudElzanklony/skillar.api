<?php


namespace App\Services\mail;


use App\Mail\Myemail;

class send_email
{
    public static function send($title,$body,$link,$link_msg,$to){
        $details = [
            'title' => $title,
            'body' => $body,
            'link'=>$link,
            'link_msg'=>$link_msg,
        ];

        \Mail::to($to)->send(new Myemail($details));
    }
}
