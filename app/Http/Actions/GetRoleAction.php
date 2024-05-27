<?php


namespace App\Http\Actions;


use App\Models\roles;

class GetRoleAction
{
    public static function get_role(){
        return roles::query()->find(auth()->user()->role_id);
    }
}
