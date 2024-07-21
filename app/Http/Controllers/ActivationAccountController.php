<?php

namespace App\Http\Controllers;

use App\Http\traits\messages;
use App\Models\User;
use App\Notifications\RegisterNotification;

class ActivationAccountController extends Controller
{
    public function send_activation()
    {
        $user = auth()->user();
        $user->notify(new RegisterNotification($user));
        return messages::success_output(__('messages.send_email_successfully'));
    }

    public function activate()
    {
        if(request()->filled('serial_number') && auth()->user()->serial_number == request('serial_number')){
            $user = User::query()->find(auth()->id());
            $user->email_verified_at = now();
            $user->save();
            return messages::success_output(__('messages.activation_done_successfully'));
        }
        return messages::error_output(__('errors.activation_error'));
    }
}
