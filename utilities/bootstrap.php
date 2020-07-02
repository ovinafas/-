<?php 
session_start();


$level['0']= array( 'user/login','user/check','user/logout');


$level['1']= array( 'user/login','user/check','user/logout',
    'book/indexp','book/srch','book/down',
    'chap/show','chap/indexp','chap/down','user/profile',
    'user/mypass','user/save','user/savep');


$level['2']= array( 'user/login','user/check','user/logout',
    'book/indexp','book/srch','book/down',
    'chap/show','chap/indexp','chap/down','user/profile',
    'user/mypass' ,
    'book/index', 'book/add', 'book/edit', 'book/save', 'book/delete',
    'cat/index', 'cat/add', 'cat/edit', 'cat/save', 'cat/delete',
    'chap/index', 'chap/add', 'chap/edit', 'chap/save', 'chap/delete',
    'user/save','user/savep');


$level['3']= array( 'user/login','user/check','user/logout',
    'book/indexp','book/srch','book/down',
    'chap/show','chap/indexp','chap/down','user/profile',
    'user/mypass' ,
    'book/index', 'book/add', 'book/edit', 'book/save', 'book/delete',
    'cat/index', 'cat/add', 'cat/edit', 'cat/save', 'cat/delete',
    'chap/index', 'chap/add', 'chap/edit', 'chap/save', 'chap/delete',
    'user/index', 'user/add', 'user/edit', 'user/save', 'user/delete',
    'user/editp','user/savep');





/*
$controller = "cat";
$action = "index"; 
$query = null;

*/

$controller = "user";
$action = "login";
$query = null;

if (isset($_GET['id'])) 
{ 
   	$params = array(); 
	$params = explode("/", $_GET['id']); 
	$controller = ucwords($params[0]); 
	if (isset($params[1]) && !empty($params[1])) 
	{ 
		$action = $params[1]; 
	} 
	if (isset($params[2]) && !empty($params[2])) 
	{ 
		$query = $params[2]; 
	} 
}


    $req =  strtolower("$controller/$action");

   if(isset( $_SESSION['user_type']))
       $utype =  $_SESSION['user_type'];
   else
       $utype =0;


    $perm = $level[$utype];

    if(in_array($req , $perm)) {

        $modelName = $controller;
        $controller .= '_controller';
        $load = new $controller($modelName, $action);
        if (method_exists($load, $action))
            $load->$action($query);
        else  echo "request invalid";

    }else
        echo "access  denied";
