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
        $data['list_pertanyaan'] = $this->mcrud->pull('view_pertanyaan_diagnosa')->result_array();
        $data['userinfo'] = $this->mauth->getSession();
        $this->load->view('template/head_user');
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar_user', $data);
        $this->load->view('pertanyaan', $data);
        $this->load->view('template/script-user');
    }

    public function pertanyaan()
    {
        $query = "SELECT diagnosa.nama_diagnosa, diagnosa.solusi_diagnosa, diagnosa.keterangan, gejala.* FROM gejala 
                        JOIN diagnosa on diagnosa.id_diagnosa = gejala.id_diagnosa
                        ORDER BY gejala.id_gejala";
    }
    public function object_jawaban() {
        $query_rule = "SELECT id_diagnosa FROM diagnosa";
        $data_rule = $this->db->query($query_rule)->result_array();
        $data = [];
        foreach ($data_rule as $value) {
            if(!in_array($value['id_diagnosa'], $data)){
                array_push($data, $value['id_diagnosa']);
            }
        }

        echo json_encode($data);
    }
}
?>