<?php 
class ControllerCustomerCustomer extends Controller{
	
	private $error = array();
	private $errpassword = array();
	
	public function index(){
		$this->getList();
	}
	
	public function getForm($label_heading_title){
		$this->data['label_heading_title'] = $label_heading_title;
		
		//load libraries
		$this->load->model("core/site");
		$this->load->model("core/language");
		$this->load->model("customer/customer");
		$this->load->model("common/control");
		$this->load->model("core/country");
		
		$this->data['cancel'] = $this->url->http('customer/customer');
		
		if($this->request->get['customerid'] != ""){
			$this->data['customer'] = $this->model_customer_customer->getItem($this->request->get['customerid']);
			//$this->data['address'] = $this->model_customer_customer->getAddressByCustomerid($this->request->get['customerid']);
		}
				
		//customer groups
		$arrayCustomerGroups = $this->model_customer_customer->getListByLanguageid($language_default['languageid']);	
		$this->data['customer_groups'] = $this->model_common_control->getDataCombobox($arrayCustomerGroups, "name", "customer_group_id", $this->data['customer']['customer_group_id']);
		
		//country
		$arrayCountry = $this->model_core_country->getCountrys();
		$this->data['country'] = $this->model_common_control->getDataCombobox($arrayCountry, "countryname", "countryid", $this->data['address']['countryid']);
		
		$this->id='content';
		$this->layout='layout/center';
		$this->template="customer/customer_form.tpl";
		
		$this->render();
	}
	
	public function getZone(){
		$this->load->model("customer/customer");
		$this->load->model("core/country");
		$this->load->model("common/control");
		
		$countryid = $this->request->get['countryid'];
		$customerid = $this->request->get['customerid'];
		
		$customer = $this->model_customer_customer->getItem($customerid);
		
		$where = " AND countryid = '" . $countryid . "'";
		$arrayOfZone = $this->model_core_country->getZones($where);
		
		$this->data['output'] = $this->model_common_control->getDataCombobox($arrayOfZone, "zonename", "zoneid", $customer['zoneid']);
		$this->template='common/output.tpl';

		$this->render();
	}
	
	public function getList(){
		$this->data['label_heading_title'] = $this->data['title_heading_customer'];
		
		//load libraries
		$this->load->model("customer/customer");
		$this->load->model("customer/customergroup");
		$this->load->model("core/language");
		
		$this->data['insert'] = $this->url->http('customer/customer/insert');
		$this->data['delete'] = $this->url->http('customer/customer/delete');
		
		$this->data['customers'] = array();
		$rows = $this->model_customer_customer->getList($where, 0, 0);
		
		//Page
		$page = $this->request->get['page'];		
		$x=$page;		
		$limit = 20;
		$total = count($rows); 
		// work out the pager values 
		$this->data['pager']  = $this->pager->pageLayout($total, $limit, $page); 
		
		$pager  = $this->pager->getPagerData($total, $limit, $page); 
		$offset = $pager->offset; 
		$limit  = $pager->limit; 
		$page   = $pager->page;
		
		for($i=$offset;$i < $offset + $limit && count($rows[$i])>0;$i++)
		//for($i=0; $i <= count($this->data['customer_groups'])-1 ; $i++)
		{
			$this->data['customers'][$i] = $rows[$i];
			$this->data['customers'][$i]['fullname'] = $this->data['customers'][$i]['firstname'] . " " . $this->data['customers'][$i]['lastname'];
			
			$this->data['customers'][$i]['link_edit'] = $this->url->http('customer/customer/update&customerid='.$this->data['customers'][$i]['customerid']);
		}
		
		$this->id='content';
		$this->layout='layout/center';
		$this->template="customer/customer_list.tpl";
		
		$this->render();
	}
	
	public function save(){
		
		$this->load->model("customer/customer");
		
		$data = $this->request->post;
		
		if($this->validateForm($data)){
			if($data['customerid'] == "") {
				$data['activecode'] = $this->string->generateRandStr(10);
				$this->model_customer_customer->insert($data);	
			} else {
				$this->model_customer_customer->update($data);				
			}
			
			$this->data['output'] = "true";
		} else {
			foreach($this->error as $item) {
				$this->data['output'] .= $item."<br>";
			}
		}
		$this->id='content';
		$this->template='common/output.tpl';
		$this->render();
			
	}
	
