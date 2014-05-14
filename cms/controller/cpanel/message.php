<?php
class ControllerCpanelMessage extends Controller
{

	
	function index()
	{	
		
		$this->data['items']=array(
		"managerinbox"=>array(
								'name'=>"Quản lý hộp thư đến",
								"link"=>"?route=core/message&folder=inbox",
								"image"=>"mail.png"
								),
		"managersentitem"=>array(
								'name'=>"Quản lý thư đã gửi",
								"link"=>"?route=core/message&folder=send",
								"image"=>"mail.png"
								)
		
		);
		
		$this->id="content";
		$this->template="cpanel/websitesetting.tpl";
		$this->render();
	}
	
	
	
	
	
}
?>