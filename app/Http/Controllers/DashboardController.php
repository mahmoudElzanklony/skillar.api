<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Filters\EndDateFilter;
use App\Http\Controllers\Filters\NameFilter;
use App\Http\Controllers\Filters\StartDateFilter;
use App\Http\Controllers\Filters\TitleFilter;
use App\Http\Controllers\Filters\UsernameFilter;
use App\Http\Requests\countriesFormRequest;
use App\Http\Resources\UserResource;
use App\Http\traits\messages;
use App\Models\attributes;
use App\Models\countries;
use App\Models\percentages;
use App\Models\sections;
use App\Models\templates;
use App\Models\User;
use App\Models\users_cvs;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;
use App\Http\traits\TemplatesHelper;
use App\Http\traits\SectionsHelper;
use App\Http\traits\AttributesHelper;
use App\Http\traits\dashboard\LanguagesHelper;
use App\Http\traits\dashboard\TablesPrivilegesHelper;
use App\Http\traits\TemplateSecAttrValueHelper;
class DashboardController extends Controller
{
    use TemplatesHelper , SectionsHelper , AttributesHelper , LanguagesHelper , TablesPrivilegesHelper , TemplateSecAttrValueHelper;

    public function users(){
        $data = User::query()->with('role')
            ->withCount('jobs')
            ->withCount('applicants')
            ->with('country')->orderBy('id','DESC');
        $output = app(Pipeline::class)
            ->send($data)
            ->through([
                UsernameFilter::class,
                StartDateFilter::class,
                EndDateFilter::class
            ])
            ->thenReturn()
            ->paginate(1);
        return UserResource::collection($output);
    }


    public function countries(){
        $data = countries::query()->orderBy('id','DESC');
        $output = app(Pipeline::class)
            ->send($data)
            ->through([
                NameFilter::class,
                StartDateFilter::class,
                EndDateFilter::class
            ])
            ->thenReturn()
            ->paginate(25);
        return messages::success_output('',$output);
    }

    public function save_countries(countriesFormRequest $formRequest){
        $data = $formRequest->validated();
        $output = countries::query()->updateOrCreate([
            'id'=>request()->has('id') ? request('id'):null
        ],$data);

        return messages::success_output(trans('messages.saved_successfully'),$output);

    }

    public function quick_statistics(){
        $output = [
          'templates'=>templates::query()->count(),
          'sections'=>sections::query()->count(),
          'attributes'=>attributes::query()->count(),
          'users_cv'=>users_cvs::query()->count(),
        ];
        return messages::success_output('',$output);
    }

    public function save_profit()
    {
        percentages::query()->where('name','=','profit')->update([
            'percentage'=>request('profit')
        ]);
        return messages::success_output(trans('messages.saved_successfully'));
    }
}
