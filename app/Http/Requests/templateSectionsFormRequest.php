<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class templateSectionsFormRequest extends FormRequest
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
            'template_id'=>'required|exists:templates,id',
            'section_id'=>'required|exists:sections,id',
            'content_width'=>'required',
        ];
    }
}
