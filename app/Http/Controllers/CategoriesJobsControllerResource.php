<?php

namespace App\Http\Controllers;

use App\Http\Actions\ImageModalSave;
use App\Http\Requests\categoriesJobsFormRequest;
use App\Http\Resources\CategoryResource;
use App\Http\traits\messages;
use App\Models\categories;
use App\Models\jobs_categories;
use App\Services\FormRequestHandleInputs;
use Illuminate\Http\Request;
use App\Http\traits\upload_image;
class CategoriesJobsControllerResource extends Controller
{
    use upload_image;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = jobs_categories::query()->with('image')->orderByDesc('id')->get();
        return CategoryResource::collection($data);
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
    public function save($data,$image)
    {
        $output = jobs_categories::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);
        if($image){
            $file = $this->upload($image,'categories');
            ImageModalSave::make($output->id,'jobs_categories',$file);
        }
        $output->load('image');
        $output->loadCount('jobs');
        return messages::success_output(trans('messages.saved_successfully'),CategoryResource::make($output));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(categoriesJobsFormRequest $request)
    {
        //
        $data = $request->validated();
        $data =  FormRequestHandleInputs::handle_inputs_langs($data,['name']);
        return $this->save($data,request()->hasFile('image') ? request()->file('image'):false);
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
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
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
    public function update(categoriesJobsFormRequest $request, $id)
    {
        //
        $data = $request->validated();
        $data =  FormRequestHandleInputs::handle_inputs_langs($data,['name']);
        $data['id'] = $id;
        return $this->save($data,request()->hasFile('image') ? request()->file('image'):false);
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

    public function categories_statistics()
    {
        $data = jobs_categories::query()
            ->withCount('jobs')
            ->with('image')
            ->orderByDesc('id')->get();
        return CategoryResource::collection($data);
    }
}
