<?php

namespace App\Http\Requests;

use App\Services\FormRequestHandleInputs;
use Illuminate\Foundation\Http\FormRequest;

class jobOfferFormRequest extends FormRequest
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
            'category_id'=>'required|exists:jobs_categories,id',
            'city_id'=>'required|exists:cities,id',
            'description'=>'required',
            'min_experience'=>'required|numeric',
            'max_experience'=>'filled',
            'responsibilities'=>'required',
            'work_time'=>'required',
            'work_type'=>'required',
            'salary'=>'required',
            'skills'=>'required|array',
            'skills.*'=>'required|exists:skills,id',
        ];

        return $arr;

    }
}
