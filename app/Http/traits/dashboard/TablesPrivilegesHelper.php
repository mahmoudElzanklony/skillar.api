<?php


namespace App\Http\traits\dashboard;


use App\Http\traits\messages;
use App\Models\tables_privillages_adding;

trait TablesPrivilegesHelper
{
    public function tables_privileges(){
        $data = tables_privillages_adding::query()->get();
        return $data;
    }

    public function save_table_privilege(){
        $data = tables_privillages_adding::query()->updateOrCreate([
            'id'=>request('id') ?? null
        ],[
            'name'=>request('name')
        ]);
        return messages::success_output(trans('messages.saved_successfully'),$data);
    }
}
