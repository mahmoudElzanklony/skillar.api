<?php


namespace App\Services;


use App\Models\languages;
use Illuminate\Support\Str;

class FormRequestHandleInputs
{
    public static function handle($all , $inputs){
        $langs = languages::query()->select('prefix')->get();
        foreach($langs as $lang){
            foreach($inputs as $input){
                $all[$lang->prefix.'_'.$input] = (app()->getLocale() == $lang->prefix ? 'required':'filled' ) ;
                //$all[$lang->prefix.'_'.$input] = (app()->getLocale() == $lang->prefix ? 'required':'filled' ) ;
            }
        }
        return $all;
    }

    public static function attributes_messages($arr){
        $data = array_keys($arr);
        $output = [];
        foreach($data as $datum){
            $output[$datum] = trans('keywords.'.$datum);
        }
        return $output;
    }

    public static function handle_inputs_langs($all,$decoded){
        $langs = languages::query()->select('prefix')->get()->map(function ($e){
            return $e->prefix;
        });
        $output = [];
        foreach($all as $name => $value){
            $exist_inner_arr = 0;
            foreach ($langs as $lang) {
                if (Str::contains($name, $lang)) {
                    $input_name = Str::replace($lang,'',$name);
                    $input_name = substr($input_name, 1);
                    $output[$input_name][$lang] = $value;
                    $exist_inner_arr = 1;
                }
            }
            if($exist_inner_arr == 0){
                $output[$name] = $value;
            }
        }

        foreach ($decoded as $value){

            $output[$value] = isset($output[$value]) ? json_encode($output[$value] ,JSON_UNESCAPED_UNICODE) : null;
        }
        return $output;
    }

    public static function handle_output_column($value){
        if($value != '') {
            try{
                $value = json_decode($value, true);
                return $value[app()->getLocale()];
            }catch (\Exception $e){
                return '';
            }
        }
        return '';
    }

    public static function handle_output_column_for_all_lang($name,$value,$langs){
        $arr = [];
        $value = json_decode($value, true) ?? '';
        foreach($langs as $lang){
            $arr[$lang->prefix.'_'.$name] = $value[$lang->prefix] ?? '';
        }
        return $arr;
    }
}
