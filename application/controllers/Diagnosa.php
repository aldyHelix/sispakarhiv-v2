<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Diagnosa extends CI_Controller
{
	private $sess;
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        if (!$this->mauth->islogin()) {
            redirect('login');
        }
        if (!$this->mauth->permission(array('0'))) die('you dont have permission to this page');
        $this->sess = $this->mauth->getSession();
	}
 	public function add_diagnosa()
 	{
 		$id_diagnosa = $this->input->post('id_diagnosa');
 		$nama_diagnosa = $this->input->post('nama_diagnosa');
 		$solusi_diagnosa = $this->input->post('solusi_diagnosa');
 		$keterangan = $this->input->post('keterangan');
 		$checkid = $this->mcrud->check('diagnosa', array('id_diagnosa' => $id_diagnosa));
 		if ($checkid == 0) {
 			$data = array(
 				'id_diagnosa' => $id_diagnosa,
 				'nama_diagnosa' => $nama_diagnosa,
 				'solusi_diagnosa' => $solusi_diagnosa,
 				'keterangan' => $keterangan
 			);

 			if ($this->mcrud->add('diagnosa', $data)) {
 				$this->session->set_flashdata('success', 'Berhasil disimpan');
 				redirect('admin/diagnosa');
 			}
 		} else {
 			$this->session->set_flashdata('gagal', 'ID tidak valid');
 			redirect('admin/diagnosa');
 		}

 	}
 	public function update_diagnosa()
 	{
 		$id_diagnosa = $this->input->post('id_diagnosa');
 		$nama_diagnosa = $this->input->post('nama_diagnosa');
 		$solusi_diagnosa = $this->input->post('solusi_diagnosa');
 		$keterangan = $this->input->post('keterangan');
 		$checkid = $this->mcrud->check('diagnosa', array('id_diagnosa' => $id_diagnosa));
 		if ($checkid == 1) {
 			$data = array(
 				'id_diagnosa' => $id_diagnosa,
 				'nama_diagnosa' => $nama_diagnosa,
 				'solusi_diagnosa' => $solusi_diagnosa,
 				'keterangan' => $keterangan
 			);

 			if ($this->mcrud->edit('diagnosa', $data, array('id_diagnosa' => $id_diagnosa ))) {
 				$this->session->set_flashdata('success', 'Berhasil diperbarui');
 				redirect('admin/diagnosa');
 			}
 		} else {
 			$this->session->set_flashdata('gagal', 'ID tidak valid');
 			redirect('admin/diagnosa');
 		}	
 	}
 	public function delete_diagnosa($id)
 	{
 		$this->mcrud->remove('diagnosa', array('id_diagnosa' => $id));
 		$this->session->set_flashdata('success', 'Data Berhasil Dihapus');
 			redirect('admin/diagnosa');
 	}
}
?>