<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Filters\AttributeId;
use App\Http\Controllers\Filters\TemplateId;
use App\Http\Controllers\Filters\TemplateSectionId;
use App\Http\Controllers\Filters\UserId;
use App\Http\design_patterns\builders\CvLayoutBuilder;
use App\Http\Requests\cvSectionFormRequest;
use App\Http\Requests\userCvSecAttrValFormRequest;
use App\Http\Resources\UserCvResource;
use App\Http\Resources\UserCvSecAttrValResource;
use App\Http\Resources\UserCvSectionResource;
use App\Http\traits\messages;
use App\Models\elements_style;
use App\Models\users_cvs;
use App\Models\users_cvs_sec_attr_value;
use App\Models\users_cvs_sections;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;
use App\Http\traits\upload_image;
class UsersCvsController extends Controller
{
    use upload_image;
    //
    public function index(){
        $data = users_cvs::query()->with(['user','template'])->orderBy('id','DESC');
        $output = app(Pipeline::class)
            ->send($data)
            ->through([
                TemplateId::class,
                UserId::class,
            ])
            ->thenReturn()
            ->paginate(15);
        return UserCvResource::collection($output);
    }

    public function save(){
        /*$output = users_cvs::query()->updateOrCreate([
            'id'=>request('id') ?? null
        ],[
            'user_id'=>auth()->id(),
            'template_id'=>request('template_id')
        ]);
        $output = users_cvs::query()->orderBy('id','DESC')->with(['user','template'])->find($output->id);*/
        if(request()->hasFile('layout_image')){
            $img = $this->upload(request()->file('layout_image'),'layouts');
        }

        $cvObj = new CvLayoutBuilder(request('id') ?? null , request()->all() , request('parent_id') ?? null);

        $cvObj->save_template($img ?? null)->save_template_sec()->save_template_style();
        return messages::success_output(trans('messages.saved_successfully'));

    }

    public function save_section(cvSectionFormRequest $request){
        // get last order


        $data = $request->validated();
        if(!(request()->has('id'))) {
            $order = $this->get_last_order(request('user_cv_id'));
            $data['order'] = $order;
        }
        //dd($data);
        $output = users_cvs_sections::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);

        $output = users_cvs_sections::query()->orderBy('id','DESC')->with(['section','user_cv.template'])->find($output->id);
        return UserCvSectionResource::make($output);
    }

    public function get_last_order($user_cv_id){
        $order = users_cvs_sections::query()->where('user_cv_id','=',$user_cv_id)->orderBy('order','DESC')->first();
        if($order == null){
            $order = 1;
        }else{
            $order = $order->order + 1;
        }
        return $order;
    }

    public function save_attr_val(userCvSecAttrValFormRequest $request){
        $data = $request->validated();
        $output = users_cvs_sec_attr_value::query()->updateOrCreate([
            'id'=>$data['id'] ?? null
        ],$data);
        $output = users_cvs_sec_attr_value::query()->orderBy('id','DESC')
            ->with(['attribute','user_cv_section.section'])->find($output->id);
        return UserCvSecAttrValResource::make($output);

    }
}
