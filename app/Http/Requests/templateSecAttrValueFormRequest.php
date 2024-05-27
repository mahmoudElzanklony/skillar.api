<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class templateSecAttrValueFormRequest extends FormRequest
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
            'template_section_id'=>'required|exists:templates_sections,id',
            'attribute_id'=>'required|exists:attributes,id',
            'answer'=>'required',
            'answer_type'=>'required',
            'content_width'=>'required',
        ];
    }
}
