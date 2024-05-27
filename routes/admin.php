<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\classes\DashboardServiceClass;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\DB;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['middleware'=>['changeLang','auth'],'prefix'=>'/dashboard'],function (){
    Route::post('/save-category',[DashboardServiceClass::class,'save_category']);
    Route::post('/save-question',[DashboardServiceClass::class,'save_question']);
    Route::post('/save-sub-category',[DashboardServiceClass::class,'save_sub_category']);
    Route::post('/save-category-pricing',[DashboardServiceClass::class,'save_category_pricing']);
    Route::post('/save-location',[DashboardServiceClass::class,'save_location']);
    Route::post('/save-package',[DashboardServiceClass::class,'save_package']);
    Route::post('/save-currency',[DashboardServiceClass::class,'save_currency']);
    Route::post('/update-listing',[DashboardServiceClass::class,'update_listing']);
    Route::post('/save-user',[DashboardServiceClass::class,'save_user']);
    Route::post('/filter-statistics',[DashboardServiceClass::class,'filter_statistics']);
    Route::post('/change-map',[DashboardServiceClass::class,'change_map']);
    Route::post('/average-area-price',[DashboardServiceClass::class,'average_area_price']);
    Route::post('/save-support',[DashboardServiceClass::class,'save_support']);
    Route::post('/save-point-ad',[DashboardServiceClass::class,'save_pointad']);
    Route::post('/save-settings',[DashboardServiceClass::class,'save_settings']);
    Route::post('/save-pricing',[DashboardServiceClass::class,'save_pricing']);
    Route::post('/accept-listing',[DashboardServiceClass::class,'accept_listing']);
    Route::post('/reject-listing',[DashboardServiceClass::class,'reject_listing']);
});
