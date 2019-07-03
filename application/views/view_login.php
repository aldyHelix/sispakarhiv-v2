<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>>Halaman Login</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
    <div id="login">
        <h3 class="text-center text-white pt-5"></h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="<?php echo site_url('login/aksi_login') ?>" method="post">
                            <h1 class="text-center text-info">Sistem Pakar Diagnosa HIV/AIDS</h1> 
                            <!-- <h3 class="text-center text-info">Silahkan Login</h3 -->
                            <div class="form-group">
                                <label class="sr-only" for="inputEmail">Username</label>
                        <input type="text" class="form-control" value="" id="inputEmail" name="username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="inputPassword">Password</label>
                                <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password">
                            </div>
                            <div class="form-group text-center ">
                                <button type="submit" class="btn btn-primary btn-block"><span class="fa fa-sign-in"></span>&nbsp; Login 
                                </button>
                            </div>
                            <div id="register-link" class="text-right">
                               Belum punya akun? klik <a href="<?=site_url('User/create')?>" class="text-info"> disini</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>    
</body>
</html>
