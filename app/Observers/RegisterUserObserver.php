<?php

namespace App\Observers;

use App\Models\User;
use App\Models\users_views;
use App\Notifications\RegisterNotification;
use App\Notifications\UserViewProfileNotification;

class RegisterUserObserver
{
    /**
     * Handle the users_views "created" event.
     *
     * @param  \App\Models\users_views  $users_views
     * @return void
     */
    public function created(User $user)
    {
        //
        $user = User::query()->find($user->id);
        $user->notify(new RegisterNotification($user));
    }

    /**
     * Handle the users_views "updated" event.
     *
     * @param  \App\Models\users_views  $users_views
     * @return void
     */
    public function updated(User $user)
    {
        //

    }

    /**
     * Handle the users_views "deleted" event.
     *
     * @param  \App\Models\users_views  $users_views
     * @return void
     */
    public function deleted(users_views $users_views)
    {
        //
    }

    /**
     * Handle the users_views "restored" event.
     *
     * @param  \App\Models\users_views  $users_views
     * @return void
     */
    public function restored(users_views $users_views)
    {
        //
    }

    /**
     * Handle the users_views "force deleted" event.
     *
     * @param  \App\Models\users_views  $users_views
     * @return void
     */
    public function forceDeleted(users_views $users_views)
    {
        //
    }
}
