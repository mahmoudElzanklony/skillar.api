<?php

namespace App\Http\Controllers;

use App\Filters\EndDateFilter;

use App\Filters\jobs_offers\CategoryIdFilter;
use App\Filters\jobs_offers\CityIdFilter;
use App\Filters\jobs_offers\CompanyIdFilter;
use App\Filters\jobs_offers\CountryIdFilter;
use App\Filters\jobs_offers\MaxExperienceFilter;
use App\Filters\jobs_offers\MinExperienceFilter;
use App\Filters\jobs_offers\NameFilter;
use App\Filters\jobs_offers\NIDFilter;
use App\Filters\jobs_offers\NIDFilterr;
use App\Filters\StartDateFilter;
use App\Http\Actions\JobOffersWithAllData;
use App\Http\Requests\jobOfferFormRequest;
use App\Http\Resources\JobOfferResource;
use App\Http\traits\messages;
use App\Models\jobs_offers;
use App\Models\jobs_offers_applicants;
use App\Models\jobs_offers_skills;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;

class JobsOffersControllerResource extends Controller
{
    use messages;
    public function __construct()
    {
        return $this->middleware('CheckApiAuth')->except('index','show');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index():JsonResource
    {
        //
        $data = JobOffersWithAllData::get()->with('company.image');
        $output  = app(Pipeline::class)
            ->send($data)
            ->through([
                StartDateFilter::class,
                EndDateFilter::class,
                CategoryIdFilter::class,
                CityIdFilter::class,
                CountryIdFilter::class,
                CompanyIdFilter::class,
                MinExperienceFilter::class,
                MaxExperienceFilter::class,
                NameFilter::class,
                NIDFilter::class
            ])
            ->thenReturn()
            ->paginate(10);
        return JobOfferResource::collection($output);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save($data)
    {
        DB::beginTransaction();
        $data['company_id'] = auth()->id();
        $job = jobs_offers::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);
        // insert skills for this job
        $job->skills()->sync($data['skills']);
        DB::commit();
        $job->load('skills');
        return $this->success_output(__('messages.operation_done_successfully'),JobOfferResource::make($job));
    }
    public function store(jobOfferFormRequest $request)
    {
        //
        $data = $request->validated();

        return $this->save($data);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function increase_views($job)
    {
        $job->views = $job->views + 1;
        $job->save();
    }
    public function show($id)
    {
        //
        $data = JobOffersWithAllData::get()->with('applicants.resume.user')->with('company.image')->find($id);
        if(!request()->filled('has_not_view')){
            $this->increase_views($data);
        }
        $data->load('category');
        $data->load('city');
        return JobOfferResource::make($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(jobOfferFormRequest $request)
    {
        //
        $data = $request->validated();

        return $this->save($data);

    }

    public function change_status()
    {
        if(request()->filled('id') && request()->filled('status')) {
            return jobs_offers::query()->find(request('id'))->updateOrFailWithCustomError(['status' => request('status')], __('errors.ops_something_wrong_with_execute'), __('messages.operation_done_successfully'));
        }
        return $this->success_output(__('messages.operation_done_successfully'));
    }

    public function change_applicant_status()
    {
        if(request()->filled('id') && request()->filled('status')) {
            return jobs_offers_applicants::query()->find(request('id'))->updateOrFailWithCustomError(['status' => request('status')], __('errors.ops_something_wrong_with_execute'), __('messages.operation_done_successfully'));
        }
        return $this->success_output(__('messages.operation_done_successfully'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
