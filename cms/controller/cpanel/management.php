<?php
class ControllerCpanelManagement extends Controller
{

	
	function index()
	{	
		
		$this->data['items']=array(
		"manageruser"=>array(
								'name'=>"Quản trị người dùng",
								"link"=>"?route=core/user",
								"image"=>"admin.png"
								),
		"managerusergroup"=>array(
								'name'=>"Quản trị nhóm người dùng",
								"link"=>"?route=core/usertype",
								"image"=>"admin.png"
								)
		
		);
		
		$this->id="content";
		$this->template="cpanel/websitesetting.tpl";
		$this->render();
	}
	
	
	
	
	
}
?>