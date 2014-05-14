<?php
class ControllerCpanelSupport extends Controller
{

	
	function index()
	{	
		
		$this->data['items']=array(
		"managersupport"=>array(
								'name'=>"Quản lý support ",
								"link"=>"?route=core/addon",
								"image"=>"help.png"
								)
							
		
		);
		
		$this->id="content";
		$this->template="cpanel/websitesetting.tpl";
		$this->render();
	}
	
	
	
	
	
}
?>