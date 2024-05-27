<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Filters\CategoryId;
use App\Http\Controllers\Filters\EndDateFilter;
use App\Http\Controllers\Filters\NameFilter;
use App\Http\Controllers\Filters\ParentId;
use App\Http\Controllers\Filters\PriceFilter;
use App\Http\Controllers\Filters\StartDateFilter;
use App\Http\Controllers\Filters\UserId;
use App\Http\Resources\OrderResource;
use App\Http\traits\messages;
use App\Models\orders;
use App\Models\percentages;
use App\Models\templates;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;

class OrdersController extends Controller
{
    //

    public function index()
    {
        $data = orders::query()->with(['template','user'])->when(auth()->user()->role->name != 'admin',function ($e){
            $e->whereHas('template',function($q){
                $q->where('user_id','=',auth()->id());
            });
        })->orderBy('id','DESC');
        $final = app(Pipeline::class)
            ->send($data)
            ->through([
                StartDateFilter::class,
                EndDateFilter::class
            ])
            ->thenReturn()
            ->paginate(10);
        return OrderResource::collection($final);
    }

    public function make($template_id)
    {
        $template = templates::query()->findOrFailWithMsg($template_id,trans('errors.not_found'));
        $profit  = percentages::query()->where('name','=','profit')->first();
        $order = orders::query()->create([
            'user_id'=>auth()->id(),
            'template_id'=>$template_id,
            'price'=>$template->price,
            'service_profit'=>$profit->percentage,
        ]);
        return messages::success_output(trans('messages.payment_success'));
    }
}
