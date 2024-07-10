<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class jobOfferApplicantFormRequest extends FormRequest
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
            'job_id'=>'required|exists:jobs_offers,id',
            'user_resume_id'=>'required|exists:users_resumes,id',
        ];
    }
}
