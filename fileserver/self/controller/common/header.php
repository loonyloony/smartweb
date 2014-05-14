<?php
	class ControllerCommonHeader extends Controller
	{
		public function index()
		{
			$this->load->model("core/media");
			$this->load->helper('image');

			$this->data['username'] = $this->session->data['username'];
			$this->data['usertypeid'] = $this->session->data['usertypeid'];
			$this->data['sitename'] = $this->session->data['sitename'];
			
			$imagepath = $this->config->get("config_logo");
			
			if($imagepath != "")
			{
				$this->data['logopath'] = "images/root/".$imagepath;
			}
			
			$this->data['title'] = $this->config->get("config_sitename");
			$this->data['WebsiteURL'] = $this->config->get("config_siteurl");
			$this->data['slogan'] = $this->config->get("config_slogan");
			
			$this->id="header";
			$this->template="common/header.tpl";
			$this->render();
		}
		
		
	}
?>