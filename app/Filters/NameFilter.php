<?php


namespace App\Filters;
use Closure;

class NameFilter
{
    public function handle($request, Closure $next){
        if(request()->has('name')){
            return $next($request)
                ->where(app()->getLocale().'_name','LIKE','%'.request('name').'%');
        }
        return $next($request);
    }
}
