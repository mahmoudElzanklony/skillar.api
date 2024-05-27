<?php


namespace App\Filters;
use Closure;

class IDsFilter
{
    public function handle($request, Closure $next){
        if(request()->has('ids')){
            return $next($request)->whereIn('id',request('ids'));
        }
        return $next($request);
    }
}
