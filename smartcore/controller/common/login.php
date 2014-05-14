<?php 
class ControllerCommonLogin extends Controller
{
	public function index()
	{
		$is_ajax = $this->request->post['is_ajax'];
		if(isset($is_ajax) && $is_ajax)
		{
			$email = $this->request->post['email'];	
			$password = $this->request->post['password'];
			
			if($this->member->login(@$this->request->post['email'], @$this->request->post['password'], @$this->request->post['siteid']))
			{

				if($this->request->post['cookie'] == 1){
					setcookie("token", md5($this->session->data['customerid']),time() + 3600);
					//setcookie("password", $this->request->post['password'], time() + 3600);
				}
				$this->data['output'] = "true";
			}
		}
		
		$this->template = "common/output.tpl";
		$this->render();
	}
	
	public function logout()
	{
		unset($_COOKIE['token']);
		setcookie('token', null, 1);
		setcookie('token', null, 1,'/');
		$_SESSION['token'] = '';
		setcookie("password", '', 1);
		setcookie("password", '', 1,'/');
		
		$this->member->logout();
		
		if(SKINID == 'singapore') {
			$this->logoutFacebook();
		}
		
		$this->data['output'] = "true";
		$this->template = "common/output.tpl";
		$this->render();
	}
	
	public function logoutFacebook() {
		require_once(DIR_SYSTEM . 'library/facebooksdk/facebook.php');
		if(SKINID == 'singapore') {
			$facebook = new Facebook(array(
			  'appId'  => '402431456526786',
			  'secret' => 'e8225c835ac331792ca718fcbaf682dd',
			));
		}
		$facebook->destroySession();
	}
}
?>