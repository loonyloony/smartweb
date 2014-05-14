<?php
class ControllerCpanelAddon extends Controller
{

	
	function index()
	{	
		
		$this->data['items']=array(
		"manageraddon"=>array(
								'name'=>"Quản lý addon",
								"link"=>"?route=core/addon",
								"image"=>"addon.png"
								)
							
		
		);
		
		$this->id="content";
		$this->template="cpanel/websitesetting.tpl";
		$this->render();
	}
	
	
	
	
	
}
?>