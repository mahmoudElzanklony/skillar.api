<?php


namespace App\Http\Controllers\Filters;
use Closure;

class DescFilter extends FilterRequest
{
    public function handle($request, Closure $next){
        if (! request()->filled('desc')) {
            return $next($request);
        }

        return $next($request)
            ->whereRaw('(ar_desc LIKE  "%'.request()->input('desc').'%" OR en_desc LIKE "%'.request()->input('desc').'%")');
    }
}
