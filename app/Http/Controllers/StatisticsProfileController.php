<?php

namespace App\Http\Controllers;

use App\Http\traits\messages;
use App\Models\employee_feedbacks;
use App\Models\jobs_offers;
use App\Models\jobs_offers_applicants;
use App\Models\notifications;
use App\Models\users_views;
use Illuminate\Http\Request;

class StatisticsProfileController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        //
        if(request()->filled('user_id')){
            $user_id = request('user_id');
        }else{
            $user_id = auth()->id();
        }
        $data = [
          'views'=>users_views::query()->where('user_id',$user_id)->first()->views ?? 0,
          'rates'=>employee_feedbacks::query()->where('receiver_id',$user_id)->count(),
          'jobs'=>auth()->user()->role->name == 'company' ? jobs_offers::query()->where('company_id',$user_id)->count()
                    :jobs_offers_applicants::query()
                        ->whereHas('resume',fn($q) => $q->where('user_id',$user_id))->count(),
          'notifications'=>notifications::query()->where('notifiable_id',$user_id)->count(),
          'chat'=>0,
        ];
        return messages::success_output('',$data);
    }
}
