<?php 
class ControllerCoreCurrency extends Controller{
	
	private $error = array();
	
	public function index(){
		$this->getList();
	}
	
	public function getList(){
		$this->data['heading_title'] = $this->language->get('currency_management_heading_title');
		
		$this->data['insert'] = $this->url->http('core/currency/insert');
		$this->data['delete'] = $this->url->http('core/currency/delete');
		
		$this->load->model("core/currency");
		
		$this->data['currency'] = $this->model_core_currency->getList();
		
		$this->id = "content";
		$this->template = "core/currency_list.tpl";
		$this->layout = "layout/center";
		
		$this->render();
	}
	
	public function insert(){
		$heading_title = $this->language->get('currency_insert_title');
		$this->getForm($heading_title);
	}
	
	public function update(){
		$heading_title = $this->language->get('currency_update_title');
		$this->getForm($heading_title);
	}
	
	public function delete(){
		$this->load->model("core/currency");
		
		$listid = $this->request->post['delete'];
		if(count($listid) > 0){
			foreach($listid as $id){
				$this->model_core_currency->delete($id);	
			}
		}
		
		$this->data['output'] = "true";
		
		$this->id='content';
		$this->template='common/output.tpl';
		
		$this->render();
	}
	
	public function getForm($heading_title){
		$this->data['heading_title'] = $heading_title;
		$this->load->model("core/currency");
		
		if($this->request->get['currencyid'] != ""){
			$this->data['currency'] = $this->model_core_currency->getItem($this->request->get['currencyid']);	
		}
		
		$this->id = "content";
		$this->template = "core/currency_form.tpl";
		$this->layout = "layout/center";
		
		$this->render();	
	}
	
	public function save(){
		$this->load->model("core/currency");
		$data = $this->request->post;
				
		if($this->validateForm($data)){
			if($data['currencyid'] == ""){
				$this->model_core_currency->insert($data);
			} else {
				$this->model_core_currency->update($data);
			}
			
			$this->data['output'] = "true";
		} else {
			foreach($this->error as $item){
				$this->data['output'] .= $item . "<br />";
			}
		}
		
		$this->id='content';
		$this->template='common/output.tpl';
		
		$this->render();			
	}
	
	private function validateForm($data){
		
		if($data['title'] == ""){
			$this->error['title'] = $this->language->get("warning_title_null");	
		} else {
			if($data['code'] == ""){
				$this->error['code'] = $this->language->get("warning_currency_code_null");	
			} else {
				if($data['value_currency'] == ""){
					$this->error['value_currency'] = $this->language->get("warning_value_currency_null");
				}	
			}
		}
		
		if(count($this->error) > 0){
			return false;	
		} else {
			return true;
		}
	}
}
?>