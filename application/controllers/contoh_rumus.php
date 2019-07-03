<?php 
class Cari_cf {
  $array_mb = array('0.4','0.2','0.5'); // nilai mb
  $array_md = array('0.2','0.1','0.3'); // nilai md

  $cari  = new Cari_cf(); // nama class dari file Cari_cf.php
  $hasil = $cari->hitung($array_mb, $array_md); // menghitung nilai CF dengan fungsi hitung
  print_r($hasil); // munculkan hasil

    function hitung($array_mb, $array_md) {
      $cari = new Cari_cf();
      $hasil_mb = $cari->convert_cf($array_mb);
      $hasil_md = $cari->convert_cf($array_md);

      $result = ($hasil_mb - $hasil_md) * 100; //covert ke persen
      return $result;
    }

    function convert_cf($g) {
      $cari = new Cari_cf();
        if(count($g) <= 1)
      return $g[0];

     $cfIJ = null;
     $n = count($g);
       for($i = 0; $i < $n - 1; $i++) {
        $j = $i + 1;
          if($cfIJ == null)
           $cfIJ = $g[$i];

          $cfIJ = $cari->hitung_mb_md($cfIJ, $g[$j]);
       }
     return $cfIJ;
    }

    function hitung_mb_md($x, $y) {
      $hasil = $x + $y * (1 - $x);
      return $hasil;
    }
}
        $id_diagnosa = 'K01';
        $id_konsultasi = '34';
        $getBobotHasil = $this->mcrud->pull_select(array('bobot_user', 'bobot_pakar'), 'view_hasil', array('id_konsultasi' => $id_konsultasi, 'id_diagnosa' => $id_diagnosa))->result_array();
        foreach ($getBobotHasil as $key) {
            $arraybu[] = $key['bobot_user'];
            $arraybp[] = $key['bobot_pakar'];
        }
 ?>
