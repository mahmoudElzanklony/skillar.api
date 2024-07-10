<?php

namespace App\Filters\jobs_offers;
use Closure;
class NameFilter
{
    public function handle($request, Closure $next){
        if(request()->has('name')){
            $result = substr(request('name'), 0, 8);
            return $next($request)->whereRaw("(name LIKE '%".$result."%' OR description LIKE '%".$result."%' )");
        }
        return $next($request);
    }
}
