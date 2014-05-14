<?php
	class ControllerCommonSidebarleft extends Controller
	{
		public function index()
		{
			$this->load->model("core/design");
			$this->data['modules'] = $this->model_core_design->getSidebarModules($this->smartweb->sidebar_left);
			for($i=0;$i<count($this->data['modules']);$i++)
			{
				$this->data['modules'][$i]['modulecontent'] = $this->loadmodule($this->data['modules'][$i]['moduleid']);	
			}
			$this->id="sidebar_left";
			$this->template="common/sidebar_left.tpl";
			$this->render();
		}
	}
?>