<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Session\TokenMismatchException;
use Illuminate\Validation\ValidationException;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */

    public function render($request, Throwable $e)
    {
        if ($e instanceof TokenMismatchException)
        {
            /*
            session()->regenerate();
            return response()->json([
                "token"=>csrf_token()],
                200);

            */

        }

        return parent::render($request, $e);
    }

    public function invalidJson($request, ValidationException $exception)
    {
        return response()->json([
           'errors'=>$exception->errors(),
           'status'=>$exception->status,
           'code'=>$exception->getCode(),
        ]);
    }

    public function register()
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }
}
