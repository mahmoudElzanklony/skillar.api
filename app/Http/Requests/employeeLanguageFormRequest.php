<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class employeeLanguageFormRequest extends FormRequest
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
            'language'=>'required',
            'level'=>'required'
        ];
    }

    public function attributes()
    {
        return [
            'language'=>__('keywords.language'),
            'level'=>__('keywords.level'),
        ];
    }
}
