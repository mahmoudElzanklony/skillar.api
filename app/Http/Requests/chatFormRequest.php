<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class chatFormRequest extends FormRequest
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
            'receiver_id'=>'required|exists:users,id',
            'message'=>'required',
            'conversation_id'=>'filled',
        ];
    }
}
