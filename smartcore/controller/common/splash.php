<?php
	class ControllerCommonSplash extends Controller
	{
		public function index()
		{
			$this->load->model("core/design");
			$this->data['modules'] = array();
			
			$this->data['modules'] = $this->model_core_design->getSplashModules($this->smartweb->layoutid);
			for($i=0;$i<count($this->data['modules']);$i++)
			{
				$this->data['modules'][$i]['modulecontent'] = $this->loadmodule($this->data['modules'][$i]['moduleid']);
			}
			/*if($this->smartweb->layoutid == "homepage")
			{
				$this->data['modules'][0]['moduleid'] = "homeslider";
				$this->data['modules'][0]['modulecontent'] = $this->loadmodule("splash/homeslider");
				$this->data['modules'][1]['moduleid'] = "homelink";
				$this->data['modules'][1]['modulecontent'] = $this->loadmodule("splash/homelinks");
			}*/
			
			$this->id="splash";
			$this->template="common/splash.tpl";
			$this->render();
		}
	}
?>