<?php

namespace App\Http\Controllers;

use App\Http\Resources\NotificationResource;
use App\Models\notifications;
use Illuminate\Http\Request;

class NotificationsController extends Controller
{
    //
    public function index(){
        $notifications = notifications::query()->orderBy('id','DESC')->paginate(20);
        return NotificationResource::collection($notifications);
    }
}
