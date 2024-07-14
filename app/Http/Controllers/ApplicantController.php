<?php

namespace App\Http\Controllers;

use App\Http\Requests\jobOfferApplicantFormRequest;
use App\Http\Resources\JobOfferApplicantsResource;
use App\Http\traits\messages;
use App\Models\jobs_offers_applicants;
use Illuminate\Http\Request;

class ApplicantController extends Controller
{
    //
    public function specific_one()
    {
        $data =  jobs_offers_applicants::query()
            ->where('job_id',request('job_id'))
            ->whereHas('resume',function ($e){
                $e->where('user_id','=',auth()->id());
            })->first();
        if($data != null){
        return JobOfferApplicantsResource::make($data);
        }
    }

    public function apply_job(jobOfferApplicantFormRequest $request)
    {
        $data = $request->validated();
        $output  = jobs_offers_applicants::query()->create($data);

        return messages::success_output(__('messages.saved_successfully'),JobOfferApplicantsResource::make($output));
    }

    public function get_applicants()
    {
        $data = jobs_offers_applicants::query()->where('job_id','=',request('job_id'))
            ->with('resume.user',fn($e)=> $e->with(['image','profile_sections_data'=>fn($q) => $q->whereHas('section',fn($query)=> $query->whereRaw('name LIKE "%skill%"'))->with('first_attribute_data')]))->orderBy('id','DESC')->get();
        return JobOfferApplicantsResource::collection($data);
    }
}
