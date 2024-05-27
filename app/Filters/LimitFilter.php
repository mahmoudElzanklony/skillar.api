<?php


namespace App\Filters;
use Closure;

class LimitFilter
{
    public function handle($request, Closure $next){
        if(request()->has('limit')){
            return $next($request)
                ->limit(request('limit'));
        }
        return $next($request);
    }
}
