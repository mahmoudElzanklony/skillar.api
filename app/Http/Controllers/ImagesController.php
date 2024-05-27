<?php

namespace App\Http\Controllers;

use App\Http\Resources\ImageResource;
use App\Models\cv_shapes;
use App\Models\images;
use Illuminate\Http\Request;

class ImagesController extends Controller
{
    //
    public function cv_shapes()
    {
        $data = cv_shapes::query()->get();
        return ImageResource::collection($data);
    }
}
