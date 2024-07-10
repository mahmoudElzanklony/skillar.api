<?php

namespace App\Filters\jobs_offers;
use Closure;
class NIDFilter
{
    public function handle($request, Closure $next){
        if(request()->has('nid')){
            return $next($request)->whereRaw('(id != '.request('nid').')');
        }
        return $next($request);
    }
}
