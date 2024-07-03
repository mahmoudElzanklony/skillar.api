<?php

namespace App\Http\Controllers;

use App\Http\traits\messages;
use App\Models\users_views;
use Illuminate\Http\Request;

class VisitsController extends Controller
{
    //
    public function create()
    {
        $user = users_views::query()
            ->firstOrCreate([
                'user_id'=>request('user_id')
            ]);
        $user->update(['views'=>$user->views + 1]);
        return messages::success_output('view success');
    }
}
