<?php 
 class ControllerSidebarSupportonline extends Controller{
	
	private $error = array();
	
	public function index(){
		$this->getList();
	}
	
	public function getForm($title_heading){
		
		if($this->request->get["addonid"] != ""){
			$link = "&addonid="	. $this->request->get["addonid"];
		}
		$this->data['cancel'] = $this->url->http('sidebar/supportonline' . $link);
		
		$this->data['title_heading'] = $title_heading;
		
		//libraries
		$this->load->model("core/site");
		$this->load->model("core/language");
		$this->load->model("sidebar/supportonline");
		
		//language base on member site
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arr_site_language = explode(",", $site['language']);
		foreach($arr_site_language as $site_language){
			$language = $this->model_core_language->getLanguage(trim($site_language));
			if(isset($language)){
				$this->data['language'][$language['languageid']] = $language['name'];
			}
		}
		
		if($this->request->get['supportid'] != ""){
			$this->data['supportonline'] = $this->model_sidebar_supportonline->getItem($this->request->get['supportid']);
			
			$this->data['support_description'] = $this->model_sidebar_supportonline->getDescriptions($this->request->get['supportid']);
		}
		
		$this->id='content';
		$this->template="sidebar/support_online_form.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function getList(){
		
		if($this->request->get["addonid"] != ""){
			$link = "&addonid="	. $this->request->get["addonid"];
		}
		$this->data['insert'] = $this->url->http('sidebar/supportonline/insert' . $link);
		$this->data['delete'] = $this->url->http('sidebar/supportonline/delete' . $link);
		
		$this->data['title_heading'] = $this->language->get('label_support_online_management');
		
		$this->data['DIR_DELETE'] = HTTP_SERVER."?route=sidebar/supportonline/delete";
		$this->load->model("sidebar/supportonline");
		
		$where = " AND addonid = '" . $this->request->get['addonid'] . "'";
		
		$this->data['supports'] = $this->model_sidebar_supportonline->getList($where);
		
		$this->id='content';
		$this->template="sidebar/support_online_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function update(){
		$this->getForm($this->language->get('label_support_online_update'));	
	}
	
	public function insert(){
		$this->getForm($this->language->get('label_support_online_insert'));	
	}
	
	public function save()
	{
		$this->load->model("sidebar/supportonline");
		
		$data = $this->request->post;
		
		if($this->validateForm($data))
		{
			if($data['supportid']=="")
			{
				$this->model_sidebar_supportonline->insert($data);
					
			}
			else
			{
				$this->model_sidebar_supportonline->update($data);
			}
			
			$this->data['output'] = "true";
		}
		else
		{
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item."<br>";
			}
		}
		$this->id='content';
		$this->template='common/output.tpl';
		$this->render();
	}
	
	private function validateForm($data){
		
		$this->load->model("sidebar/supportonline");
		
		if(isset($data['support_description'])){
			foreach($data['support_description'] as $description){
				if(trim($description['title']) == ''){
					$this->error['title'] = $this->language->get('warning_support_online_title_null');
				}	
			}
		}
		
		if(count($this->error) == 0){
			return true;	
		} else {
			return false;
		}	
	}
	
	public function sortorder(){
		$this->load->model("sidebar/supportonline");
		$arrsort = $this->request->post['sortorder'];
		
		if(isset($arrsort)){
			foreach($arrsort as $key => $value){
				$this->model_sidebar_supportonline->sortorder($key, $value);
			}
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	public function delete() 
	{
		$listid=$this->request->post['delete'];
		
		$this->load->model("sidebar/supportonline");
		if(count($listid))
		{
			$this->model_sidebar_supportonline->delete($listid);
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
  	}
}
 ?>