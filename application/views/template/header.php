<header class="main-header">
    <!-- Logo -->
   <a class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <!-- <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i> -->
             <!--  <span class="label label-success">4</span> -->
           <!--  </a> -->
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a class="dropdown-toggle" data-toggle="dropdown">
              <!-- <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> -->
              <img src="<?= base_url('assets/dist/img/user1-128x128.jpg'); ?>" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php echo $userinfo['login_nama_pasien']; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?= base_url('assets/dist/img/user1-128x128.jpg'); ?>" class="img-circle" alt="User Image">

                <p>
                  <?php echo $userinfo['login_nama_pasien']; ?>
                </p>
              <!-- </li> -->
              <!-- Menu Body -->
              <!-- <li class="user-body"> -->
               <!--  <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div> -->
                <!-- /.row -->
              <!-- </li> -->
              <!-- Menu Footer-->
              <li class="user-footer" >
                <div class="pull-right">
                  <a href="<?=site_url('Login/signout')?>" class="btn btn-default btn-flat">Keluar</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <!-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
        </ul>
      </div>
    </nav>
  </header>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Sistem Pakar
        <small>Diagnosa HIV/AIDS</small>
      </h1>
     <!--  <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
