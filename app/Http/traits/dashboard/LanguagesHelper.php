<?php


namespace App\Http\traits\dashboard;


use App\Http\traits\messages;
use App\Models\languages;
use App\Models\tables_privillages_adding;

trait LanguagesHelper
{
    public function all_languages(){
        $data = languages::query()->get();
        return $data;
    }

    public function save_lang(){
        $data = languages::query()->updateOrCreate([
            'id'=>request('id') ?? null
        ],[
            'prefix'=>request('prefix'),
            'name'=>request('name')
        ]);
        return messages::success_output(trans('messages.saved_successfully'),$data);
    }


}
