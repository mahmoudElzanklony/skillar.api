<?php

namespace App\Http\Controllers\Filters;
use Closure;
class ParentId
{
    public function handle($request, Closure $next){
        if (! request()->has('parent_id')) {
            return $next($request);
        }
        if(request('parent_id') != null) {
            return $next($request)
                ->whereRaw('parent_id is not null');

        }else{
            return $next($request)
                ->whereRaw('parent_id is null');
        }
    }
}
