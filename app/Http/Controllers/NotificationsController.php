<?php

namespace App\Http\Controllers;

use App\Http\Resources\NotificationResource;
use App\Models\notifications;
use Illuminate\Http\Request;

class NotificationsController extends Controller
{
    //
    public function index(){
        auth()->user()->unreadNotifications->markAsRead();
        $data =  NotificationResource::collection(auth()->user()->Notifications()->paginate(request('limit') ?? 10));
        return $data;
    }
}
