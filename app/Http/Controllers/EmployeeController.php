<?php

namespace App\Http\Controllers;

use App\Http\Requests\employeeInfoItemFormRequest;
use App\Http\Requests\employeeLanguageFormRequest;
use App\Http\Requests\employeeSkillFormRequest;
use App\Http\Resources\EmployeeInfoItemResource;
use App\Http\Resources\UserLanguageResource;
use App\Http\Resources\UserSkillResource;
use App\Models\employee_profile_info;
use App\Models\User;
use App\Models\users_languages;
use App\Models\users_skills;
use Illuminate\Http\Request;
use App\Http\traits\messages;
use App\Http\traits\upload_image;
class EmployeeController extends Controller
{
    use messages , upload_image;
    //
    public function save_skill(employeeSkillFormRequest $request)
    {
        $data = $request->validated();
        $data['user_id'] = auth()->id();
        // Extract and transform skills from request
        $user_skill = users_skills::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);
        // load skill relationship
        $user_skill->load('skill');
        return $this->success_output(trans('messages.updated_successfully'),UserSkillResource::make($user_skill));
    }

    public function save_language(employeeLanguageFormRequest $request)
    {
        $data = $request->validated();
        $data['user_id'] = auth()->id();
        // Extract and transform skills from request
        $user_lang = users_languages::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);

        return $this->success_output(trans('messages.updated_successfully'),UserLanguageResource::make($user_lang));
    }

    public function save_project()
    {

    }

    public function save_info_item(employeeInfoItemFormRequest $request)
    {
        $data = $request->validated();
        $data['user_id'] = auth()->id();
        if($data['type'] == 'image'){
            $data['answer'] = $this->upload(request('answer'),'employee_data');
        }else if($data['type'] == 'file'){
            $data['answer'] = $this->upload_pdf(request('answer'));
        }
        $output = employee_profile_info::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);

        return messages::success_output(__('messages.saved_successfully'),EmployeeInfoItemResource::make($output));

    }

    public function get_info_data()
    {
        $data = employee_profile_info::query()->where('user_id','=',auth()->id())
            ->when(request()->filled('section_id'),function ($e){
                $e->where('section_id','=',request('section_id'));
            })
            ->get();
        return EmployeeInfoItemResource::collection($data);

    }
}
