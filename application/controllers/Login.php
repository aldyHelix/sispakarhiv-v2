<?php 
/**
* 
*/
class Login extends CI_Controller
{
 
	function index()
	{
		$data = array(
			'alert' => $this->session->alert);
		$this->load->view('view_login', $data);
    }
    
    function aksi_login()
    {
      	$uname = $this->input->post('username');
		$upass = $this->input->post('password');

		if ($this->mauth->check_login($uname, $upass)) {
			$sess = $this->mauth->getSession();
			if ($sess['login_hak_akses'] == 0) {
				redirect('admin');
			}
			elseif ($sess['login_hak_akses'] == 1) {
				redirect('pakar');
			}
			else{
				redirect('user');
			}
		}
		else {
			$this->session->set_flashdata('alert', 'Gagal login, periksa username atau password Anda');
			redirect('login');
		}
	}
	public function signout()
	{
		$this->session->unset_userdata('sess_user');
		redirect('login');
	}
}

 ?>