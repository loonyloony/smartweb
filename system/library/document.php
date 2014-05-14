<?php
final class Document {
	//Cai dat cho HEAD
	public $title;
	public $description = '';
	public $keywords = '';	
	public $links = array();		
	public $styles = array();
	public $scripts = array();
	
	//NGON NGU WEBSITE
	public $languages = array();
	
	//Cai dat cho 1 web page
	public $sitemapid = '';
	public $breadcrumbs = '';
	public $route = '';
	
	
	public function __construct() 
	{
		$this->db = Registry::get('db');
		$this->language = Registry::get('language');
		$this->config = Registry::get('config');
		$this->loadSetting();
		$this->title = $this->setup['Title'];
	}
	
	private function loadSetting()
	{
		//CONFIG SKIN DIR	
		define('DIR_VIEW', 'smartweb_'.SKINID.'/');
		define('DIR_IMAGE', FILE_SERVER.'smartweb_'.SKINID.'/image/');
		define('DIR_CSS', MIN_FILE_SERVER.'smartweb_'.SKINID.'/css/');
		define('DIR_USERJS', MIN_FILE_SERVER.'smartweb_'.SKINID.'/js/');
		define('DIR_USERTEMPLATE', 'smartcore_setting/'.SKINID.'/template/');
		
		define('DIR_ROOTFILE', DIR_SERVERROOT.'smartweb_'.SKINID.'/file/');
		define('DIR_FILE', DIR_SERVERROOT.'smartweb_'.SKINID.'/file/');
		define('DIR_CACHE', DIR_SERVERROOT.'smartcore_setting/'.SKINID.'/cachedb/');
		define('DIR_CACHEHTML', DIR_SERVERROOT.'smartcore_setting/'.SKINID.'/cachedb/');
		
		//DEFINE FILE PATH
		define('DIR_WEBFILE', '');
		
		
		//Get list langugage cho form
		$arr_language = explode(",",$this->config->get("config_language"));
		$languagelist = $this->language->getLanguages();

		foreach($arr_language as $item)
		{
			$item = trim($item);
			$this->languages[trim($item)] = $languagelist[$item]["name"];
		}
	}
	
	public function setTitle($title) {
		$this->title = $title;
	}
	
	public function getTitle() {
		return $this->title;
	}
	
	public function setDescription($description) {
		$this->description = $description;
	}
	
	public function getDescription() {
		return $this->description;
	}
	
	public function setKeywords($keywords) {
		$this->keywords = $keywords;
	}
	
	public function getKeywords() {
		return $this->keywords;
	}
	
	public function addLink($href, $rel="canonical") {
		$this->links[md5($href)] = array(
			'href' => $href,
			'rel'  => $rel
		);			
	}
	
	public function getLinks() {
		return $this->links;
	}	
	
	public function addStyle($href, $rel = 'stylesheet', $media = 'screen') {
		$this->styles[md5($href)] = array(
			'href'  => $href,
			'rel'   => $rel,
			'media' => $media
		);
	}
	
	public function getStyles() {
		return $this->styles;
	}	
	
	public function addScript($script) {
		$this->scripts[md5($script)] = $script;			
	}
	
	public function getScripts() {
		return $this->scripts;
	}
	
	public function getPara()
	{
		$uri = $_SERVER['REQUEST_URI'];
		$arr = @explode("\?",$uri);
		
		$listpara = @explode("&",$arr[1]);
		$para = array();
		foreach($listpara as $val)
		{
			$ar = @explode("=",$val);	
			$para[$ar[0]] = $ar[1];
		}
		return $para;
	}
	
	public function getURI()
	{
		$uri = $_SERVER['REQUEST_URI'];
		return $uri;
	}
	
	public function getLanguage()
	{	
		return $this->languages;
	}
	
	
}
?>