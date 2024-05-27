<?php

namespace App\Http\Controllers;

use App\Http\Resources\PercentageResource;
use App\Models\percentages;
use Illuminate\Http\Request;

class PercentageController extends Controller
{
    //
    public function index()
    {
        $data = percentages::query();
        if(request()->filled('type')){
            $data->where('name','=',request('type'));
            return PercentageResource::make($data->first());
        }
        return PercentageResource::collection($data->get());

    }
}