	private function validateForm($data){

		if (trim($data['email']) == "") {
			$this->error['email'] = $this->language->get('warning_null_email');
		} else {
			if($this->validation->_checkEmail($data['email']) == false ) {
      			$this->error['email'] = $this->language->get('warning_invalid_email');
			} else {
				
				if ($data['customerid'] == ""){
					$where = " AND email = '" . trim($data['email']) . "'";
					$customers = $this->model_customer_customer->getList($where, 0, 0);
					if(count($customers)){
						$this->error['email'] = $this->language->get('warning_email_customer_existed');
					} elseif (trim($data['email']) != trim($data['confirm_email'])){
						$this->error['email'] = $this->language->get('warning_email_customer_notmatch');
					} elseif (trim($data['password']) == "") {
						$this->error['password'] = $this->language->get('warning_customer_password_null');
					} elseif (trim($data['password']) != trim($data['confirm_password'])) {
						$this->error['password'] = $this->language->get('warning_customer_password_notmatch');
					} else {
						//nothing to do	
					}
				} else {					
					$where = " AND email = '" . trim($data['email']) . "' AND customerid <> '" . $data['customerid'] . "'";
					$customers = $this->model_customer_customer->getList($where, 0, 0);
					if(count($customers)){
						$this->error['email'] = $this->language->get('warning_email_customer_existed');
					}
				}
			}
    	}
		
/*		if(trim($data['customerid']) != ""){
			if($data['action'] == "update" && $data['changepassword'] == "changepassword"){
				if(trim($data['old_password']) == ""){
					$this->error['old_password'] = $this->language->get('warning_customer_old_password_null');	
				}else{
					$where = " AND password = '" . md5(trim($data['old_password'])) . "' AND customerid = '" . $data['customerid'] . "'";
					$customers = $this->model_customer_customer->getList($where, 0, 0);
					if(count($customers) == 0){
						$this->error['old_password'] = $this->language->get('warning_customer_old_password_incorrect');	
					}else{
						if(trim($data['password']) == ""){
							$this->error['new_password'] = $this->language->get('warning_customer_new_password_null');
						}
						
						if(trim($data['password']) != trim($data['confirm_password'])){
							$this->error['new_password'] = $this->language->get('warning_customer_new_password_notmatch');
						}	
					}
				}
			}	
		}
		
		if(trim($data['customerid']) == ""){
			if(trim($data['account']) == ""){
				$this->error['account'] = $this->language->get('warning_customer_account_null');	
			} elseif (strlen(trim($data['account'])) < 6 || strlen(trim($data['account'])) > 32){
				$this->error['account'] = $this->language->get('warning_customer_account_length');
			} else {
				$where = " AND account = '" . trim($data['account']) . "'";	
				$arrayOfCustomer = $this->model_customer_customer->getList($where, 0, 0);
				if(count($arrayOfCustomer) > 0){
					$this->error['account'] = $this->language->get('warning_customer_account_existed');	
				}else{
					if($data['action'] == "insert"){
						if(trim($data['password']) == ""){
							$this->error['password'] = $this->language->get('warning_customer_password_null');
						}
						
						if(trim($data['password']) != trim($data['confirm_password'])){
							$this->error['password'] = $this->language->get('warning_customer_password_notmatch');
						}
					}
				}	
			}
		}*/
		
		if(count($this->error) > 0){
			return false;	
		}else{
			return true;
		}
	}
	
	public function delete(){
		$this->load->model("customer/customer");
		$listid=$this->request->post['delete'];
		if(count($listid))
		{
			foreach($listid as $id)
			{
				$this->model_customer_customer->delete($id);	
			}
			$this->data['output'] = "true";
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	public function checkApproved(){
		$this->load->model("customer/customer");
		$data = $this->request->post;
		
		if(isset($data)){
			$this->model_customer_customer->checkApproved($data['customerid'], $data['approved']);
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	public function insert(){
		$label_heading_title = $this->data['title_heading_customer_insert'];
		$this->data['action'] = 'insert';
		$this->getForm($label_heading_title);
	}
	
	public function update(){
		$label_heading_title = $this->data['title_heading_customer_update'];
		$this->data['readonly'] = 'readonly';
		$this->data['action'] = 'update';
		$this->getForm($label_heading_title);
	}
	
	public function changePassword(){
		$this->load->model("customer/customer");
		
		$this->data['label_heading_title'] = $this->language->get('text_change_password');
		$customerid = $this->request->get['customerid'];
		
		$this->data['cancel'] = $this->url->http('customer/customer/update&customerid=' . $customerid);
		
		$this->data['customer'] = $this->model_customer_customer->getItem($customerid);
		
		$this->id='content';
		$this->layout='layout/center';
		$this->template="customer/change_password.tpl";
		
		$this->render();
	}
	
	public function updatePassword(){
		$this->load->model("product/product");
		$data = $this->request->post;		
		
		if($this->validatePassword($data)){
			if($data['customerid'] != ""){
				$this->model_customer_customer->changePassword($data['customerid'], $data['password']);
			}
			$this->data['output'] = "true";	
		}else{
			foreach($this->errpassword as $item){
				$this->data['output'] .= $item . "<br />";	
			}
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	public function validatePassword($data){
		$this->load->model("customer/customer");
		
		if(trim($data['old_password']) == ""){
			$this->errpassword['old_password'] = $this->language->get('warning_customer_old_password_null');	
		}else{
			$where = " AND password = '" . md5(trim($data['old_password'])) . "' AND customerid = '" . $data['customerid'] . "'";
			$customers = $this->model_customer_customer->getList($where, 0, 0);
			if(count($customers) == 0){
				$this->errpassword['old_password'] = $this->language->get('warning_customer_old_password_incorrect');	
			}else{
				if(trim($data['password']) == ""){
					$this->errpassword['new_password'] = $this->language->get('warning_customer_new_password_null');
				} else {
					if(trim($data['password']) != trim($data['confirm_password'])){
					 	$this->errpassword['password'] = $this->language->get('warning_customer_new_password_notmatch');
					}
				}	
			}
		}
		
		if(count($this->errpassword) > 0){
			return false;	
		}else{
			return true;
		}	
	}
}
?>