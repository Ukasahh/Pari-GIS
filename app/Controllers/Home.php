<?php

namespace App\Controllers;

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
}
