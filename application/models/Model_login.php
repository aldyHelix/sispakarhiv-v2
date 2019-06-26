<?php 
/**
* 
*/
class Model_login extends CI_Model
    {    
    function check_login($uname, $upass)
    {
		$check = $this->mcrud->pull('user', array('username' => trim(strtolower($uname))));
		$id = $check->row()->id;
		$userinfo = $this->mcrud->pull('pasien', array('id_user' => strval($id)));
		if ($check->num_rows() > 0) {
			if (checkPassword($upass, $check->row()->password)) {
				$sess = array(
					'login_iduser' => $check->row()->id,
					'login_idpasien' => $userinfo->row()->id, 
					'login_username' => $check->row()->username,
					'login_email' => $check->row()->email,
					'login_nama_pasien' => $userinfo->row()->nama_pasien,
					'login_hak_akses' => $check->row()->hak_akses,
					'login_is' => true);
				$this->session->set_userdata('sess_user', $sess);
				return true;
			} 
		}
		return false;
	}
	function getSession()
	{
		return $this->session->sess_user;
	}
	function islogin()
	{
		$sess = $this->getSession();
		if (!empty($sess) && $sess['login_is'] == true && !empty($sess['login_iduser']))
			return true;
		else
			return false;
	}
	function permission($data)
	{
		$sess = $this->session->userdata('sess_user');
		$return = false;
		if (!empty($sess) && $sess['login_is'] == true && !empty($sess['login_iduser'])) {
			foreach ($data as $arr) {
				if ($arr == $sess['login_hak_akses']) {
					$return = true;
				}
			}
		}
		return $return;
	}
    }
?>