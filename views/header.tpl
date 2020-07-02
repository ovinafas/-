<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="includes/bs/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="includes/bs/bootstrap-rtl.css" rel="stylesheet" type="text/css">
    <script src="includes/bs/jquery.js"></script>
    <script src="includes/bs/bootstrap.js"></script>
    <link href="includes/elib.css" rel="stylesheet" type="text/css" >
</head>
<body>
<nav class="navbar navbar-default nav1">
    <div class="container">
        <a href="">  صفحه اول </a>  |
        <a href=""> دسته ها </a>|
        <a href=""> کتاب ها </a>|
        <a href=""> درباره ما </a>


        <?php if(!isset($_SESSION['user_name'])){ ?>
        |<a href="index.php?id=user/login"> ورود </a>
        <?php } else { ?>
        <span style="float: left">

            خوش آمدید
            <?php echo $_SESSION['user_name']; ?>
            [ <a href="index.php?id=user/logout">خروج</a> ]
       </span>
        <?php } ?>
    </div>
</nav>

<div class="container-fluid header">
    <div class="container">
        <h1> کتابخانه دیجیتال </h1>
    </div>
</div>
<div class="container-fluid body">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <br>
                <ul class="list-group">
                    <li class="list-group-item active">
                        جستجوی کتاب
                    </li>
                    <li class="list-group-item">
                        <form action="index.php?id=book/srch" method="post">
                            <input value="<?php if(isset($srch)) echo $srch; ?>"
                                   type="text" name="srch" >

                        </form>
                    </li>
                </ul>


                <?php if(isset($_SESSION['user_name'])) { ?>

                <ul class="list-group">
                    <li class="list-group-item active">
                        امکانات کاربر
                    </li>
                    <li class="list-group-item">
                        <a href="index.php?id=user/profile"> ویرایش پروفایل </a>
                    </li>
                    <li class="list-group-item">
                        <a href="index.php?id=user/mypass"> تغییر کلمه عبور</a>
                    </li>
                    <li class="list-group-item">
                        <a href="index.php?id=user/logout"> خروج از سیستم </a>
                    </li>
                </ul>

                <?php if(isset($_SESSION['user_type']) &&
                        $_SESSION['user_type']>=2 ) { ?>
                <ul class="list-group">
                    <li class="list-group-item active">
                        امکانات برنامه
                    </li>
                    <li class="list-group-item">
                        <a href="index.php?id=cat/index"> مدیریت دسته ها </a>
                    </li>
                    <li class="list-group-item">

                        <a href="index.php?id=book/index"> مدیریت کتاب ها </a>
                    </li>
                    <?php if( $_SESSION['user_type']>=3 ) { ?>
                    <li class="list-group-item">
                        <a href="index.php?id=user/index"> مدیریت کاربران </a>
                    </li>
                    <?php } ?>

                </ul>
                <?php } ?>


                <?php } ?>


                <ul class="list-group">
                    <li class="list-group-item active">
                        دسته بندی کتاب ها                    </li>
                    <?php foreach($cats as $id => $name ) {  ?>
                    <li class="list-group-item">
                        <a href="index.php?id=book/indexp/<?=$id ?>"><?=$name ?> </a>
                    </li>
                    <?php } ?>

                </ul>
                <br>
                <?php if( isset($chaps) ) { ?>
                <ul class="list-group">
                    <li class="list-group-item active">
                        <?=$bname ?></li>
                    <?php foreach($chaps as $chap ) {  ?>
                    <li class="list-group-item">
                        <a href="index.php?id=chap/show/<?=$chap['id'] ?>">
                            <?=$chap['name'] ?>
                        </a>
                    </li>
                    <?php } ?>

                </ul>


                <?php } ?>


            </div>
            <div class="col-sm-9">
                <br>
                <ul class="list-group">
                    <li class="list-group-item active">
                        <?=$title ?>
                    </li>
                    <li class="list-group-item ">


                    <?php   if(isset($_SESSION['fb'])) {   ?>

                    <div  class="alert alert-success">

                     <?php
                           echo  $_SESSION['fb'] ;

                            unset  ( $_SESSION['fb']) ;


                      ?>
                    </div>

                    <?php   } ?>


                        <?php   if(isset($_SESSION['er'])) {   ?>

                        <div  class="alert alert-warning">

                            <?php
                                 echo  $_SESSION['er'] ;

                                 unset  ($_SESSION['er']);


                             ?>
                        </div>

                        <?php   } ?>
