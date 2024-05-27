<?php

namespace App\Http\Requests;

use App\Services\FormRequestHandleInputs;
use Illuminate\Foundation\Http\FormRequest;

class categoriesFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    private $arr;
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
        $this->arr =  [
            'id'=>'filled',
        ];
        $this->arr = FormRequestHandleInputs::handle($this->arr,['name']);
        return $this->arr;
    }

    public function attributes()
    {
        return FormRequestHandleInputs::attributes_messages($this->arr);
    }
}
