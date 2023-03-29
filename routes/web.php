<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\ImoveisController;


Route::get('/', [UsuarioController::class, 'homeView']);

Route::get('/usuario/login', [UsuarioController::class, 'loginView']);

Route::get('/usuario/cadastro', [UsuarioController::class, 'cadastroView']);


Route::get('/imoveis/imovel', [ImoveisController::class, 'imovelView']);

Route::get('/imoveis/imoveis_usuario', [ImoveisController::class, 'imoveis_usuarioView']);

Route::get('/imoveis/anunciar', [ImoveisController::class, 'anunciarView']);
