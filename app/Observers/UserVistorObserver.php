<?php

namespace App\Observers;

use App\Models\User;
use App\Models\users_views;
use App\Notifications\UserViewProfileNotification;

class UserVistorObserver
{
    /**
     * Handle the users_views "created" event.
     *
     * @param  \App\Models\users_views  $users_views
     * @return void
     */
    public function created(users_views $users_views)
    {
        //
        $user = User::query()->find($users_views->user_id);
        $user->notify(new UserViewProfileNotification(auth()->user()));
    }

    /**
     * Handle the users_views "updated" event.
     *
     * @param  \App\Models\users_views  $users_views
     * @return void
     */
    public function updated(users_views $users_views)
    {
        //
        if($users_views->views > 1) {
            $user = User::query()->find($users_views->user_id);
            $user->notify(new UserViewProfileNotification(auth()->user()));
        }
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
