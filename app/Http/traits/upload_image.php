<?php


namespace App\Http\traits;


trait upload_image
{
    public function upload($file,$folder_name,$type = 'one'){
        $valid_extensions = ['png','jpg','jpeg','gif','svg'];
        if($type == 'one') {
            if (in_array($file->getClientOriginalExtension(), $valid_extensions)) {
                $name = time().rand(0,9999999999999). '_image.' . $file->getClientOriginalExtension();
                $file->move(public_path('images/' . $folder_name), $name);
                return $name;
            } else {
                return false;
            }
        }
    }

    public function upload_video($file,$folder_name,$type = 'one'){
        $valid_extensions = ['mp4','avi','mkv'];
        if($type == 'one') {
            if (in_array($file->getClientOriginalExtension(), $valid_extensions)) {
                $name = time().rand(0,9999999999999). '_video.' . $file->getClientOriginalExtension();
                $file->move(public_path('videos/' . $folder_name), $name);
                return $name;
            } else {
                return false;
            }
        }
    }

    public function upload_pdf($file){
        $valid_extensions = ['pdf'];
        if (in_array($file->getClientOriginalExtension(), $valid_extensions)) {
            $name = time().rand(0,9999999999999). '_pdf.' . $file->getClientOriginalExtension();
            $file->move(public_path('pdfs/'), $name);
            return $name;
        } else {
            return false;
        }
    }
}
