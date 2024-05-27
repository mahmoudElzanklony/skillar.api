<?php

namespace App\Http\Middleware;

use App\Http\traits\messages;
use Closure;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Http\Middleware\BaseMiddleware;
class CheckApiAuth extends BaseMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if(request()->hasHeader('token')){
            $token = $request->header('token');
            $request->headers->set('token',(string)$token,true);
            $request->headers->set('Authorization','Bearer '.$token,true);
            $user = $this->auth->parseToken()->authenticate($request);
        }else{
            $request->headers->set('Authorization','Bearer '.$request->header('Authorization'),true);
            $token = $request->header('Authorization');
            $user = $this->auth->parseToken()->authenticate($request);
        }
        try {

            if($user == false){
                return messages::error_output(['invalid credential']);
            }
        }catch (\Exception $e){
            return messages::error_output([$e->getMessage()]);
        }
        $user['token'] = $token;
        // return  response(['data'=>$user]);

        return $next($request);
    }
}
