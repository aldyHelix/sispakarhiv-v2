<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller
{
	private $sess;
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        if (!$this->mauth->islogin()) {
            redirect('login');
        }
        if (!$this->mauth->permission(array('2'))) die('you dont have permission to this page');
        $this->sess = $this->mauth->getSession();

        $this->load->model('model_konsultasi');
	}
    public function index()
    {
        
        $id_konsultasi = '36';
        $getDiagnosa = $this->mcrud->pull('diagnosa');
        $listDiagnosa = $getDiagnosa->result_array();
        $countDiagnosa = $getDiagnosa->num_rows();
        foreach ($listDiagnosa as $key => $hasil) {
            $getHasil = $this->mcrud->pull_select(array('bobot_hasil'), 'view_hasil_bobot', array('id_konsultasi' => $id_konsultasi, 'id_diagnosa' => $hasil['id_diagnosa']));
            $getBobotHasil = $getHasil->result_array();
                $arraybu[] = $getBobotHasil;
        }
        foreach ($arraybu as $index => $i) {
            $bp = array();
                foreach ($i as $j) {
                    $bp[] = $j['bobot_hasil'];
                }
            $hasilbp[] = $this->convert_cf($bp)*100;
        }
        //md = user
        //mb = pakar
        $coba = array('0.6', '0' , '0.4', '0.6');
        $data_rule = $this->mcrud->pull('view_pertanyaan_diagnosa')->result_array();
        $data['bu'] = $arraybu;
        $data['bp'] = $hasilbp;
        $data['totDiagnosa'] = $countDiagnosa;
        $data['bobotHasil'] = $getBobotHasil;
        //$data['cfbu'] = $this->convert_cf($arraybu) * 100;
        //$data['coba'] = $this->convert_cf($coba) * 100;
        $data['userinfo'] = $this->mauth->getSession();
        $data['data_rule'] = $data_rule;
        $this->load->view('template/head_user');
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar_user', $data);
        $this->load->view('testpage', $data);
        $this->load->view('template/script-user');
    }
    function convert_cf($g) {
        if(count($g) < 1){
           return $g[1] = 0; 
        }
      
     $cfIJ = null;
     $n = count($g);
       for($i = 0; $i < $n - 1; $i++) {
        $j = $i + 1;
          if($cfIJ == null)
           $cfIJ = $g[$i];

          $cfIJ = $this->hitung_mb_md($cfIJ, $g[$j]);
       }
     return $cfIJ;
    }

    function hitung_mb_md(float $x, float $y) {
      $hasil = $x + $y * (1 - $x);
      return $hasil;
    }
    public function konsultasi()
    {
        $this->session->set_flashdata('item','item-value');
        $sesiKonsultasi = $this->mcrud->pull_order('konsultasi', 'waktu_konsultasi desc')->row_array();
            if (!empty($sesiKonsultasi)) {
                $sessKonsultasi = array(
                    'konsultasi_id' => $sesiKonsultasi['id_konsultasi'],
                    'konsultasi_is' => true
                );
            $this->session->set_userdata('sess_konsul', $sessKonsultasi);
            }

        $data_rule = $this->mcrud->pull('view_pertanyaan_diagnosa')->result_array();
        //$data_rule = $this->mcrud->pull('view_pertanyaan_diagnosa')->num_rows();
        ob_start();
        foreach ($data_rule as $key_data_rule => $value_data_rule) {
            $display = ($key_data_rule == 0) ? '' : 'style="display:none;"';
            $penting = ($value_data_rule['penting'] == 1) ? 'penting' : '';
            ?>
            <div id="pertanyaan" class="pertanyaan <?= $penting ?>" data-penting="<?= $value_data_rule['penting'] ?>" data-konsultasi="<?= $sesiKonsultasi['id_konsultasi']?>" <?= $display ?>>
                <input type="hidden" id="id_gejala" value="<?= $value_data_rule['id_gejala'] ?>" >
                <input type="hidden" id="key" value="#ex<?= $key_data_rule ?>" >
                <input type="hidden" id="bobot_pakar" value="<?= $value_data_rule['bobot_pakar'] ?>" >

                <p>Jawablah pertanyaan berikut dari diagnosa (<?= $value_data_rule['nama_diagnosa'] ?>) ini:</p>

                <hr>
                <p><?= $value_data_rule['nama_gejala'] ?></p>
                <div class="row">
                    <div class="col-sm-3">
                            <button class="btn btn-success btn_yes" data-nilai="1">Ya</button>
                            <button class="btn btn-success btn_no" data-nilai="0">Tidak</button>
                        </div>
                        <?php if ($value_data_rule['penting'] != 1) : ?>
                            <div class="col-sm-6">
                                <p>Jika anda Ragu - Ragu dengan Gejala anda :</p>
                                <input id="ex<?= $key_data_rule ?>" class="slider" type="text" data-slider-min="0.1" data-slider-max="0.9" data-slider-step="0.1" data-slider-value="0.5"></input> 
                            </div>
                            <div class="col-sm-3">
                                <button class="btn btn-warning btn_ragu">Ragu-Ragu</button>
                            </div>                             
                        <?php endif; ?>
                </div>       
            </div>
            <?php
        }
        $list_pertanyaan = ob_get_contents();
        ob_end_clean();

        $getDiagnosa = $this->mcrud->pull('diagnosa');
        $listDiagnosa = $getDiagnosa->result_array();
        $data['data_rule'] = $data_rule;
        $data['list_pertanyaan'] = $list_pertanyaan;
        $data['userinfo'] = $this->mauth->getSession();
        $data['sesi_pertanyaan'] = $this->session->sess_konsul;

        $data['diagnosa'] = $listDiagnosa;
        $this->load->view('template/head_user');
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar_user', $data);
        $this->load->view('pertanyaan', $data);
        $this->load->view('template/script-user');
    }

    public function pertanyaan()
    {
        //fungsi ini tidak digunakan sama sekali
        $query = "SELECT diagnosa.nama_diagnosa, diagnosa.solusi_diagnosa, diagnosa.keterangan, gejala.* FROM gejala 
                        JOIN diagnosa on diagnosa.id_diagnosa = gejala.id_diagnosa
                        ORDER BY gejala.id_gejala";
        //query hasil hanya contoh untuk MYSQL
        $q = "SELECT pasien.id, pasien.id_user,dtl_konsultasi.id_konsultasi, diagnosa.nama_diagnosa , gejala.nama_gejala, gejala.bobot_pakar, dtl_konsultasi.bobot_user, pasien.nama_pasien FROM dtl_konsultasi
                JOIN konsultasi on konsultasi.id_konsultasi = dtl_konsultasi.id_konsultasi
                JOIN gejala on gejala.id_gejala = dtl_konsultasi.id_gejala
                JOIN diagnosa on diagnosa.id_diagnosa = gejala.id_diagnosa
                JOIN pasien on pasien.id = konsultasi.id_pasien";
    }

    public function object_jawaban() {
        $data_rule = $this->mcrud->pull_select('id_diagnosa', 'diagnosa')->result_array();
        $data = [];
        foreach ($data_rule as $value) {
            if(!in_array($value['id_diagnosa'], $data)){
                array_push($data, $value['id_diagnosa']);
            }
        }

        echo json_encode($data);
    }

    public function addSesiPertanyaan()
    {
        $id_pasien = $this->input->post('id_pasien');
        if(!empty($id_pasien)){
            $res = $this->mcrud->add('konsultasi', array('id_pasien' => $id_pasien ));

            echo json_encode($res);
        }
    }

    public function detailKonsultasi()
    {
        $id_gejala = $this->input->post('id_gejala');
        $id_konsultasi = $this->input->post('id_konsultasi');
        $bobot_user = $this->input->post('bobot_user');

        if (!empty($id_gejala) || !empty($id_konsultasi)) {
            $this->mcrud->add('dtl_konsultasi', array('id_gejala' => $id_gejala, 'id_konsultasi' => $id_konsultasi, 'bobot_user' => $bobot_user));
        }
    }
    public function getListPertanyaan($id_konsultasi)
    {
        if (!empty($id_konsultasi)) {
            $res = $this->mcrud->pull('view_hasil_pertanyaan', array('id_konsultasi' => $id_konsultasi ))->result();
        }

        echo json_encode($res);
    }
    public function hitungCF($id_konsultasi)
    {
        //$id_konsultasi = $this->input->post('id_konsultasi');
        $getDiagnosa = $this->mcrud->pull('diagnosa');
        $listDiagnosa = $getDiagnosa->result_array();
        $countDiagnosa = $getDiagnosa->num_rows();
        foreach ($listDiagnosa as $key => $hasil) {
            $getHasil = $this->mcrud->pull_select(array('bobot_hasil'), 'view_hasil_bobot', array('id_konsultasi' => $id_konsultasi, 'id_diagnosa' => $hasil['id_diagnosa']));
            $getBobotHasil = $getHasil->result_array();
                $arraybu[] = $getBobotHasil;
        }
        foreach ($arraybu as $index => $i) {
            $bp = array();
                foreach ($i as $j) {
                    $bp[] = $j['bobot_hasil'];
                }
            $hasilbp[] = $this->convert_cf($bp)*100;
        }

        echo json_encode($hasilbp);
    }
}
?>