<?php

namespace App\Http\Controllers\Filters;
use Closure;
class PriceFilter
{
    public function handle($request, Closure $next){
        if (! request()->filled('price')) {
            return $next($request);
        }
        if(request('price') == 'free'){
            return $next($request)->where('price','=',0);
        }
        return $next($request)->where('price','>',0);
    }
}
