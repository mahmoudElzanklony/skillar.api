<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\auth\AuthControllerApi;
use App\Http\Controllers\CountriesController;
use App\Http\Controllers\CitiesController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\FeedbacksController;

use App\Http\Controllers\NotificationsController;

use App\Http\Controllers\PercentageController;

use App\Http\Controllers\classes\general\GeneralServiceController;
use App\Http\Controllers\JobsOffersControllerResource;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\CategoriesJobsControllerResource;
use App\Http\Controllers\ApplicantController;
use App\Http\Controllers\ActivationAccountController;
use App\Http\Controllers\CompaniesRankController;
use App\Http\Controllers\ColleaguesController;


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

    // ---------------------start of profile actions --------------------
    Route::group(['prefix'=>'/profile','middleware'=>'CheckApiAuth'],function (){
        Route::get('/send-activation',[ActivationAccountController::class,'send_activation'])->middleware('CheckApiAuth');
        Route::get('/activation',[ActivationAccountController::class,'activate'])->middleware('CheckApiAuth');
        Route::post('/see-account-profile',[UsersController::class,'see_account_profile']);
        Route::post('/save-video',[UsersController::class,'save_video']);
        Route::post('/get-video',[UsersController::class,'get_video']);
        Route::post('/get-feedbacks',[FeedbacksController::class,'index']);
        Route::post('/get-applied-jobs',[JobsOffersControllerResource::class,'applied_jobs']);
        Route::post('/update-feedback-status',[FeedbacksController::class,'update_status']);
        Route::post('/make-feedback',[FeedbacksController::class,'make_feedback']);
        Route::post('/visit',[\App\Http\Controllers\VisitsController::class,'create']);
        Route::get('/statistics',\App\Http\Controllers\StatisticsProfileController::class);

    });
    // ---------------------end of profile actions --------------------

    // ---------------------start of employee actions --------------------
    Route::group(['prefix'=>'/employee','middleware'=>'CheckApiAuth'],function (){
        Route::post('/save-skill',[EmployeeController::class,'save_skill']);
        Route::post('/save-language',[EmployeeController::class,'save_language']);
        Route::post('/save-project',[EmployeeController::class,'save_project']);
        Route::post('/save-info-item',[EmployeeController::class,'save_info_item']);
        Route::post('/get-info-data',[EmployeeController::class,'get_info_data']);
        Route::post('/save-resume',[\App\Http\Controllers\ResumesController::class,'save']);
        Route::post('/get-resumes',[\App\Http\Controllers\ResumesController::class,'index']);

    });
    // ---------------------end of employee actions --------------------

    Route::group(['prefix'=>'/colleagues','middleware'=>'CheckApiAuth'],function (){
        Route::get('/',[ColleaguesController::class,'index']);
    });
    Route::group(['prefix'=>'/companies','middleware'=>'CheckApiAuth'],function (){
        Route::get('/',[CompaniesRankController::class,'index']);
    });
    Route::group(['prefix'=>'/statistics'],function (){
        Route::get('/categories',[CategoriesJobsControllerResource::class,'categories_statistics']);
    });



    Route::group(['prefix'=>'/dashboard','middleware'=>'CheckApiAuth'],function(){
        Route::get('/users',[DashboardController::class,'users']);
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

    Route::group(['prefix'=>'/applicants','middleware'=>'CheckApiAuth'],function(){
        Route::get('/specific_one',[ApplicantController::class,'specific_one']);
        Route::post('/apply',[ApplicantController::class,'apply_job']);
    });

    Route::resources([
        'jobs-offers'=>JobsOffersControllerResource::class,
        'categories-jobs'=>CategoriesJobsControllerResource::class
    ]);

    Route::group(['prefix'=>'/jobs-offers','middleware'=>'CheckApiAuth'],function(){
        Route::post('/change-status',[JobsOffersControllerResource::class,'change_status']);
        Route::post('/change-applicant-status',[JobsOffersControllerResource::class,'change_applicant_status']);
        Route::post('/get-applicants',[ApplicantController::class,'get_applicants']);
    });



    Route::post('/deleteitem',[GeneralServiceController::class,'delete_item']);


    Route::post('/upload-excel',[GeneralServiceController::class,'upload']);
    Route::get('/notifications',[NotificationsController::class,'index'])->middleware('CheckApiAuth');




});
