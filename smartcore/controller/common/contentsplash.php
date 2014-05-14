<?php
	class ControllerCommonContentsplash extends Controller
	{
		public function index()
		{
			/*$this->load->model("core/design");
			$this->data['modules'] = $this->model_core_design->getSidebarModules($this->smartweb->sidebar_left);
			for($i=0;$i<count($this->data['modules']);$i++)
			{
				$this->data['modules'][$i]['modulecontent'] = $this->loadmodule($this->data['modules'][$id]['moduleid']);	
			}*/
			$this->data['modules'] = array();
			/*switch($this->smartweb->sitemapid)
			{
				case "11":
				case "14":
				case "15":
				case "16":
				case "33":
					$this->data['modules'][0]['moduleid'] = "homeslider";
					$this->data['modules'][0]['modulecontent'] = $this->loadmodule("splash/contentbanner");
				break;
			}*/
			
			
			
			$this->id="contentsplash";
			$this->template="common/contentsplash.tpl";
			$this->render();
		}
	}
?>