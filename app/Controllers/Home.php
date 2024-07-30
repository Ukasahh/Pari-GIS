<?php

namespace App\Controllers;

use App\Models\M_wisata;

class Home extends BaseController
{
    public function index()
    {
        return view('auth/login');
    }
    public function register()
    {
        return view('auth/register');
    }
    public function user()
    {
        $data['title'] = 'User List';
        return view('user/index', $data);
    }
    public function home()
    {
        $data['title'] = 'Home';
        return view('home/index', $data);
    }
}
