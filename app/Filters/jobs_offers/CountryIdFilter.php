<?php

namespace App\Filters\jobs_offers;
use Closure;
class CountryIdFilter
{
    public function handle($request, Closure $next){
        if(request()->has('country_id')){
            return $next($request)
                ->whereHas('city',function($e){
                   $e->where('country_id','=',request('country_id'));
                });
        }
        return $next($request);
    }
}
