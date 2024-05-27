<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\auth\AuthControllerApi;
use App\Http\Controllers\CountriesController;
use App\Http\Controllers\CitiesController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\TemplatesController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\NotificationsController;
use App\Http\Controllers\SectionsController;
use App\Http\Controllers\AttributesController;
use App\Http\Controllers\TemplateSecAttrValueController;
use App\Http\Controllers\UsersCvsController;
use App\Http\Controllers\TitleDescriptionController;
use App\Http\Controllers\PercentageController;
use App\Http\Controllers\ImagesController;
use App\Http\Controllers\OrdersController;
use App\Http\Controllers\classes\general\GeneralServiceController;
use App\Http\Controllers\JobsOffersControllerResource;


Route::group(['middleware'=>['changeLang','throttle:apiLimit']],function (){
    Route::post('/register',[AuthControllerApi::class,'register_post']);
    Route::post('/logout',[AuthControllerApi::class,'logout_api']);
    Route::post('/validate-user',[AuthControllerApi::class,'validate_user']);
    Route::post('/login',[AuthControllerApi::class,'login_api']);
    Route::post('/check-email',[AuthControllerApi::class,'check_email']);
    Route::post('/user-by-activation-code',[AuthControllerApi::class,'user_by_activation_code']);
    Route::post('/newpass',[UsersController::class,'update_personal_info']);


    Route::post('/percentages',[PercentageController::class,'index']);
    Route::get('/user',[AuthControllerApi::class,'user'])->middleware('CheckApiAuth');


    Route::group(['middleware'=>'guest'],function () {
        Route::resources([
            'countries'=>CountriesController::class, // countries Resource
            'cities'=>CitiesController::class // cities Resource
        ]);

    });


    // ---------------------start of users actions --------------------
    Route::group(['prefix'=>'/user','middleware'=>'CheckApiAuth'],function (){
        Route::post('/update-personal-info',[UsersController::class,'update_personal_info']);

    });
    // ---------------------end of users actions --------------------



    Route::group(['prefix'=>'/dashboard','middleware'=>'CheckApiAuth'],function(){
        Route::post('/users',[DashboardController::class,'users']);
        Route::post('/users/save',[UsersController::class,'update_personal_info']);

        Route::group(['prefix'=>'/languages'],function(){
            Route::get('/',[DashboardController::class,'all_languages']);
            Route::post('/save',[DashboardController::class,'save_lang']);
        });

        Route::group(['prefix'=>'/countries'],function(){
            Route::post('/',[DashboardController::class,'countries']);
            Route::post('/save',[DashboardController::class,'save_countries']);
        });
    });

    Route::group(['prefix'=>'/users','middleware'=>'CheckApiAuth'],function(){
        Route::post('/save',[UsersController::class,'save']);
    });

    Route::resources([
        'jobs-offers'=>JobsOffersControllerResource::class
    ]);

    Route::group(['prefix'=>'/jobs-offers','middleware'=>'CheckApiAuth'],function(){
        Route::post('/change-status',[JobsOffersControllerResource::class,'change_status']);
        Route::post('/change-applicant-status',[JobsOffersControllerResource::class,'change_applicant_status']);
    });



    Route::post('/deleteitem',[GeneralServiceController::class,'delete_item']);


    Route::post('/upload-excel',[GeneralServiceController::class,'upload']);
    Route::get('/notifications',[NotificationsController::class,'index']);




});
