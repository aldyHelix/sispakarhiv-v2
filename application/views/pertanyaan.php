      <?php if ($this->session->flashdata('item')) : ?>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
      <script type="text/javascript">
            // halaman dilanjutkan dan kirim data ke controller kemudian input database
        $(document).ready(function(){
          var confirmation = confirm("Apakah anda ingin memulai sesi pertanyaan ini?");
            if (confirmation) {
              $.ajax({
                url : "<?php echo base_url(); ?>/user/addSesiPertanyaan", 
                type: "POST", 
                data: { id_pasien : <?= $userinfo['login_idpasien'] ?> },
                  success: function(data) { 
                    console.log('sukses kirim data');
                    }
                });
              }

            selesai();

          });

          function selesai() {
              setTimeout(function() {
                update();
                selesai();
              }, 1000); //interval update setiap 1 detik
            }

          function update() {
            $.ajax({
              url : "<?php echo base_url(); ?>/user/getListPertanyaan/<?= $sesi_pertanyaan['konsultasi_id'] ?>",
              type: 'POST',
              dataType:'JSON',
                success: function(data){
                  $("#histori").empty();
                  $.each(data, function(){
                    if (this['bobot_user'] == 1) {
                      var jawaban = "Ya";
                    } else if (this['bobot_user'] == 0) {
                      var jawaban = "Tidak";
                    } else {
                      var jawaban = "Ragu - Ragu";
                    }

                    $("#histori").append( "<li>" + this['nama_gejala'] + " "+jawaban+"</li>");
                    //console.log(this['nama_gejala']);
                  });   
                }
            });
          }
      </script>
      <?php endif; ?>    
      <div class="row" id="sesipertanyaan">
        <div class="col-md-6">
          <div class="box box-solid">
            <div class="box-header with-border">
              <i class="fa fa-text-width"></i>

              <h3 class="box-title">Konsultasi</h3>
            </div>

            <div class="box-body">
              <?php if ($sesi_pertanyaan['konsultasi_is'] == true) {
              echo "Sesi Pertanyaan Aktif, Jawaban anda akan disimpan pada sistem kami.";
            } else {
              echo "Sesi Pertanyaan Tidak Aktif! Jawaban anda tidak disimpan, Silahkan Hubungi Admin!";
            }?>

              <?= $list_pertanyaan ?>
            </div>
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
            <div class="box-body histori">
              <ul id="histori"></ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
      <!-- /.row -->