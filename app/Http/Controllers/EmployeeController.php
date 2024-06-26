<?php

namespace App\Http\Controllers;

use App\Http\Requests\employeeInfoItemFormRequest;
use App\Http\Requests\employeeLanguageFormRequest;
use App\Http\Requests\employeeSkillFormRequest;
use App\Http\Resources\EmployeeInfoItemResource;
use App\Http\Resources\EmployeeProfileSectionResource;
use App\Http\Resources\UserLanguageResource;
use App\Http\Resources\UserSkillResource;
use App\Models\employee_profile_info;
use App\Models\employee_profile_sections_data;
use App\Models\User;
use App\Models\users_languages;
use App\Models\users_skills;
use Illuminate\Http\Request;
use App\Http\traits\messages;
use App\Http\traits\upload_image;
use Illuminate\Support\Facades\DB;

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
        DB::beginTransaction();
        // save employee info section
        $section_inserted = $this->insert_profile_section($data);
        // save employee info section info by making loop and save data
        $this->handle_profile_section_info_data($data,$section_inserted->id);
        $section_inserted->load('attributes_data');
        DB::commit();
        return messages::success_output(__('messages.saved_successfully'),
            EmployeeProfileSectionResource::make($section_inserted));

    }

    public function insert_profile_section($data){
        return employee_profile_sections_data::query()
            ->updateOrCreate([
                'id'=>$data['profile_section_id'] ?? null
            ],[
                'section_id'=>$data['section_id'],
                'user_id'=>auth()->id()
            ]);
    }

    public function handle_profile_section_info_data($data,$section_id)
    {
        foreach($data['attribute_id'] as $key => $value){
            if($data['type'][$key] == 'image' && $data['answer'][$key] != null){
                $data['answer'][$key] = $this->upload($data['answer'][$key],'employee_data');
            }else if($data['type'][$key] == 'file' && $data['answer'][$key] != null){
                $data['answer'][$key] = $this->upload_pdf($data['answer'][$key]);
            }
            employee_profile_info::query()->updateOrCreate([
                'id'=>$data['id'][$key] ?? null
            ],[
                'employee_profile_section_id'=>$section_id,
                'attribute_id'=>$data['attribute_id'][$key],
                'answer'=>$data['answer'][$key],
                'type'=>$data['type'][$key],
            ]);
        }
    }

    public function get_info_data()
    {
        $data = employee_profile_sections_data::query()
            ->where('user_id','=',auth()->id())
            ->when(request()->filled('section_id'),function ($e){
                $e->where('section_id','=',request('section_id'));
            })->with('attributes_data.attribute')
            ->get();
        return EmployeeProfileSectionResource::collection($data);

    }
}
