<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Services\users\favourite_toggle;
use Illuminate\Http\Request;

class UsersControllerApi extends Controller
{
    //
    public function toggle_fav(){
        //dd(auth()->check());
        return favourite_toggle::toggle(request('listing_id'));
    }
}
