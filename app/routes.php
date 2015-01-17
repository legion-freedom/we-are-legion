<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	echo Form::open(array('url' => 'log', 'method' => 'POST'));
    echo Form::label('nom', 'Nom :');
    echo Form::text('nom'),'<br>';
    echo Form::label('age', 'Age :');
    echo Form::text('age'),'<br>';
    echo Form::submit('Submit');
    echo Form::close();
});
Route::any('log', function()
{
    return 'Le nom est '.Input::get('nom').'<br>'.'L\'âge est '.Input::get('age');
});
