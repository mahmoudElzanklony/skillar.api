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
            'profile_section_id'=>'filled',
            'section_id'=>'required|exists:sections,id',
            'id'=>'filled|array',
            'id.*'=>'filled',
            'attribute_id'=>'required|array',
            'attribute_id.*'=>'required|exists:attributes,id',
            'answer'=>'required|array',
            'answer.*'=>'required',
            'type'=>'required|array',
            'type.*'=>'required',
            'related_to'=>'filled|array',
            'related_to.*'=>'nullable',
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
