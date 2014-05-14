<?php 
class ControllerCustomerCustomergroup extends Controller{
	
	private $error = array();
	
	public function index(){
		$this->getList();
	}
	
	public function getList(){
		$this->data['label_heading_title'] = $this->data['title_heading_customer_group'];
		
		//load libraries
		$this->load->model("customer/customergroup");
		$this->load->model("core/language");
		
		$this->data['insert'] = $this->url->http('customer/customergroup/insert');
		$this->data['delete'] = $this->url->http('customer/customergroup/delete');		
		
		$this->data['customer_groups'] = array();
		$rows = $this->model_customer_customergroup->getList($where, 0, 0);
		
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
			$this->data['customer_groups'][$i] = $rows[$i];
						
			$this->data['customer_groups'][$i]['link_edit'] = $this->url->http('customer/customergroup/update&customer_group_id='.$this->data['customer_groups'][$i]['customer_group_id']);
		}
		
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		
		$this->id='content';
		$this->template="customer/customer_group_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function delete(){
		$this->load->model("customer/customergroup");
		$listid=$this->request->post['delete'];
		if(count($listid))
		{
			foreach($listid as $id)
			{
				$this->model_customer_customergroup->delete($id);	
			}
			$this->data['output'] = "true";
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	public function sortorder(){
		$this->load->model("customer/customergroup");
		$arrsort = $this->request->post['sortorder'];
		
		if(isset($arrsort)){
			foreach($arrsort as $key => $value){
				$this->model_customer_customergroup->sortorder($key, $value);
			}
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	public function checkApproval(){
		$this->load->model("customer/customergroup");
		$data = $this->request->post;
		
		if(isset($data)){
			$this->model_customer_customergroup->checkApproval($data['customer_group_id'], $data['approval']);
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	public function insert(){
		$label_heading_title = $this->data['title_heading_customer_group_insert'];
		$this->getForm($label_heading_title);
	}
	
	public function update(){
		$label_heading_title = $this->data['title_heading_customer_group_update'];
		$this->getForm($label_heading_title);
	}
	
	public function getForm($label_heading_title = ''){
		$this->data['label_heading_title'] = $label_heading_title;
		
		$this->data['cancel'] = $this->url->http('customer/customergroup');
		
		//load libraries
		$this->load->model("core/language");
		$this->load->model("core/site");
		$this->load->model("customer/customergroup");
		
		//language base on member site
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arr_site_language = explode(",", $site['language']);
		foreach($arr_site_language as $site_language){
			$language = $this->model_core_language->getLanguageByCode(trim($site_language));
			if(isset($language)){
				$this->data['language'][$language['languageid']] = $language['name'];
			}
		}
		
		//get item
		$customer_group_id = $this->request->get['customer_group_id'];
		if($customer_group_id != ""){
			$customer_group_description = $this->model_customer_customergroup->getDescriptions($customer_group_id);
			if(isset($customer_group_description)){
				foreach($customer_group_description as $item){
					$description[$item['languageid']]['name'] = $item['name'];
					$description[$item['languageid']]['description'] = $item['description'];
					
					$this->data['customer_group_description'] = $description;
				}	
			}
			
			$this->data['customer_group'] = $this->model_customer_customergroup->getItem($customer_group_id);
		}
		
		$this->id='content';
		$this->layout='layout/center';
		$this->template="customer/customer_group_form.tpl";
		
		$this->render();	
	}
	
	public function save(){
		
		$this->load->model("customer/customergroup");
		
		$data = $this->request->post;
		
		if($this->validateForm($data)){
			if($data['customer_group_id'] == "") {
				$this->model_customer_customergroup->insert($data);	
			} else {
				$this->model_customer_customergroup->update($data);				
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
	
	private function validateForm($data)
	{
		$this->load->model("customer/customergroup");
		
		if(isset($data['customer_group_description'])){
			foreach($data['customer_group_description'] as $item){
				if(trim($item['name']) == ""){
					$this->error['name'] = $this->language->get('warning_customer_group_name_null');
				}	
			}
		}
		
		if(trim($data['customer_group_id']) == ""){	
			if(isset($data['customer_group_description'])){
				foreach($data['customer_group_description'] as $item){
					if(trim($item['name']) != ""){
						$where = " AND name = '" . $item['name'] . "'";
						$customer_group_list = $this->model_customer_customergroup->getCustomerGroupNames($where);
						
						if(count($customer_group_list) > 0){
							$this->error['name'] = $this->language->get('warning_customer_group_name_existed');
							break;
						}
					}	
				}
			}	
		}else{
			if(isset($data['customer_group_description'])){
				foreach($data['customer_group_description'] as $item){
					if(trim($item['name']) != ""){
						$where = " AND name = '" . $item['name'] . "' AND customer_group_id = '" . $data['customer_group_id'] . "'";
						$customer_group_list = $this->model_customer_customergroup->getCustomerGroupNames($where);
						
						if(count($customer_group_list) > 0){
							$this->error['name'] = $this->language->get('warning_customer_group_name_existed');
						}
					}	
				}
			}
		}

		if (count($this->error)==0) {
	  		return TRUE;
		} else {
	  		return FALSE;
		}
	}
	
}
?>