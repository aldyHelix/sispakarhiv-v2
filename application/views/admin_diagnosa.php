<div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Diagnosa</h3>
              <div style="margin: 10px">
               <a href="<?=site_url('a_diagnosa/create')?>"><button class="btn btn-default btn-primary btn-sm"><i class="fa fa-plus-square"></i> Tambah</button></a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID</th>
                  <th>Nama Stadium</th>
                  <th>Solusi</th>
                  <th>Keterangan</th>
                  <th></th>
                  <th></th>
                </tr>
                </thead>
                <tbody>

                <?php foreach ($diagnosa as $d) { ?>
                <tr>
                  <td><?=$d['id_diagnosa']?></td>
                  <td><?=$d['nama_diagnosa']?></td>
                  <td><?=$d['solusi_diagnosa']?></td>
                  <td><?=$d['keterangan']?></td>
                  <td>
                  <a href="<?=site_url().'/a_diagnosa/update/'.$d['id_diagnosa'];?>"><button class="btn btn-block btn-success btn-sm"><i class="fa fa-pencil"></i> Ubah</button></a>
                  </td>
                  <td> 
                  <a href="<?=site_url().'/a_diagnosa/delete/'.$d['id_diagnosa'];?>"><button class="btn btn-block btn-danger btn-sm"><i class="fa fa-trash"></i> Hapus</button></a>  
                </tr>
                <?php } ?>

                </tbody>


                <tfoot>

                </tfoot>
              </table>
            </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->