<?php

namespace App\Providers;

use App\Models\chats;
use App\Models\favourites;
use App\Models\images;
use App\Models\listings_notes;
use App\Models\notifications;
use App\Models\sections;
use App\Models\User;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use Inertia\Inertia;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //


    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //


        Schema::defaultStringLength(191);
    }
}
