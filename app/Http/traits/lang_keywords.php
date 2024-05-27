<?php


namespace App\Http\traits;


trait lang_keywords
{
    public function get_keywords($data){
        $output = [];
        foreach($data as $item){
            $output[$item] = trans('keywords.'.$item);
        }
        return $output;
    }


    public function get_text_keywords($data){
        $output = [];
        foreach($data as $item){
            $output[$item] = trans('text_data.'.$item);
        }
        return $output;
    }
}
