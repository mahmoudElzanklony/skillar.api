<?php


namespace App\Http\Controllers\Filters;
use Closure;

class TitleFilter extends FilterRequest
{
    public function handle($request, Closure $next){
        if (! request()->filled('title')) {
            return $next($request);
        }

        return $next($request)
            ->where('ar_title','LIKE', '%'.request()->input('title').'%')
            ->orWhere('en_title','LIKE', '%'.request()->input('title').'%');

    }
}
