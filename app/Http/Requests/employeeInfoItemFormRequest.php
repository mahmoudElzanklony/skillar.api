<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class employeeInfoItemFormRequest extends FormRequest
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
            'section_id'=>'required|exists:sections,id',
            'attribute_id'=>'required|exists:attributes,id',
            'answer'=>'required',
            'related_to'=>'nullable',
            'type'=>'required',
        ];
    }

    public function attributes()
    {
        return [
          'section_id'=>__('keywords.section'),
          'attribute_id'=>__('keywords.attribute'),
          'answer'=>__('keywords.answer'),
          'type'=>__('keywords.type'),
        ];
    }
}
