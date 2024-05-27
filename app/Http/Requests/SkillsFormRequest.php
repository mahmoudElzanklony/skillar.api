<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SkillsFormRequest extends FormRequest
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
            'ar_title'=>'filled',
            'en_title'=>'filled',
            'ar_desc'=>'filled',
            'en_desc'=>'filled',
            'sk_group_id'=>'required|exists:skills_groups,id',
            'note'=>'nullable'
        ];
    }

    public function attributes()
    {
        return [
          'ar_title'=>trans('keywords.ar_name'),
          'en_title'=>trans('keywords.en_name'),
          'ar_desc'=>trans('keywords.ar_description'),
          'en_desc'=>trans('keywords.en_description'),
          'sk_group_id'=>trans('keywords.sk_group_id'),
          'note'=>trans('keywords.note'),
        ];
    }
}
