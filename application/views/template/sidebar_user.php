<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
         <img src="<?= base_url('assets/dist/img/user1-128x128.jpg'); ?>" class="user-image" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $userinfo['login_nama_pasien']; ?></p>
          <a><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>

        <li class="menu">
           <a href="<?=site_url('user')?>">
            <i class="fa fa-dashboard"></i>
            <span> Beranda</span>
            </span>
          </a>
        </li>

        <li class="menu">
           <a href="<?=site_url('user/konsultasi')?>">
            <i class="fa fa-files-o"></i>
            <span> Konsultasi</span>
            </span>
          </a>
        </li>

        <li class="menu">
           <a href="<?=site_url('user/histori')?>">
            <i class="fa fa-th"></i>
            <span> Histori Konsultasi</span>
            </span>
          </a>
        </li>
      </li>
    </ul>
    </section>
    <!-- /.sidebar -->
  </aside>