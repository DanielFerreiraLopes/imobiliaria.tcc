<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    public function homeView()
    {
        return view('imoveis/imovel');
    }

    public function loginView()
    {
        return view('imoveis/imoveis_usuario');
    }

    public function cadastroView()
    {
        return view('imoveis/anunciar');
    }
}