<?php
	class ControllerModuleLogin extends Controller
	{
		public function index()
		{	
			$this->id="login";
			if(SKINID == "hatomex" || SKINID == "fanhanghieu")
			{
				$this->template="module/cart_login.tpl";
			} else {
				$this->template="module/login.tpl";	
			}
			
			if(SKINID == 'singapore') {
				if($this->member->getEmail() != "") {
					$this->redirect("profile.html");
				}
			}
			
			$this->render();
		}
	}
?>