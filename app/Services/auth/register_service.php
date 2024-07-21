<?php


namespace App\Services\auth;


use App\Models\roles;
use App\Models\User;
use App\Http\traits\messages;
use App\Models\user_company_info;
use App\Models\user_info;

class register_service
{
    use messages;
    public static function register_process($req,$validated){
        $user_info = $validated;
        // check if role exist in roles or not
        if($req['type'] != 'admin') {
            $role = roles::query()->where('name',$req['type'])->first();
            // role is correct
            if ($role != null) {
                $user_info['address'] = '';
                $user_info['role_id'] = $role->id;
                $user_info['password'] = bcrypt($user_info['password']);
                // create new user
                $user = User::query()->create($user_info);

                return self::success_output(trans('messages.registered_user'));
            } else {
                // role isn't correct
                return self::error_output(self::errors(['type' => trans('messages.err_invalid_type')]));
            }
        }else{
            return self::error_output(self::errors(['type' => trans('messages.err_invalid_type')]));
        }
    }
}
