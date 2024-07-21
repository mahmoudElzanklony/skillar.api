<?php

namespace App\Http\Controllers;

use App\Filters\users\CountryIdFilter;
use App\Filters\users\UserNameFilter;
use App\Http\Controllers\Filters\NameFilter;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;

class ColleaguesController extends Controller
{
    //
    public function index()
    {
        $data = User::query()
            ->whereHas('role',fn($e) => $e->where('name','client'))
            ->with(['profile_sections_data' => function ($query) {
                $query
                    ->selectRaw('section_id, user_id , count(*) as sections_count')
                    ->groupBy('section_id', 'user_id')
                    ->with('section'); // Assuming `name` is the section name column
            }]);
        $output = app(Pipeline::class)
            ->send($data)
            ->through([
                UserNameFilter::class,
                CountryIdFilter::class
            ])
            ->thenReturn()
            ->paginate(10);
        //return $data;
        return UserResource::collection($output);
    }
}
