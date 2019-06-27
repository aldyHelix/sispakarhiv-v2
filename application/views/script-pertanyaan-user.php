<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $('.box-body').on('click', '.btn_no', function(){
    var pertanyaan = $(this).parent('.pertanyaan');
    var pertanyaan_selanjutnya = pertanyaan.next();

    var nilai_jawaban = $(this).data('nilai');
    var bobot_pakar = pertanyaan.find('#bobot_pakar').val();
    var id_diagnosa = pertanyaan.find('#id_diagnosa').val();
    
    console.log(pertanyaan_selanjutnya.data('penting'));
    // data_jawaban_gejala.push(data[id_diagnosa]);
    

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
          }
        }
        while (pertanyaan_selanjutnya.data('penting') == 0);
        
      }
    } else {
      pertanyaan.hide();
      pertanyaan_selanjutnya.show();
    }

  });

  $('.box-body').on('click', '.btn_yes , .btn_ragu', function(){
    var pertanyaan = $(this).parent('.pertanyaan');
    var pertanyaan_selanjutnya = pertanyaan.next();

    var nilai_jawaban = $(this).data('nilai');
    var bobot_pakar = pertanyaan.find('#bobot_pakar').val();
    var id_diagnosa = pertanyaan.find('#id_diagnosa').val();

    if (pertanyaan_selanjutnya.data('penting') == undefined) {
      pertanyaan.html('SELESAI');
    } else {
      pertanyaan.hide();
      pertanyaan_selanjutnya.show();
    }
  });
});
</script>