<?php 
	echo "<br>";
	echo "array :";
	print_r($bu);
	echo "<br>";
	echo "array :";
	print_r($bp);
	echo "<br>";
	echo "List :";
	//print_r($hasilDiagnosa);
	echo "<br>";
	echo "Hasil : ";
	print_r($bobotHasil);
	echo "%";
	echo "<br>";
	echo "Hasil CF : ";
	//print_r($hasilbobot);
	echo "%";
	$coba = array('0.6', '0' , '0.4', '0.6');
	print_r($coba);
	echo "<br>";
	foreach ($bp as $key => $m) {
		print_r($m);
		echo "%";
		echo "<br>";
	}
	foreach ($bu as $index => $i) {
    $bp = array();
    foreach ($i as $j) {
      print_r($j['bobot_hasil']);
      echo ",";
      echo "<br>";
      //print_r($arraybu);
      //echo "<br>";
      $bp[] = $j['bobot_hasil'];
    }
    echo "Hasil array : ";
    print_r($bp);
    echo "<br>";  
        //print_r($index);
    //echo "==============";
        //echo "<br>";
    }

 ?>
 <input id="ex0" class="slider col-md-6" type="text" data-slider-min="0.1" data-slider-max="0.9" data-slider-step="0.1" data-slider-value="0.5"></input>
 <input id="ex1" class="slider col-md-6" type="text" data-slider-min="0.1" data-slider-max="0.9" data-slider-step="0.1" data-slider-value="0.5"></input>
 <input id="ex2" class="slider col-md-6" type="text" data-slider-min="0.1" data-slider-max="0.9" data-slider-step="0.1" data-slider-value="0.5"></input>
 <input id="ex3" class="slider col-md-6" type="text" data-slider-min="0.1" data-slider-max="0.9" data-slider-step="0.1" data-slider-value="0.5"></input>
