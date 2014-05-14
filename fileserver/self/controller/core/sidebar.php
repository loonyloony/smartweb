<?php 
class ControllerCoresidebar extends Controller{
	
	private $error = array();
	
	public function index(){
		$this->getList();
	}
	
	public function getList(){
		$this->load->model("core/sidebar");
		$this->load->model("core/addon");
		$this->load->model("core/language");
		$route = $this->getRoute();
		
		$this->data['insert'] = $this->url->http('core/sidebar/insert');
		$this->data['delete'] = $this->url->http('core/sidebar/remove');
		
		$arrayOfSidebar = $this->model_core_sidebar->getList();
		
		if(isset($arrayOfSidebar)){
			foreach($arrayOfSidebar as $item){		
				$arrayOfSidebarAddon = $this->model_core_sidebar->getListAddonBySidebarId($item['sidebarid']);
				if(isset($arrayOfSidebarAddon)){
					foreach($arrayOfSidebarAddon as $sidebaraddon){
						//get addon
						$addon = $this->model_core_addon->getItemById($sidebaraddon['addonid']);
						
						//get addon description
						$arrayOfAddonDescription = $this->model_core_addon->getDescriptions($addon['addonid']);
						
						foreach($arrayOfAddonDescription as $description){
							if($description['languageid'] == $this->config->get('config_languageid'));
								$addon['addonname'] = $description['addonname'];	
						}
						
						$arrayOfAddon[] = $addon;
					}
				}
				
				$item['addon'] = $arrayOfAddon;
				$item['link'] = $this->url->http('core/sidebar/update&sidebarid='.$item['sidebarid']);
				
				$this->data['sidebar'][] = $item;
				
				$arrayOfAddon = array();
			}
		}
		
		$this->id='content';
		$this->template='core/sidebar_list.tpl';
		$this->layout="layout/center";

		$this->render();
	}
	
	public function update(){
		$this->getForm();	
	}
	
	public function getForm(){
		$this->load->model("core/sidebar");
		$this->load->model("core/language");
		$this->load->model("core/module");
		$this->load->model("common/control");
		
		$this->data['language'] = $this->model_core_language->getLanguages();
		
		if($this->request->get['sidebarid'] != ""){
			$this->data['sidebar'] = $this->model_core_sidebar->getItem($this->request->get['sidebarid']);
			
			$arrayListSidebarAddon = $this->model_core_sidebar->getListAddonBySidebarId($this->request->get['sidebarid']);
			
			if(isset($arrayListSidebarAddon)){			
				foreach($arrayListSidebarAddon as $sidebaraddon){
					$arraySidebarAddon[] = $sidebaraddon['addonid']."-".$sidebaraddon['sortorder'];
				}
			}
			
			if(isset($arraySidebarAddon)){
				$this->data['addon'] = implode(',', $arraySidebarAddon);
			}
		}
		
		$this->id='content';
		$this->template='core/sidebar_form.tpl';
		$this->layout="layout/center";	
		$this->render();		
	}
	
	public function insert(){
		$this->getForm();
	}
	
	public function save(){
		$this->load->model("core/sidebar");
		$data = $this->request->post;
		
		if($this->validateForm($data)){
			if($data['sidebarid'] == ""){
				$this->model_core_sidebar->insert($data);
			}else{
				$this->model_core_sidebar->update($data);
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
	
	public function getsidebarPosition(){
		$moduleid = $this->request->post['moduleid'];
		
		$this->load->model("core/module");
		
		$module = $this->model_core_module->getModule($moduleid);
		
		$this->data['output'] = "true-".$module['areacode'];
		
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function validateForm($data){
		$this->load->model("core/sidebar");
		
		if(trim($data['sidebar_name']) == ''){
			$this->error['sidebar_name'] = $this->data['warning_sidebar_name_null'];
		}
		
		if(trim($data['sidebarid']) == ""){
			$where = " AND sidebar_name = '" . $data['sidebar_name'] . "'";
			$arrayOfSidebar = $this->model_core_sidebar->getList($where);
			
			if(count($arrayOfSidebar) > 0){
				$this->error['sidebar_name'] = $this->data['warning_sidebar_name_existed'];		
			}
		}else{
			$where = " AND sidebar_name = '" . $data['sidebar_name'] . "' AND sidebarid <> '" . $data['sidebarid'] . "'";
			$arrayOfSidebar = $this->model_core_sidebar->getList($where);
			
			if(count($arrayOfSidebar) > 0){
				$this->error['sidebar_name'] = $this->data['warning_sidebar_name_existed'];		
			}
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
		$this->load->model("core/sidebar");
		$arrsort = $this->request->post['sortorder'];
		
		if(isset($arrsort)){
			foreach($arrsort as $key => $value){
				$this->model_core_sidebar->sortorder($key, $value);
			}
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	public function remove(){
		$this->load->model("core/sidebar");
		
		$listid = $this->request->post['delete'];
		if(count($listid)){
			foreach($listid as $id){
				$this->model_core_sidebar->delete($id);	
			}	
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
}
?>