<?php       
class ControllerCommonLogout extends Controller {   
	public function index() { 
    	$this->user->logout();
		$this->redirect(HTTP_SERVER.'elife'.$_SESSION['token']);
  	}
}  
?>