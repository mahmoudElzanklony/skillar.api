<?php


namespace App\Http\Actions;


use App\Models\images;

class ImageModalSave
{
    public static function make($id,$model_name,$image_file){
        images::query()->updateOrCreate([
            'imageable_id'=>$id,
            'imageable_type'=>'App\Models\\'.$model_name,
        ],[
            'imageable_id'=>$id,
            'imageable_type'=>'App\Models\\'.$model_name,
            'name'=>$image_file,
        ]);
        return true;
    }
}
