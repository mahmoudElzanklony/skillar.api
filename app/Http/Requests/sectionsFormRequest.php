<?php

namespace App\Http\Requests;

use App\Services\FormRequestHandleInputs;
use App\Models\languages;
use Illuminate\Foundation\Http\FormRequest;

class sectionsFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    private $arr = [];
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
        $this->arr = [
            'id'=>'filled',
            'attributes'=>'filled|array',
            'attributes.*'=>'filled|exists:attributes,id',
        ];
        $this->arr = FormRequestHandleInputs::handle($this->arr,['name','info']);
        return $this->arr;

    }


    public function attributes()
    {
        return FormRequestHandleInputs::attributes_messages($this->arr);
    }
}
