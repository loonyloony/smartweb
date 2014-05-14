<?php
	class ControllerCpanelMemberbonus extends Controller
	{
		private $error = array();
		public function index()
		{
			$this->id="content";
			$this->layout='layout/center';
			$this->template="cpanel/member_bonus_cpanel.tpl";
			$this->render();
		}
		
		public function setting() 
		{
			$this->data['exchange_point'] = $this->config->get('config_exchange_point');
			$this->id="content";
			$this->layout='layout/center';
			$this->template="cpanel/member_bonus_setting.tpl";
			$this->render();
		}
		
		public function savesetting()
		{
			$this->load->model('core/site');
			$data['exchange_point'] = $this->string->toNumber($this->request->post['exchange_point']);
			$this->model_core_site->updateSetting($data,SITEID);
			$this->data['output'] = 'true';
			$this->id='content';
			$this->template='common/output.tpl';
			$this->render();
		}
		
		public function grouplist()
		{
			$this->load->model('core/bonusgroup');
			$this->data['groups'] = $this->model_core_bonusgroup->getList();
			$this->id="content";
			$this->layout='layout/center';
			$this->template="cpanel/member_bonus_list.tpl";
			$this->render();
		}
		
		public function update()
		{
			if($this->request->get['id'] != '') {
				$this->load->model('core/bonusgroup');
				$this->data['group'] = $this->model_core_bonusgroup->getItem(" AND `bonus_group_id` = '".$this->request->get['id']."'");
			}
			
			$this->id="content";
			$this->layout='layout/center';
			$this->template="cpanel/member_bonus_form.tpl";
			$this->render();
		}
		
		public function save()
		{
			$this->load->model('core/bonusgroup');
			$data = $this->request->post;
			if($this->validate($data) == true) {
				$this->model_core_bonusgroup->save($data);
				$this->data['output'] = 'true';
			} else {
				foreach($this->error as $err) {
					$this->data['output'] .= $err." <br /> ";	
				}
			}
			
			$this->id='content';
			$this->template='common/output.tpl';
			$this->render();
		}
		
		public function delete() {
			$this->load->model('core/bonusgroup');
			$data = $this->request->post;
			$this->model_core_bonusgroup->deletes($data['delete']);
			$this->data['output'] = 'true';
			$this->id='content';
			$this->template='common/output.tpl';
			$this->render();
		}
		
		public function validate($data)
		{
			if(trim($data['name']) == ''){
				$this->error['name'] = $this->language->get('warning_product_name_null');
			}
			if(trim($data['point']) == ''){
				$this->error['point'] = $this->language->get('warning_product_point_null');
			}
			if(trim($data['discount']) == ''){
				$this->error['discount'] = $this->language->get('warning_product_discount_null');
			}
			
			if (count($this->error)==0) {
				return TRUE;
			} else {
				return FALSE;
			}
		}
	}
	
?>