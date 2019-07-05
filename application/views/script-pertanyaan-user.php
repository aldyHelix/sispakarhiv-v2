<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

  //ambil data perdetik untuk ditampilkan histori jawaban
  //hasil pengambilan data digunakan untuk menghitung hasil

  $('.box-body').on('click', '.btn_no', function(){
    var pertanyaan = $(this).parent('.pertanyaan');
    var pertanyaan_selanjutnya = pertanyaan.next();

    var bobot_user = $(this).data('nilai');
    var id_gejala = pertanyaan.find('#id_gejala').val();
    var id_konsultasi = pertanyaan.data('konsultasi');

    //ajax disini jika telah di klik input kirim data ke controller untuk dilakukan input
    $.ajax({
          url : "<?php echo base_url(); ?>user/detailKonsultasi", 
          type: "POST", 
          data: { id_konsultasi : id_konsultasi, id_gejala : id_gejala, bobot_user : bobot_user },
            success: function(data) { 
          console.log('sukses kirim data');
        }
      });
    // untuk mengecek kondisi apakah pertanyaan yang di jawab penting atau tidak
    // 1. jika PENTING maka pertanyaan selanjutnya yang muncul adalah pertanyaan yang HARUS PENTING JUGA
    // 2. jika TIDAK PENTING maka hanya menampilkan pertanyaan selanjutnya
    if (pertanyaan.hasClass('penting')) {

      if (pertanyaan_selanjutnya.hasClass('penting')) {
        pertanyaan.hide();
        pertanyaan_selanjutnya.show();
      } else {
        
        // perulanggan ini digunakan jika pertanyaan selanjutnya tidak penting maka akan mencari terus sampai menemukan pertanyaan penting lagi
        do {
          pertanyaan_selanjutnya = pertanyaan_selanjutnya.next();
          if (pertanyaan_selanjutnya.hasClass('penting')) {
            pertanyaan.hide();
            pertanyaan_selanjutnya.show();
          } else if (pertanyaan_selanjutnya.data('penting') == undefined) {
            pertanyaan.html('SELESAI');
            <?php $this->session->unset_userdata('sess_konsul'); ?>
          }
        }
        while (pertanyaan_selanjutnya.data('penting') == 0);
        
      }
    } else {
      pertanyaan.hide();
      pertanyaan_selanjutnya.show();
    }

  });
  $('.box-body').on('click', '.btn_ragu', function(){
    var pertanyaan = $(this).parent('.pertanyaan');
    var pertanyaan_selanjutnya = pertanyaan.next();
    var bobot_user = pertanyaan.find('.slider').val();
    var id_gejala = pertanyaan.find('#id_gejala').val();
    var id_konsultasi = pertanyaan.data('konsultasi');

    //console.log(bobot_user);
    $.ajax({
          url : "<?php echo base_url(); ?>user/detailKonsultasi", 
          type: "POST", 
          data: { id_konsultasi : id_konsultasi, id_gejala : id_gejala, bobot_user : bobot_user },
            success: function(data) { 
          console.log('sukses kirim data');
        }
      });
    
    if (pertanyaan_selanjutnya.data('penting') == undefined) {
      pertanyaan.html('SELESAI');
      <?php $this->session->unset_userdata('sess_konsul'); ?>
    } else {
      pertanyaan.hide();
      pertanyaan_selanjutnya.show();
    }
  });

  $('.box-body').on('click', '.btn_yes', function(){
    var pertanyaan = $(this).parent('.pertanyaan');
    var pertanyaan_selanjutnya = pertanyaan.next();

    var bobot_user = $(this).data('nilai');
    var id_gejala = pertanyaan.find('#id_gejala').val();
    var id_konsultasi = pertanyaan.data('konsultasi');

    $.ajax({
          url : "<?php echo base_url(); ?>user/detailKonsultasi", 
          type: "POST", 
          data: { id_konsultasi : id_konsultasi, id_gejala : id_gejala, bobot_user : bobot_user },
            success: function(data) { 
          console.log('sukses kirim data');
        }
      });
    
    if (pertanyaan_selanjutnya.data('penting') == undefined) {
      pertanyaan.html('SELESAI');
      <?php $this->session->unset_userdata('sess_konsul'); ?>
    } else {
      pertanyaan.hide();
      pertanyaan_selanjutnya.show();
    }
  });
});
</script>