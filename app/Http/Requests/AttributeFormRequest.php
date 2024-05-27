<?php

namespace App\Http\Requests;

use App\Services\FormRequestHandleInputs;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Str;

class AttributeFormRequest extends FormRequest
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
        $arr = [
            'id'=>'filled',
            'name'=>'required',
            'type'=>'required',
            'table'=>'filled',
        ];
        $arr = FormRequestHandleInputs::handle($arr,['label','placeholder','before_answer']);
        foreach($arr as $key => $val){
            if(Str::contains($key,'before_answer')){
                $arr[$key] = 'filled';
            }
        }
        return $arr;

    }
}
