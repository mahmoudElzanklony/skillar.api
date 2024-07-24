<?php

namespace App\Filters\users;
use Closure;
class CountryIdFilter
{
    public function handle($request, Closure $next){
        if(request()->filled('country_id')){
            return $next($request)
                ->where('country_id','=',request('country_id'));
        }
        return $next($request);
    }
}
