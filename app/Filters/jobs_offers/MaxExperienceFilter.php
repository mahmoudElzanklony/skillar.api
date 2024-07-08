<?php

namespace App\Filters\jobs_offers;

use App\Filters\FilterRequest;
use Closure;
class MaxExperienceFilter extends FilterRequest
{
    public function handle($request, Closure $next){
        if(request()->has('max_experience')){
            return $next($request)->whereRaw("max_experience <= ".request('max_experience'));
        }
        return $next($request);
    }
}
