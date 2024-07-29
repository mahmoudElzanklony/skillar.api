<?php

namespace App\Http\Requests;

use App\Services\FormRequestHandleInputs;
use Illuminate\Foundation\Http\FormRequest;

class categoriesJobsFormRequest extends FormRequest
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
        $this->arr =  [
            'id'=>'filled',
            'image'=>'filled|mimes:png,jpg,jpeg,gif'
        ];
        $this->arr = FormRequestHandleInputs::handle($this->arr,['name']);
        return $this->arr;
    }
}
