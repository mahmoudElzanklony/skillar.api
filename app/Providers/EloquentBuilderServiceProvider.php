<?php

namespace App\Providers;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\ServiceProvider;
use App\Http\traits\messages;
class EloquentBuilderServiceProvider extends ServiceProvider
{
    use messages;
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        //
        Builder::macro('firstOrFailWithCustomError',function ($error){
            if($this->first() == null){
                return $this->error_output($error);
            }
            return $this->first();
        });
        // fail when found a result
        Builder::macro('failWhenFoundResult',function ($error){
            if($this->first() != null){
                return $this->error_output($error);
            }
            return true;
        });

        Builder::macro('updateOrFailWithCustomError',function ($updated,$error,$success = '' , $success_data = ''){
            if($success == ''){
                $success = __('messages.updated_successfully');
            }
            $data = $this->first();
            if($data == null){
                return messages::error_output($error);
            }
            $this->update($updated);
            return messages::success_output($success,$success_data);
        });

        Builder::macro('FailIfNotFound',function ($error){
            if($this->first() == null){
                return throw new \Exception($error);
            }
            return $this->first();

        });
    }
}
