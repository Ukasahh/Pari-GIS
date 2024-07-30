<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::home');

$routes->get('/home/register', 'Home::register');
$routes->get('/home/user', 'Home::user');
$routes->get('/home/login', 'Home::login');
$routes->get('/home', 'Home::home');

$routes->get('/user', 'User::index');

$routes->get('/admin', 'Admin::index', ['filter' => 'role:admin']);
$routes->get('/admin/index', 'Admin::index',  ['filter' => 'role:admin']);
$routes->get('/admin/detail/', 'Admin::detail',  ['filter' => 'role:admin']);
$routes->get('/admin/detail/(:num)', 'Admin::detail/$1s',  ['filter' => 'role:admin']);

$routes->get('/map', 'Map::index');
$routes->get('foto/(:segment)', 'Map::show/$1');
$routes->get('/map/add', 'Map::add',  ['filter' => 'role:admin']);
$routes->post('/map/add', 'Map::save',  ['filter' => 'role:admin']);
$routes->get('/map/manage', 'Map::manage',  ['filter' => 'role:admin']);

$routes->get('/map/edit/(:num)', 'Map::edit/$1',  ['filter' => 'role:admin']);
$routes->post('map/update/(:num)', 'Map::update/$1',  ['filter' => 'role:admin']);

$routes->get('map/delete/(:num)', 'Map::delete/$1',  ['filter' => 'role:admin']);
