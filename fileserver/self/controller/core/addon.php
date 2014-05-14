<?php 
class ControllerCoreAddon extends Controller{
	
	private $error = array();
	
	public function index(){
		
		$this->getList();
		
	}
	
	public function getList(){
		$this->load->model("core/language");
		$route = $this->getRoute();
		
		$this->data['insert'] = $this->url->http('core/addon/insert');
		$this->data['delete'] = $this->url->http('core/addon/remove');
		
		$this->load->model("core/addon");
		
		if($this->request->get['areacode'] != ''){
			$where = " AND areacode = '" . $this->request->get['areacode'] . "'";	
		}
		
		$arr_addon = $this->model_core_addon->getList($where);
		
		foreach($arr_addon as $item){
			$item['link'] = $this->url->http('core/addon/update&addonid='.$item['addonid']);
			
			$this->data['addon'][] = $item;
		}
		
		$this->id='content';
		$this->template='core/addon_list.tpl';
		if($this->request->get['dialog'] == true){
			$this->layout="layout/dialog";
		}else{
			$this->layout="layout/center";
		}	
		$this->render();
	}
	
	public function update(){
		$this->getForm();	
	}
	
	public function getForm(){
		$this->load->model("core/addon");
		$this->load->model("core/language");
		$this->load->model("core/module");
		$this->load->model("common/control");
		$this->load->model("core/site");
		
		$this->data['position'] = $this->model_core_addon->getPosition();
		
		//$this->data['language'] = $this->model_core_language->getLanguages();
		//language base on member site
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arr_site_language = explode(",", $site['language']);
		foreach($arr_site_language as $site_language){
			$language = $this->model_core_language->getLanguageByCode(trim($site_language));
			if(isset($language)){
				$this->data['language'][$language['languageid']] = $language;
			}
		}
		
		if($this->request->get['addonid'] != ""){
			$this->data['addon'] = $this->model_core_addon->getItem($this->request->get['addonid']);
			
			$arr_description = $this->model_core_addon->getDescriptions($this->request->get['addonid']);
			foreach($arr_description as $description){
				$this->data['addon_description'][$description['languageid']] = $description['addonname'];	
			}
		}
		
		$arrayAreaCode = $this->model_core_module->listAreaCode();
		$this->data['areacode'] = $this->model_common_control->getComboboxData("", $arrayAreaCode, $this->data['addon']['areacode']);
		
		$this->id='content';
		$this->template='core/addon_form.tpl';
		$this->layout="layout/center";	
		$this->render();		
	}
	
	public function insert(){
		$this->getForm();
	}
	
	public function save(){
		$this->load->model("core/addon");
		$data = $this->request->post;
		
		if($this->validateForm($data)){
			if($data['id'] == ""){
				$this->model_core_addon->insert($data);
			}else{
				$this->model_core_addon->update($data);
			}
			
			$this->data['output'] = "true";
		}else{
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item."<br>";
			}
		}
		
		$this->id='content';
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function getAddonPosition(){
		$moduleid = $this->request->post['moduleid'];
		
		$this->load->model("core/module");
		
		$module = $this->model_core_module->getModule($moduleid);
		
		$this->data['output'] = "true-".$module['areacode'];
		
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function validateForm($data){
		$this->load->model("core/addon");
				
		if(trim($data['addonid']) == ''){
			$this->error['addonid'] = $this->data['warning_code_addon'];
		}
		
		$addon = $this->model_core_addon->getItem($data['addonid']);
		
		if($data['id'] == "" && $data['addonid'] == $addon['addonid'] ){
			$this->error['addonid'] = $this->data['warning_existed_addon'];
		}
			
		if(count($this->error) > 0){
			return false;	
		}else{
			return true;
		}
	}
	
	public function getModule(){
		$this->load->model('core/module');
		$areacode = $this->request->get['areacode'];
		
		$arrayModule = $this->model_core_module->getListByAreaCode($areacode);
		$this->data['output'] = json_encode(array('module' => $arrayModule));
		
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function sortorder(){
		$this->load->model("core/addon");
		$arrsort = $this->request->post['sortorder'];
		
		if(isset($arrsort)){
			foreach($arrsort as $key => $value){
				$this->model_core_addon->sortorder($key, $value);
			}
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
}
?>