 <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Input Diagnosa</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="<?=base_url('diagnosa/add_diagnosa')?>" method="POST" role="form">
              <div class="box-body">

                <div class="form-group">
                  <label for="id_diagnosa">ID Diagnosa</label>
                  <input type="text" class="form-control" id="id_diagnosa" name="id_diagnosa" placeholder="Masukkan ID" required="">
                </div>

                <div class="form-group">
                  <label for="nama_diagnosa">Nama Stadium</label>
                  <input type="text" class="form-control" id="nama_diagnosa" name="nama_diagnosa" placeholder="Masukkan diagnosa" required="">
                </div>

                 <div class="form-group">
                  <label for="solusi">Solusi</label>
                  <input type="text" class="form-control" id="solusi_diagnosa" name="solusi_diagnosa" placeholder="Masukkan solusi" required="">
                </div>

                  <div class="form-group">
                  <label for="ket_stadium">Keterangan</label>
                  <input type="text" class="form-control" id="ket_stadium" name="keterangan" placeholder="Masukkan keterangan" required="">
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
    
