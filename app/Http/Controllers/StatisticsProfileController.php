<?php

namespace App\Http\Controllers;

use App\Http\traits\messages;
use App\Models\employee_feedbacks;
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
        $data = [
          'views'=>users_views::query()->where('user_id',auth()->id())->first()->views ?? 0,
          'rates'=>employee_feedbacks::query()->where('receiver_id',auth()->id())->count(),
          'jobs'=>jobs_offers_applicants::query()
                  ->whereHas('resume',fn($q) => $q->where('user_id',auth()->id()))->count(),
          'notifications'=>notifications::query()->where('notifiable_id',auth()->id())->count(),
          'chat'=>0,
        ];
        return messages::success_output('',$data);
    }
}
