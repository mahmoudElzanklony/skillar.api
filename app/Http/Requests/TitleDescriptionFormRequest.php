<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TitleDescriptionFormRequest extends FormRequest
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
        ];
    }

    public function attributes()
    {
        return [
            'ar_title'=>trans('keywords.ar_name'),
            'en_title'=>trans('keywords.en_name'),
            'ar_desc'=>trans('keywords.ar_description'),
            'en_desc'=>trans('keywords.en_description'),
        ];
    }
}
