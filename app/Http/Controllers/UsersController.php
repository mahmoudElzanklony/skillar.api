<?php

namespace App\Http\Controllers;

use App\Http\Requests\usersFormRequest;
use App\Http\Requests\userVideoFormRequest;
use App\Http\Resources\UserResource;
use App\Http\traits\messages;
use App\Models\User;
use App\Models\users_videos;
use App\Models\users_views;
use Illuminate\Http\Request;
use App\Http\traits\upload_image;
class UsersController extends Controller
{
    use upload_image , messages;
    //
    public function save(usersFormRequest $formRequest){
        $data = $formRequest->validated();
        if(request()->filled('password')){
            $data['password'] = bcrypt(request('password'));
        }
        $output = User::query()->updateOrCreate([
            'id'=>request()->has('id') ? request('id'):null
        ],$data);
        return messages::success_output(trans('messages.saved_successfully'),$output);
    }

    public function update_personal_info(usersFormRequest $usersFormRequest){
        $data = $usersFormRequest->validated();
        if(request()->filled('password') && request('password') != '') {
            $data['password'] = bcrypt(request('password'));
        }else{
            unset($data['password']);
        }

        if(request()->hasFile('image')){
            $image = $this->upload(request()->file('image'),'users');
            $data['image'] = $image;
        }
        if(auth()->check() && auth()->user()->role->name != 'admin') {
            User::query()->where('id', auth()->id())->update($data);
            $output = User::query()->find(auth()->id());
        }else{
            if(request()->filled('id')){
                User::query()->where('id', request('id'))->update($data);
                $output = User::query()
                    ->withCount('owner_cvs')
                    ->withCount('fork_cvs')->with('country')->find(request('id'));
                $output = UserResource::make($output);
            }else if(request()->filled('serial_number')){
                User::query()->where('serial_number', request('serial_number'))->update($data);
                $output = User::query()->where('serial_number','=', request('serial_number'))->first();
            }
        }
        return messages::success_output(trans('messages.updated_successfully'),$output ?? '');
    }

    public function see_account_profile()
    {
        if(request()->filled('user_id')) {
            $view = users_views::query()->firstOrCreate([
                'user_id' => request('user_id')
            ]);
            $view->views = $view->views + 1;
            $view->save();
            return $this->success_output();
        }
    }

    public function get_video()
    {
        return users_videos::query()->where('user_id',auth()->id())->first();
    }
    public function save_video(userVideoFormRequest $request)
    {
        $data = $request->validated();
        // upload video
        $video = $this->upload_video(request()->file('video'),'users');
        $data['file'] = $video;
        $data['user_id'] = auth()->id();
        // save at user video
        $output = users_videos::query()->updateOrCreate([
            'user_id'=>$data['user_id']
        ],$data);


        return $this->success_output(trans('messages.updated_successfully'),$output ?? '');
    }

}
