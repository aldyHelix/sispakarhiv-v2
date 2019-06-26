<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
$(document).ready(function(){

  var data_jawaban_gejala = {};

  $.getJSON("<?= site_url() ?>/user/object_jawaban/", function(result){
    for (var key of result) {
      data_jawaban_gejala[key] = [];
    }
  });

  // var  = [];

  // var object_data_jawaban = {
  //   K01 : [], 
  //   K02 : [], 
  //   K03 : []
  // };

  // object_data_jawaban['K01'].push(1);
  // object_data_jawaban['K01'].push(2);
  console.log(data_jawaban_gejala);

  function get_jawaban(nilai_jawaban = 0, bobot_pakar = 0) {
    return nilai_jawaban * bobot_pakar;
  }
  
  $('body').on('click', '.btn_no', function(){
    var pertanyaan = $(this).parent('.pertanyaan');
    var pertanyaan_selanjutnya = pertanyaan.next();

    var nilai_jawaban = $(this).data('nilai');
    var bobot_pakar = pertanyaan.find('#bobot_pakar').val();
    var id_diagnosa = pertanyaan.find('#id_diagnosa').val();
    
    data_jawaban_gejala[id_diagnosa].push(get_jawaban(nilai_jawaban, bobot_pakar));
    console.log(data_jawaban_gejala);
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

  $('body').on('click', '.btn_yes , .btn_ragu', function(){
    var pertanyaan = $(this).parent('.pertanyaan');
    var pertanyaan_selanjutnya = pertanyaan.next();

    var nilai_jawaban = $(this).data('nilai');
    var bobot_pakar = pertanyaan.find('#bobot_pakar').val();
    var id_diagnosa = pertanyaan.find('#id_diagnosa').val();
    
    data_jawaban_gejala[id_diagnosa].push(get_jawaban(nilai_jawaban, bobot_pakar));
    console.log(data_jawaban_gejala);

    if (pertanyaan_selanjutnya.data('penting') == undefined) {
      pertanyaan.html('SELESAI');
    } else {
      pertanyaan.hide();
      pertanyaan_selanjutnya.show();
    }
  });

  $('body').on('click', '#btn_proses', function(){
    for (var key in data_jawaban_gejala) {
      console.log(data_jawaban_gejala[key]);

      var current = next = hasil = total = 0;
      for (var index in data_jawaban_gejala[key]) {
        
        current = parseInt(index);
        next = current + 1;

        console.log("current " + current + " = " + data_jawaban_gejala[key][current]);
        console.log("next " + next + " = " + data_jawaban_gejala[key][next]);

        hasil = parseFloat(data_jawaban_gejala[key][current]) + parseFloat(data_jawaban_gejala[key][next]) * (1 - parseFloat(data_jawaban_gejala[key][current]));

        console.log("hasil = " + hasil);

        total += hasil;
        console.log("total = " + hasil);

        next++;
      }
      // data_jawaban_gejala[key].forEach(function (jawaban) {
      //     console.log(jawaban.next);
      // });
      // console.log(total);
    }
  });
});
</script>