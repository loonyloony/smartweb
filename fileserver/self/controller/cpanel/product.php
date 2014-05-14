<?php
class ControllerCpanelProduct extends Controller
{

	
	function index()
	{	
		
		$this->data['items']=array(
		"managerproduct"=>array(
								'name'=>"Quản lý sản phẩm",
								"link"=>"?route=product/product",
								"image"=>"product.png"
								),
		"managercatalogproduct"=>array(
								'name'=>"Quản lý danh mục sản phẩm",
								"link"=>"",
								"image"=>"product.png"
								),	
		"manageroption"=>array(
								'name'=>"Quản lý tùy chọn sản phẩm",
								"link"=>"?route=product/option",
								"image"=>"product.png"
								),												
		"managermanufacture"=>array(
								'name'=>"Quản lý nhà sản xuất",
								"link"=>"?route=product/manufacturer",
								"image"=>"product.png"
								),	
							
		
		);
		
		$this->id="content";
		$this->template="cpanel/websitesetting.tpl";
		$this->render();
	}
	
	
	
	
	
}
?>