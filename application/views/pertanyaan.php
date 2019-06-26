      <div class="row">
        <div class="col-md-6">
          <div class="box box-solid">
            <div class="box-header with-border">
              <i class="fa fa-text-width"></i>

              <h3 class="box-title">Konsultasi</h3>
            </div>
            <!-- /.box-header -->
              <?php foreach ($list_pertanyaan as $counter => $quiz) { 
                $display = ($counter == 0) ? '' : 'style="display:none;"';
                $penting = ($quiz['priority'] == 1) ? 'penting' : '';
                $btn_ragu = ($quiz['priority'] != 1) ? '<button class="btn btn-warning btn_ragu" data-nilai="0.5" data-bobot_pakar="'.$quiz['bobot_pakar'].'">Ragu-Ragu</button>' : '';
                ?>
            <div class="box-body">
              <div class="pertanyaan <?= $penting ?>" data-penting="<?= $quiz['priority'] ?>" <?= $display ?> >
                <input type="hidden" id="id_diagnosa" value="<?= $quiz['id_diagnosa'] ?>" >
                <input type="hidden" id="bobot_pakar" value="<?= $quiz['bobot_pakar'] ?>" >

                <p>Jawablah pertanyaan berikut dari diagnosa (<?= $quiz['nama_diagnosa'] ?>) ini:</p>

                <hr>
                <p><?= $quiz['nama_gejala'] ?></p>

                <button class="btn btn-success btn_yes" data-nilai="1" data-bobot_pakar="<?= $quiz['bobot_pakar'] ?>">Ya</button>
                <?= $btn_ragu ?>
                <button class="btn btn-success btn_no" data-nilai="0">Tidak</button>
              </div>
            </div>
            <?php } ?>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- ./col -->
        <div class="col-md-6">
          <div class="box box-solid">
            <div class="box-header with-border">
              <i class="fa fa-text-width"></i>

              <h3 class="box-title">Hasil</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <p>Lead to emphasize importance</p>
              <p>disini hasil diagnosa</p>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- ./col -->
      </div>
      <!-- /.row -->
            <div class="row">
        <div class="col-md-6">
          <div class="box box-solid">
            <div class="box-header with-border">
              <i class="fa fa-text-width"></i>

              <h3 class="box-title">Histori Gejala</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="riwayat_pertanyaan">
    
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
      <!-- /.row -->