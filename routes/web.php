<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProblemController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\Voyager\VoyagerController;
use App\Http\Controllers\Voyager\VoyagerAuthController;


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

Route::get('/', function () {
    // return view('welcome');
    //return redirect()->route('voyager.login');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::get('/', [VoyagerAuthController::class, 'index']);
 ///Route::post('/comment/store', 'CommentController@store')->name('comment.add');
Route::get('dashboard', [VoyagerController::class, 'index']);
Route::get('problem', [ProblemController::class, 'index']);
Route::get('add_problem', [ProblemController::class, 'create']);
Route::post('save_problem', [ProblemController::class, 'store']);
Route::get('/delete-problem/{id}', [ProblemController::class, 'show']);
Route::get('/edit-problem/{id}', [ProblemController::class, 'edit']);
Route::put('update-problem/{id}', [ProblemController::class, 'update']);
Route::get('view-problem/{id}', [ProblemController::class, 'detail']);
Route::get('cetak-problem/{id}', [ProblemController::class, 'cetak']);
Route::get('zoom-images/{id}', [ProblemController::class, 'zoom']);

Route::get('/comment-problem/{id}', [CommentController::class, 'comment']);
Route::post('post-comment', [CommentController::class, 'post_comment']);
Route::post('replay', [CommentController::class, 'replay_comment']);
Route::post('komentar2', [CommentController::class, 'replay_comment']);

//Route::get('filter',[ProblemController::class, 'filter']);