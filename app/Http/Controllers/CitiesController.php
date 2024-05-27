<?php

namespace App\Http\Controllers;

use App\Http\Requests\cityFormRequest;
use App\Http\Resources\CityResource;
use App\Http\traits\messages;
use App\Models\cities;
use App\Models\countries;
use Illuminate\Http\Request;

class CitiesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = cities::query()->with('country')->when(request()->has('country_id'),function($e){
            $e->where('country_id','=',request('country_id'));
        })->get();
        return CityResource::collection($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, cityFormRequest $formRequest)
    {
        //
        cities::query()->create($formRequest->validated());
        return messages::success_output(trans('messages.saved_successfully'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id, cityFormRequest $formRequest)
    {
        //
        cities::query()->updateOrCreate([
            'id'=>request()->has('id') ? request('id'):null,
        ],$formRequest->validated());
        return messages::success_output(trans('messages.updated_successfully'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
