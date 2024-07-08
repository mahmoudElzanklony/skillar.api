<?php

namespace App\Filters\jobs_offers;

use App\Filters\FilterRequest;
use Closure;
class MinExperienceFilter extends FilterRequest
{
    public function handle($request, Closure $next){
        if(request()->has('min_experience')){
            return $next($request)->whereRaw("min_experience >= ".request('min_experience'));
        }
        return $next($request);
    }
}
