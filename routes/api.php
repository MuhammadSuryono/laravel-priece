<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/public/generateQRCode', 'StakeholderController@generate');
Route::get('/public/customer/create', 'CustomerController@store');
Route::post('/public/scanQRCode/{customer_id}/{stakeholder_id}', 'CustomerController@update');
