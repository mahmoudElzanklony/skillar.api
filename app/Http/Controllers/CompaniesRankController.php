<?php

namespace App\Http\Controllers;

use App\Filters\users\CountryIdFilter;
use App\Filters\users\UserNameFilter;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;

class CompaniesRankController extends Controller
{
    //
    public function index()
    {
        $data = User::query()
            ->whereHas('role',fn($e) => $e->where('name','company'))
            ->withCount('jobs')
            ->withCount('applicants')
            ->with('views');
        $output = app(Pipeline::class)
            ->send($data)
            ->through([
                UserNameFilter::class,
                CountryIdFilter::class
            ])
            ->thenReturn()
            ->paginate(10);
        /*return $output;*/
        return UserResource::collection($output);
    }
}
