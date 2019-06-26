<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller
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
	public function index()
	{
		$data['userinfo'] = $this->mauth->getSession();
		$this->load->view('template/head_admin');
		$this->load->view('template/header', $data);
		$this->load->view('template/sidebar_admin', $data);
		$this->load->view('testpage', $data);
		$this->load->view('template/script');
	}
 	public function diagnosa()
 	{
 		$data['userinfo'] = $this->mauth->getSession();
 		$data['diagnosa'] = $this->mcrud->pull('diagnosa')->result_array();
 		$this->load->view('template/head_admin');
		$this->load->view('template/header', $data);
		$this->load->view('template/sidebar_admin', $data);
		$this->load->view('admin_diagnosa', $data);
		$this->load->view('template/script');
 	}
}
?>