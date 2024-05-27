<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Filters\ArDescFilter;
use App\Http\Controllers\Filters\ArTitleFilter;
use App\Http\Controllers\Filters\DescFilter;
use App\Http\Controllers\Filters\EndDateFilter;
use App\Http\Controllers\Filters\EnDescFilter;
use App\Http\Controllers\Filters\EnTitleFilter;
use App\Http\Controllers\Filters\StartDateFilter;
use App\Http\Controllers\Filters\TitleFilter;
use App\Http\Requests\TitleDescriptionFormRequest;
use App\Http\Resources\TitleDescResource;
use App\Http\traits\messages;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;
use App\Http\traits\upload_image;
class TitleDescriptionController extends Controller
{
    use upload_image;
    //
    public function all(){
        if(request()->has('table')){
            $result = app('App\Models\\'.request('table'))->orderBy('id','DESC');
            $data = app(Pipeline::class)
                ->send($result)
                ->through([
                    StartDateFilter::class,
                    EndDateFilter::class,
                    TitleFilter::class,
                    DescFilter::class,
                ])
                ->thenReturn()
                ->paginate(15);
            if(request()->has('admin')){
                return $data;
            }else {
                return TitleDescResource::collection($data);
            }
        }else{
            return messages::error_output('errors.ops_something_wrong');
        }
    }

    public function save(TitleDescriptionFormRequest $formRequest){
        if(request()->has('table')){
            $data_val = $formRequest->validated();
            if(request()->has('id')){
                $data_val['updated_at'] = Carbon::now();
            }else{
                $data_val['created_at'] = Carbon::now();
            }

            if(request()->hasFile('image')){
                $image = $this->upload(request()->file('image'),request('table'));
                $data_val['image'] = $image;
            }

            // app('App\Models\\'.request('table'))
            $data = DB::table(request('table'))->updateOrInsert([
                'id'=>request()->has('id') ? request('id'):null,
            ],$data_val);
            $data_val['id'] = request()->has('id') ? request('id'):null;
            return messages::success_output(trans('messages.saved_successfully'),$data_val);
        }else{
            return messages::error_output(trans('errors.ops_something_wrong'));
        }
    }
}
