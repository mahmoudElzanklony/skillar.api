<?php

namespace App\Http\Controllers;

use App\Http\Resources\CountryResource;
use App\Http\traits\messages;
use App\Models\countries;
use Illuminate\Http\Request;

class CountriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return CountryResource::collection(countries::query()->orderBy('id','DESC')->get());
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        if(request()->has('name')) {
            countries::query()->create([
                'name' => request('name')
            ]);
            return messages::success_output(trans('messages.saved_successfully'));
        }
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
        return CountryResource::make(countries::query()->find($id));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $country = countries::query()->find($id);
        if($country != null) {
            countries::query()->where('id', '=', $id)->update([
                'name' => request('name')
            ]);
            return messages::success_output(trans('messages.updated_successfully'));
        }
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
