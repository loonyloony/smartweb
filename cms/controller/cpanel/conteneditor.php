<?php
class ControllerCpanelConteneditor extends Controller
{

	
	function index()
	{	
		
		$this->data['items']=array(
		"managernews"=>array(
								'name'=>"Quản lý tin tức",
								"link"=>"?route=module/news",
								"image"=>"content.png"
								),
		"managerproduct"=>array(
								'name'=>"Quản lý sản phẩm",
								"link"=>"",
								"image"=>"content.png"
								),	
		"managerimage"=>array(
								'name'=>"Quản lý hình ảnh",
								"link"=>"?route=module/galleryalbum",
								"image"=>"content.png"
								),												
		"managervideo"=>array(
								'name'=>"Quản lý video clipse",
								"link"=>"?route=module/videoclipsealbum",
								"image"=>"content.png"
								),	
		"managerfile"=>array(
								'name'=>"Quản lý file",
								"link"=>"?route=module/downloadalbum",
								"image"=>"content.png"
								),								
		
		);
		
		$this->id="content";
		$this->template="cpanel/websitesetting.tpl";
		$this->render();
	}
	
	
	
	
	
}
?>