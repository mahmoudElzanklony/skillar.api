<?php


namespace App\Http\Controllers\Filters;


use Illuminate\Support\Str;
use Closure;
class LabelFilter extends FilterRequest
{
    public function handle($request, Closure $next){
        if (! request()->filled('label')) {
            return $next($request);
        }
        return $next($request)
            ->whereRaw('(label LIKE "%'.request()->input('label').'%")');
    }
}
