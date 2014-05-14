<?php 
class ControllerCpanelAddonmenu extends Controller{
	public function index(){
		$this->load->model("core/module");	
		$this->load->model("core/addon");
		
		$arrayOfAddon = $this->model_core_addon->getList();
		
		$arrayOfModuleType = array('manage', 'refer');
		$arrayOfModuleSplashBanner = array('splash/homesimpleslides', 'sidebar/promotionbox');
		
		if(count($arrayOfAddon)){
			foreach($arrayOfAddon as $addon){
				$module = $this->model_core_module->getModule($addon['moduleid']);
				if(in_array($module['moduletype'], $arrayOfModuleType)){
					$link = $module['modulepath'];
					$addon['link'] = $this->url->http($link . '&addonid=' . $addon['addonid']);
					$this->data['addon'][] = $addon;
				}
			}	
		}
		
		$this->id="content";
		$this->template="cpanel/addonmenu.tpl";
		$this->layout='layout/center';
		$this->render();
	}	
}
?>