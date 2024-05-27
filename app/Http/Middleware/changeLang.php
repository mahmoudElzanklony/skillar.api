<?php

namespace App\Http\Middleware;

use App\Http\traits\messages;
use Closure;
use Illuminate\Http\Request;

class changeLang
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {

        if(request()->hasHeader('lang')){
            app()->setLocale(request()->header('lang'));
        }else if(session()->has('lang')) {
            app()->setLocale(session()->get('lang'));
        }else if($request->filled('lang')){
            if($request->get('lang') == 'ar' || $request->get('lang') == 'en' || $request->get('lang') == 'tu'){
                app()->setLocale($request->get('lang'));
            }

        }else{
            app()->setLocale('en');
        }
       /* if(!(request()->hasHeader('api_key') && request()->header('api_key') == env('api_key','skillar2023'))){
            return messages::error_output('api key is missing !!');
        }*/
        return $next($request);
    }
}
