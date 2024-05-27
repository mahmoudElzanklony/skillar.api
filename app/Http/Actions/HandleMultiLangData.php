<?php


namespace App\Http\Actions;


use Illuminate\Support\Str;

class HandleMultiLangData
{
    public static function handle_data($data){
        $output = [];
        $element_combination = [];
        $key_search = '';
        foreach($data as $key => $d){
            if(Str::contains($key,'ar_')){
                $key_search = str_replace('ar_','',$key);
                $element_combination['ar'] = $d;
            }else if(Str::contains($key,'en_')){
                $key_search = str_replace('en_','',$key);
                $element_combination['en'] = $d;
            }

            if(sizeof($element_combination) == 2 && isset($key_search)){
                $output[$key_search] = json_encode($element_combination);
                $element_combination = [];
            }else{
                $output[$key] = $d;
            }
        }
        return $output;
    }
}
