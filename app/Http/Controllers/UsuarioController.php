<?php

namespace App\Http\Controllers;

use App\Models\Imovel;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    public function homeView()
    {
        return view('usuario/home');
    }

    public function loginView()
    {
        return view('usuario/login');
    }

    public function cadastroView()
    {
        return view('usuario/cadastro');
    }
}

