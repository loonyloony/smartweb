<?php 
class ControllerCoreLayout extends Controller{
	
	private $error = array();
	
	public function index(){
		
		$this->getList();
	}
	
	public function getList(){
		$this->load->model("core/language");
		$this->load->model("core/layout");
		$route = $this->getRoute();
		
		$this->data['insert'] = $this->url->http('core/layout/insert');
		$this->data['delete'] = $this->url->http('core/layout/remove');
		
		$this->data['layout'] = $this->model_core_layout->getList();
		
		$this->id='content';
		$this->template='core/layout_list.tpl';
		$this->layout="layout/center";	
		$this->render();	
	}
	
	public function insert(){
		$this->getForm();	
	}
	
	public function update(){
		$this->getForm();	
	}
	
	public function getForm(){
		$this->load->model("core/language");
		$this->load->model("core/layout");
		$this->load->model("common/control");
		$this->load->model("core/addon");
		$this->load->helper("image");
		
		$this->data['language'] = $this->model_core_language->getLanguages();
		$layoutid = $this->request->get['layoutid'];
		
		if($layoutid != ''){
			$this->data['layout'] = $this->model_core_layout->getItem($layoutid);
			if($this->data['layout']['imagedemo'] != ''){
				$this->data['layout']['imagethumbnail'] = HelperImage::resizePNG($this->data['layout']['imagedemo'], 200, 200);	
			}
			
			//
			$layout_description = $this->model_core_layout->getDescriptions($layoutid);
			foreach($layout_description as $description){
				$this->data['layout_description'][$description['languageid']] = $description['layoutname'];	
			}
			
			//layout_splash
			$arr_splash = $this->model_core_layout->getListLayoutSplash($layoutid);
			$arr_splashaddonid = $this->string->matrixToArray($arr_splash, "addonid");

			foreach($arr_splashaddonid as $splashaddonid){
				$splash = $this->model_core_addon->getItem($splashaddonid);
				$arr_splashaddon[] = $splash['id'];
			}
			
			if(isset($arr_splashaddon)){
				$this->data['splash'] = implode(",", $arr_splashaddon);
			}
			
			//layout_dashboard
			$arr_dashboard = $this->model_core_layout->getListLayoutDashboard($layoutid);
			$arr_dashboardaddonid = $this->string->matrixToArray($arr_dashboard, "addonid");
			foreach($arr_dashboardaddonid as $dashboardaddonid){
				$dashboard = $this->model_core_addon->getItem($dashboardaddonid);
				$arr_dashboardaddon[] = $dashboard['id'];
			}
			
			if(isset($arr_dashboardaddon)){
				$this->data['dashboard'] = implode(",", $arr_dashboardaddon);
			}
			
			//layout_sidebar
			if($this->data['layout']['sidebarleft'] > 0 ){
				$this->data['leftsidebar'] = $this->data['layout']['sidebarleft'];
			}
			
			if($this->data['layout']['sidebarright'] > 0 ){
				$this->data['rightsidebar'] = $this->data['layout']['sidebarright'];
			}			
		}
		
		
		$this->id='content';
		$this->template='core/layout_form.tpl';
		$this->layout="layout/center";	
		$this->render();
	}
	
	public function save(){
		$this->load->model("core/layout");
		$data = $this->request->post;
		
		if($this->validateForm($data)){
			if($data['id'] == ""){
				$this->model_core_layout->insert($data);	
			}else{
				$this->model_core_layout->update($data);	
			}
			
			$this->data['output'] = "true";
		}else{
			foreach($this->error as $item){
				$this->data['output'] .= $item . "<br />";	
			}
		}
		
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function validateForm($data){
		if(trim($data['layoutid']) == ""){
			$this->error['layoutid'] = $this->data['warning_id_layout'];	
		}
		
		$layout = $this->model_core_layout->getItem($data['layoutid']);
		
		if($data['id'] == "" && $data['layoutid'] == $layout['layoutid']){
			$this->error['layoutid'] = $this->data['warning_existed_layout'];
		}
				
		if(count($this->error) > 0){
			return FALSE;	
		}else{
			return TRUE;	
		}
	}
	
	public function getAddon(){
		$this->load->model("core/addon");
		$this->load->model("core/layout");
		$this->load->model("core/language");
		
		$addonid = $this->request->get['addonid'];
		
		$addon = $this->model_core_addon->getItemById($addonid);
	
		$arr_description = $this->model_core_addon->getDescriptions($addon['addonid']);
		if(isset($arr_description)){
			foreach($arr_description as $description){
				$language = $this->model_core_language->getLanguage($description['languageid']);
				$addon['addonname'][$language['name']] = $description['addonname'];
			}
		}
		
		if($this->request->get['type'] == 'splash'){
			$sidebar = $this->model_core_layout->getSplashByAddonid($addon['addonid']);
			if($sidebar)
				$addon['sortorder'] = $sidebar['sortorder'];
		}
		
		if($this->request->get['type'] == 'dashboard'){
			$sidebar = $this->model_core_layout->getDashboardByAddonid($addon['addonid']);
			if($sidebar)
				$addon['sortorder'] = $sidebar['sortorder'];
		}
		
		$this->data['output'] = json_encode(array('addon' => $addon));
		
		$this->id="addon";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	public function getSidebar(){
		$this->load->model('core/sidebar');
		
		$arraySidebar = $this->model_core_sidebar->getList();
		$this->data['output'] = json_encode(array('sidebar' => $arraySidebar));
		
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function getAddonById(){
		$this->load->model('core/addon');
		$this->load->model('core/language');
		$this->load->model('core/layout');
		
		$addonid = $this->request->get['addonid'];
		
		$addon = $this->model_core_addon->getItemById($addonid);
	
		$arr_description = $this->model_core_addon->getDescriptions($addon['addonid']);
		if(isset($arr_description)){
			foreach($arr_description as $description){
				$language = $this->model_core_language->getLanguage($description['languageid']);
				$addon['addonname'][$language['name']] = $description['addonname'];
			}
		}
		
		$this->data['output'] = json_encode(array('addon' => $addon));
		
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function remove(){
		$this->load->model("core/layout");	
		
		$listid = $this->request->post['delete'];
		
		if(count($listid)){
			foreach($listid as $id){
				$this->model_core_layout->delete($id);	
			}	
		}
		
		$this->data['output'] = "true";
		
		$this->template='common/output.tpl';
		$this->render();
	}
}
?>