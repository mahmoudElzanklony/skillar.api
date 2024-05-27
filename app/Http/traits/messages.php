<?php
namespace App\Http\traits;

use Illuminate\Http\JsonResponse;

trait messages {
    static function errors($data){
        $errors = [];
        foreach($data as $key => $val){
            $errors[$key] = $val;
        }
        return $errors;
    }

    public function try_execute($data , $resourceClass = null , $func = null){
        if($data instanceof JsonResponse){
            if($data->getData()->status != 200){
                return $data;
            }
        }else{
            $instance = new $resourceClass($data);
            return $instance->{$func}($data);
        }
    }


    static function error_output($errors , $status = 500 , $code = 0){
        return response()->json(['errors'=>$errors,'status'=>$status,'code'=>$code],$status);
    }


    static function success_output($msg,$data = null,$related = null){
        return response()->json(['message'=>$msg,'status'=>200,'data'=>$data,'related'=>$related]);
    }

}
