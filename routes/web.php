<?php

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


Route::get('/','PageController@index');


Route::get('adminpanel', function () {
        return view('Admin_panel.pages.index');
        // Matches The "/Admin_panel/index" URL
    });



Route::prefix('adminpanel')->group(function () {


    Route::get('index', function () {
            return view('Admin_panel.pages.index');
            // Matches The "/Admin_panel/index" URL
        });

    Route::get('blank', function () {
            return view('Admin_panel.pages.blank');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('buttons', function () {
            return view('Admin_panel.pages.buttons');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('flot', function () {
            return view('Admin_panel.pages.flot');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('forms', function () {
            return view('Admin_panel.pages.forms');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('grid', function () {
            return view('Admin_panel.pages.grid');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('icons', function () {
            return view('Admin_panel.pages.icons');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('login', function () {
            return view('Admin_panel.pages.login');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('morris', function () {
            return view('Admin_panel.pages.morris');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('notifications', function () {
            return view('Admin_panel.pages.notifications');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('panels-wells', function () {
            return view('Admin_panel.pages.panels-wells');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('tables', function () {
            return view('Admin_panel.pages.tables');
            // Matches The "/Admin_panel/index" URL
        });
    Route::get('typography', function () {
            return view('Admin_panel.pages.typography');
            // Matches The "/Admin_panel/index" URL
        });
     Route::get('allpages', function () {
            return view('Admin_panel.pages.allPages');
            // Matches The "/Admin_panel/index" URL
        })->name('adminpanel.allpages');
      Route::get('newpage', function () {
            return view('Admin_panel.pages.newpage');
            // Matches The "/Admin_panel/index" URL
        })->name('adminpanel.newpage');

      //page operations

      Route::prefix('adminpanel/page')->group(function () {

            Route::post('create','PageController@store')->name('page.store');

            Route::get('/{slug}/{slug2?}', array('as' => 'page.show', 'uses' => 'PageController@show')); // as name of route

      });

      Route::prefix('nav')->group(function () {

            Route::get('index','NavController@index')->name('nav.index');
            Route::post('create','NavController@store')->name('nav.store');
            Route::post('{id}/edit','NavController@edit')->name('nav.edit');

      });

});


