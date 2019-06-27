 <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Update Diagnosa</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="<?=site_url('diagnosa/update_diagnosa')?>" method="POST" role="form">
              <div class="box-body">

                <div class="form-group">
                  <label for="id_diagnosa">ID Diagnosa</label>
                  <input type="text" class="form-control" id="id_diagnosa" readonly="" name="id_diagnosa" value="<?=$diagnosa['id_diagnosa']?>" required="">
                </div>

                <div class="form-group">
                  <label for="nama_diagnosa">Nama Stadium</label>
                  <input type="text" class="form-control" id="nama_diagnosa" name="nama_diagnosa" value="<?=$diagnosa['nama_diagnosa']?>" required="">
                </div>

                 <div class="form-group">
                  <label for="solusi">Solusi</label>
                  <input type="text" class="form-control" id="solusi" name="solusi_diagnosa" value="<?=$diagnosa['solusi_diagnosa']?>" style="resize:none" required="">
                </div>

                  <div class="form-group">
                  <label for="ket_stadium">Keterangan</label>
                  <input type="text" class="form-control" id="ket_stadium" name="keterangan" value="<?=$diagnosa['keterangan']?>" style="resize:none" required="">
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
          <!-- /.box -->

        </div>
        <!--/.col (left) -->    
    
