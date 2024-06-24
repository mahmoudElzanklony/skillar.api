<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class employeeSkillFormRequest extends FormRequest
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

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'id'=>'filled',
            'skill_id'=>'required|exists:skills,id',
            'sub_skill'=>'nullable',
            'level'=>'required'
        ];
    }

    public function attributes()
    {
        return [
          'skill_id'=>__('keywords.skill'),
          'sub_skill'=>__('keywords.sub_skill'),
          'level'=>__('keywords.level'),
        ];
    }
}
