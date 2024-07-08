<?php

namespace App\Filters\jobs_offers;
use Closure;
class NameFilter
{
    public function handle($request, Closure $next){
        if(request()->has('name')){
            return $next($request)->whereRaw("(name LIKE '%".request('name')."%' OR description LIKE '%".request('name')."%' )");
        }
        return $next($request);
    }
}
