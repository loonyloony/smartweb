<?php
class ControllerModulePropertyProduct extends Controller
{
	function index()
	{	
		$this->data['output'] = $this->loadModule('property/product');
		$this->id='content';		
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function insert()
	{
		$this->data['output'] = $this->loadModule('property/product',"insert");
		$this->id='content';
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function update()
	{
		$this->data['output'] = $this->loadModule('property/product',"update");
		$this->id='content';
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	/*
	public function publish()
	{
		$data = $this->request->post;
		$id = $data['productid'];
		$status = $data['status'];
		$this->load->model("core/product");
		$this->model_core_product->updateStatus($id,$status);
		$this->data['output'] = "true";
		$this->template = "common/output.tpl";
		$this->render();
	}
	*/
	
}
?>