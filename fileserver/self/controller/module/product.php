<?php
class ControllerModuleProduct extends Controller
{
	function index()
	{	
		if($this->request->get['mediaid'] != "" || $this->request->get['formtype']=='add')
		{
			$this->data['output'] = $this->loadModule('core/product');
		}
		else
		{
			$this->data['output'] = $this->loadModule('core/product');
		}
		
		$this->id='content';		
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function insert()
	{
		$this->data['output'] = $this->loadModule('core/product',"insert");
		$this->id='content';
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function update()
	{
		$this->data['output'] = $this->loadModule('core/product',"update");
		$this->id='content';
		$this->template='common/output.tpl';
		$this->layout='layout/center';
		$this->render();
	}
		
}
?>