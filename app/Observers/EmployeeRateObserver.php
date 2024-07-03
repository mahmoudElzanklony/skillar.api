<?php

namespace App\Observers;

use App\Models\employee_feedbacks;
use App\Models\User;
use App\Notifications\EmployeeRateNotification;
use App\Notifications\OrderNotification;

class EmployeeRateObserver
{
    /**
     * Handle the employee_feedbacks "created" event.
     *
     * @param  \App\Models\employee_feedbacks  $employee_feedbacks
     * @return void
     */
    public function created(employee_feedbacks $employee_feedback)
    {
        //
        $user = User::query()->find($employee_feedback->receiver_id);
        $user->notify(new EmployeeRateNotification($employee_feedback));
    }

    /**
     * Handle the employee_feedbacks "updated" event.
     *
     * @param  \App\Models\employee_feedbacks  $employee_feedbacks
     * @return void
     */
    public function updated(employee_feedbacks $employee_feedbacks)
    {
        //
    }

    /**
     * Handle the employee_feedbacks "deleted" event.
     *
     * @param  \App\Models\employee_feedbacks  $employee_feedbacks
     * @return void
     */
    public function deleted(employee_feedbacks $employee_feedbacks)
    {
        //
    }

    /**
     * Handle the employee_feedbacks "restored" event.
     *
     * @param  \App\Models\employee_feedbacks  $employee_feedbacks
     * @return void
     */
    public function restored(employee_feedbacks $employee_feedbacks)
    {
        //
    }

    /**
     * Handle the employee_feedbacks "force deleted" event.
     *
     * @param  \App\Models\employee_feedbacks  $employee_feedbacks
     * @return void
     */
    public function forceDeleted(employee_feedbacks $employee_feedbacks)
    {
        //
    }
}
