<?php

namespace App\Http\Controllers;

use App\Http\Requests\userResumeFormRequest;
use App\Http\Resources\UserResumeResource;
use App\Http\traits\messages;
use App\Models\users_resumes;
use Illuminate\Http\Request;
use App\Http\traits\upload_image;
class ResumesController extends Controller
{
    //
    use upload_image;
    public function index()
    {
        $data = users_resumes::query()->where('user_id',auth()->id())->orderBy('id','DESC')->get();
        return UserResumeResource::collection($data);
    }

    public function save(userResumeFormRequest $request)
    {
        $data = $request->validated();
        $data['user_id'] = auth()->id();
        $file = $this->upload_pdf(request()->file('file'));
        $data['file'] = $file;
        $output = users_resumes::query()->create($data);
        return messages::success_output(__('messages.saved_successfully'),UserResumeResource::make($output));
    }
}
