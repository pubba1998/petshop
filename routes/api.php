<?php
   use App\Http\Controllers\AnimalsController;
   use App\Http\Controllers\CustomersController;
   use App\Http\Controllers\DeliveryController;
   use App\Http\Controllers\OrderController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group(['prefix' => 'animals'], function () {
    
    Route::get('/', [AnimalsController::class, 'index']);

    Route::get('/{id}', [AnimalsController::class, 'show']);

    Route::post('/', [AnimalsController::class, 'store']);

    Route::put('/{id}', [AnimalsController::class, 'update']);

    Route::delete('/{id}', [AnimalsController::class, 'destroy']);

});
Route::group(['prefix' => 'customers'], function () {
    
    Route::get('/', [CustomersController::class, 'index']);

    Route::get('/{id}', [CustomersController::class, 'show']);

    Route::post('/', [CustomersController::class, 'store']);

    Route::put('/{id}', [CustomersController::class, 'update']);

    Route::delete('/{id}', [CustomersController::class, 'destroy']);   
});
Route::group(['prefix' => 'delivery'], function () {
    
    Route::get('/', [DeliveryController::class, 'index']);

    Route::get('/{id}', [DeliveryController::class, 'show']);

    Route::post('/', [DeliveryController::class, 'store']);

    Route::put('/{id}', [DeliveryController::class, 'update']);

    Route::delete('/{id}', [DeliveryController::class, 'destroy']);   
});
Route::group(['prefix' => 'items'], function () {
    
    Route::get('/', [ItemsController::class, 'index']);

    Route::get('/{id}', [ItemsController::class, 'show']);

    Route::post('/', [ItemsController::class, 'store']);

    Route::put('/{id}', [ItemsController::class, 'update']);

    Route::delete('/{id}', [ItemsController::class, 'destroy']);  
});
Route::group(['prefix' => 'order'], function () {
    
    Route::get('/', [OrderController::class, 'index']);

    Route::get('/{id}', [OrderController::class, 'show']);

    Route::post('/', [OrderController::class, 'store']);

    Route::put('/{id}', [OrderController::class, 'update']);

    Route::delete('/{id}', [OrderController::class, 'destroy']);  
});