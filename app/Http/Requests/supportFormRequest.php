<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class supportFormRequest extends FormRequest
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
            'username'=>'required|max:191',
            'email'=>'required|email',
            'message'=>'required',
            'reply'=>'nullable',
        ];
    }

    public function attributes()
    {
        return [
          'username'=>trans('keywords.username'),
          'email'=>trans('keywords.email'),
          'message'=>trans('keywords.message'),
          'reply'=>trans('keywords.reply'),
        ];
    }
}
