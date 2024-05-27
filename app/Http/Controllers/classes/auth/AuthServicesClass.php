<?php

namespace App\Http\Controllers\classes\auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\usersFormRequest;
use App\Http\traits\messages;
use App\Models\roles;
use App\Models\User;
use App\Services\auth\register_service;
use App\Services\mail\send_email;
use Illuminate\Http\Request;

class AuthServicesClass extends Controller
{
    use messages;
    //
    // post
    public function register_post(usersFormRequest $request){
        return register_service::register_process(request(),$request->validated());
    }

    // post
    public function login_post(usersFormRequest $request){
        if(auth()->attempt($request->validated())){
            session()->put('type',roles::query()->find(auth()->user()->role_id)->name);
            return messages::success_output(['message'=>'','user'=>User::query()->with('role')->find(auth()->id())]);
        }
        return messages::error_output(['message'=>trans('messages.unauthenticated_err_form')]);
    }

    public function sendmail(){
        if(request()->has('email')){
            $user = User::query()->where('email','=',request('email'))->first();
            if($user != null){
                if(session()->get('lang') == 'ar') {
                    send_email::send('استرجاع كلمة المرور لموقع اعلانات',
                        'من فضلك اضغط علي الرابط بالاسفل لادخال كلمة مرور جديده',
                        request()->root() . '/new-password?id=' . $user->id . '&serial=' . $user->serial_number,
                        'اضغط هنا', $user->email
                    );
                }else{
                    send_email::send('Reset password of reklamlarım website',
                        'Please click on the link below to enter a new password on the site',
                        request()->root() . '/new-password?id=' . $user->id . '&serial=' . $user->serial_number,
                        'Press here', $user->email
                    );
                }
                return messages::success_output(trans('messages.email_sent_successfully'));
            }else{
                return messages::error_output(['message'=>trans('errors.not_found_user')]);
            }
        }else{
            return messages::error_output(['message'=>trans('errors.not_found_user')]);
        }

    }

    public function newpass(usersFormRequest $request){
        User::query()->where('email','=',request('email'))->first()->update([
            'password'=>bcrypt($request->validated()['password'])
        ]);
        return messages::success_output([trans('messages.updated_successfully')]);
    }

}
