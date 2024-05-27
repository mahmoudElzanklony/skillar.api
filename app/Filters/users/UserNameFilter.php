<?php


namespace App\Filters\users;
use Closure;

class UserNameFilter
{
    public function handle($request, Closure $next){
        if(request()->has('username')){
            return $next($request)
                ->where('username','LIKE','%'.request('username').'%');
        }
        return $next($request);
    }
}
