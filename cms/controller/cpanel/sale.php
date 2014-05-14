<?php
class ControllerCpanelSale extends Controller
{

	
	function index()
	{	
		
		$this->data['items']=array(
		"managerorder"=>array(
								'name'=>"Quản lý order",
								"link"=>"",
								"image"=>"sale.png"
								),
		"managercustomer"=>array(
								'name'=>"Danh sách khách hàng",
								"link"=>"",
								"image"=>"sale.png"
								),	
		"managercustomergroup"=>array(
								'name'=>"Nhóm khách hàng",
								"link"=>"",
								"image"=>"sale.png"
								),												
		"managerreport"=>array(
								'name'=>"Quản lý báo cáo bán hàng",
								"link"=>"",
								"image"=>"sale.png"
								),	
							
		
		);
		
		$this->id="content";
		$this->template="cpanel/websitesetting.tpl";
		$this->render();
	}
	
	
	
	
	
}
?>