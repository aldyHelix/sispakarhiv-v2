<?php 
$g = array(1,2,3,4,5);
//print_r($n);
echo "<br>";
//$g[1] = 0;

print_r($g);
echo "<br>";
$cfIJ = null;
     $n = count($g);
     print_r($n);
     echo "<br>";
       for($i = 0; $i < $n - 1; $i++) {
       	print_r($i);
       	echo "- <br>";
        $j = $i + 1;
        //
          if($cfIJ == null){
           $cfIJ = $g[$i];
	            print_r("hitung disini");
	       		echo "<br>";
	       		print_r($cfIJ);
	       		echo "<br>";
	       		print_r($g[$j]);
	       		echo "<br>";
       		}
       	//
          $cfIJ = $cfIJ + $g[$j];
          print_r($cfIJ);
          echo "Hasil <br>";
       }
echo "==================================";
echo "<br>";
$cf = null;
       for($a = 3; $a < $n - 1; $a++) {
       	print_r($a);
       	echo "- <br>";
        $b = $a + 1;
        //
          if($cf == null){
           $cf = $g[$a];
	            print_r("hitung disini");
	       		echo "<br>";
	       		print_r($cf);
	       		echo "<br>";
	       		print_r($g[$b]);
	       		echo "<br>";
       		}
       	//
          $cf = $cf + $g[$b];
          print_r($cf);
          echo "Hasil <br>";
       }

 ?>
