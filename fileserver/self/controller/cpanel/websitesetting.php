<?php
class ControllerCpanelWebsitesetting extends Controller
{

	
	function index()
	{	
		
		$this->data['items']=array(
		"managerwebsite"=>array(
								'name'=>"Quản lý Website",
								"link"=>"",
								"image"=>"setting.png"
								),
		"managersitemap"=>array(
								'name'=>"Quản lý Sitemap",
								"link"=>"",
								"image"=>"setting.png"
								),	
		"managercurency"=>array(
								'name'=>"Cài đặt tỷ giá",
								"link"=>"",
								"image"=>"setting.png"
								),												
			
		
		);
		
		$this->id="content";
		$this->template="cpanel/websitesetting.tpl";
		$this->render();
	}
	
	
	
	
	
}
?>