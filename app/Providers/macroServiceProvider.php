<?php

namespace App\Providers;

use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\ServiceProvider;
use Illuminate\Database\Eloquent\Builder;
use App\Http\traits\messages;

class macroServiceProvider extends ServiceProvider
{
    use messages;
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        Builder::macro('findOrFailWithMsg', function ($id, $error_message) {
            try {
                return $this->findOrFail($id);
            } catch (\Exception $e) {
                // Return JSON with error message, status code, and optional data
                return messages::error_output($error_message,400);

            }
        });

        Builder::macro('firstOrFailWithMsg', function ($error_message) {
            try {
                return $this->first();
            } catch (\Exception $e) {
                // Return JSON with error message, status code, and optional data
                return messages::error_output($error_message,400);

            }
        });

    }
}
