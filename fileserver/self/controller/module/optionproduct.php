<?php 
class ControllerModuleOptionproduct extends Controller{
	function index()
	{	
		if($this->request->get['mediaid'] != "" || $this->request->get['formtype']=='add')
		{
			$this->data['output'] = $this->loadModule('product/product');
		}
		else
		{
			$this->data['output'] = $this->loadModule('product/product');
		}
		
		$this->id='content';		
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function insert()
	{
		$this->data['output'] = $this->loadModule('product/product',"insert");
		$this->id='content';
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function update()
	{
		$this->data['output'] = $this->loadModule('product/product',"update");
		$this->id='content';
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}	
}
?>