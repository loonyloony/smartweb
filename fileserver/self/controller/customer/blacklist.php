<?php 
class ControllerCustomerBlacklist extends Controller{
	
	private $error = array();
		
	public function index(){
		$this->getList();
		
		$this->id='content';
		$this->layout='layout/center';
		$this->template="customer/blacklist.tpl";
		
		$this->render();	
	}
	
	private function getList(){
		$this->load->model("customer/blacklist");
		
		$this->data['blacklist_ip'] = $this->model_customer_blacklist->getList();
	}
	
	public function delete(){
		$this->load->model("customer/blacklist");
		
		$listid=$this->request->post['delete'];
		if(count($listid))
		{
			foreach($listid as $id)
			{
				$this->model_customer_blacklist->delete($id);	
			}
			$this->data['output'] = "true";
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	public function save(){
		$this->load->model("customer/blacklist");
		
		$ip = $this->request->post['ip'];
		
		if($this->validateForm($ip)){
			$this->model_customer_blacklist->insert($ip);
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
	
	private function validateForm($ip){
		$this->load->model("customer/blacklist");
		
		if(trim($ip) == ''){
			$this->error['ip'] = $this->language->get('warning_ip_address_null');
		} else {
			$where = " AND ip = '" . trim($ip) . "'";
			$arrayOfIp = $this->model_customer_blacklist->getList($where);
			if(count($arrayOfIp) > 0){
				$this->error['ip'] = $this->language->get('warning_ip_address_existed');	
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