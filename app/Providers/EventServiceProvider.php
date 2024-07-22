<?php

namespace App\Providers;

use App\Models\employee_feedbacks;
use App\Models\User;
use App\Models\users_views;
use App\Observers\EmployeeRateObserver;
use App\Observers\RegisterUserObserver;
use App\Observers\UserVistorObserver;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
        users_views::observe(UserVistorObserver::class);
        employee_feedbacks::observe(EmployeeRateObserver::class);

        User::observe(RegisterUserObserver::class);
    }
}
