<?php


namespace App\Http\Controllers\Filters;
use Closure;
use Illuminate\Support\Str;


class FilterRequest
{
    public function handle($request, Closure $next){
        $filter = Str::snake(str_replace('Filter','',class_basename($this)));
        if (! request()->has($filter)) {
            return $next($request);
        }

        if (! request()->filled($filter)) {
            return $next($request);
        }

        return $next($request)->when($filter != '' && strpos($filter, 'date') == false,
            function ($q) use ($filter){
          $q->where($filter,'LIKE', '%'.request()->input($filter).'%');
        })
            // filter start date
            ->when($filter != '' && $filter == 'start_date',
                function ($q) use ($filter){
                    $q->where('created_at','>=', request()->input($filter));
                })
            // filter end date
            ->when($filter != '' && $filter == 'end_date',
            function ($q) use ($filter){
                $q->where('created_at','<=', request()->input($filter));
            });

    }
}
