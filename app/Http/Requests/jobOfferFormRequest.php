<?php

namespace App\Http\Requests;

use App\Services\FormRequestHandleInputs;
use Illuminate\Foundation\Http\FormRequest;

class jobOfferFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function prepareForValidation()
    {
        if($this->salary == '') {
            $this->merge([
                'salary' => $this->min_salary .':'.$this->max_salary,
            ]);
        }
        if($this->job_skills) {
            $skills = [];

            foreach($this->job_skills as $skill){
                array_push($skills,json_decode($skill,true)['key']);
            }
            $this->merge([
                'skills' => $skills,
            ]);
        }
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $arr = [
            'id'=>'filled',
            'name'=>'required',
            'category_id'=>'required|exists:jobs_categories,id',
            'city_id'=>'required|exists:cities,id',
            'description'=>'required',
            'responsibilities'=>'required',
            'min_experience'=>'required|numeric',
            'max_experience'=>'filled',
            'work_time'=>'required',
            'work_type'=>'required',
            'salary'=>'nullable',
            'min_salary'=>'nullable',
            'max_salary'=>'nullable',
            'skills'=>'required|array',
            'skills.*'=>'required|exists:skills,id',
        ];

        return $arr;

    }
}
