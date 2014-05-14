<?php
class ControllerLayoutHome extends Controller
{
	public function index()
	{
		
		//Web General Setting
		
		if($this->data['og_site_name'] == ""){
			$this->data['og_site_name'] = htmlspecialchars_decode($this->config->get('config_sitename'));
		}
		
		//og
		$this->data['og_title'] = $this->smartweb->og_title;
		if($this->data['og_title'] == ""){
			$this->data['og_title'] = $this->config->get('config_sitename');	
		}
		
		$this->data['og_title'] = htmlspecialchars_decode($this->data['og_title']);
		//$this->data['og_title'] = strip_tags($this->data['og_title']);
		
		
		$this->data['og_url'] = $this->smartweb->og_url;
		if($this->data['og_url'] == ""){
			$this->data['og_url'] = $this->config->get('config_siteurl');
		}
		
		$this->data['og_image'] = $this->smartweb->og_image;
		if($this->data['og_image'] == ""){
			$this->data['og_image'] = IMAGE_SERVER . "images/smartweb_" . SKINID . "/root/" . $this->config->get('config_logo');	
		}
		
		$this->data['og_description'] = $this->smartweb->og_description;
		if($this->data['og_description'] == ""){
			$this->data['og_description'] = $this->config->get('config_description');
		}
		$this->data['og_description'] = htmlspecialchars_decode($this->data['og_description']);
		$this->data['og_description'] = strip_tags($this->data['og_description']);
		
		$this->data['og_publicdate'] = $this->document->og_publicdate;
		$this->data['og_revisiondate'] = $this->document->og_revisiondate;
		
		//seo
		$this->data['title'] = htmlspecialchars_decode($this->data['title']);
		$this->data['title'] = strip_tags($this->data['title']);
		if($this->data['title'] == "")
		{
			$this->data['title'] = $this->config->get('config_sitename');
		}
		
		$this->data['base'] = HTTP_SERVER;
		$this->data['meta_description'] = $this->document->getDescription();
		if($this->data['meta_description'] == ""){
			$this->data['meta_description'] = htmlspecialchars_decode($this->config->get('config_description'));	
		}
		$this->data['meta_keywords'] = $this->document->getKeywords();
		if($this->data['meta_keywords'] == ""){
			$this->data['meta_keywords'] = htmlspecialchars_decode($this->config->get('config_keywords'));
		}
		
		//script
		$this->data['links'] = $this->document->getLinks();	 
		$this->data['styles'] = $this->document->getStyles();
		$this->data['scripts'] = $this->document->getScripts();
		
		//googel analytics
		$this->data['google_analytics'] = html_entity_decode($this->config->get('config_googleanalytics'), ENT_QUOTES, 'UTF-8');
		
		/*if ($this->config->get('config_symbol') && file_exists(DIR_FILE . $this->config->get('config_symbol'))) {
			$this->data['icon'] = $server . $this->config->get('config_symbol');
		} else {
			$this->data['icon'] = '';
		}*/
		
		if ($this->config->get('config_symbol') != '') {
			$this->data['icon'] = $this->config->get('config_symbol');
		} else {
			$this->data['icon'] = '';
		}
		
		
		$this->data['layoutid'] = $this->smartweb->layoutid;
		
		
		
		//$this->children=array(
		//	'splash/backgroundfade'
		//);
		
		$this->template="layout/home.tpl";
		$this->render();
	}
}
?>