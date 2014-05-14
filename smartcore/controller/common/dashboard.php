<?php
	class ControllerCommonDashboard extends Controller
	{
		public function index()
		{
			$this->load->model("core/design");
			$this->data['modules'] = array();
			
			$this->data['modules'] = $this->model_core_design->getDashboardModules($this->smartweb->layoutid);
			for($i=0;$i<count($this->data['modules']);$i++)
			{
				$this->data['modules'][$i]['modulecontent'] = $this->loadmodule($this->data['modules'][$i]['moduleid']);	
			}
			
			$this->id="dashboard";
			$this->template="common/dashboard.tpl";
			$this->render();
		}
	}
?>