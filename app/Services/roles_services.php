<?php


namespace App\Services;


use App\Models\roles;

class roles_services
{
    public static function get_roles(){
        return roles::query()->get();
    }
}
