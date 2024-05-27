<?php

namespace App\Filters\users;

use Closure;

class WalletFilter
{
    public function handle($request, Closure $next){
        if(request()->has('wallet')){
            return $next($request)
                ->where('wallet','>=',request('wallet'));
        }
        return $next($request);
    }
}
