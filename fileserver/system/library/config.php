<?php
final class Config {
	private $data = array();
	
	public function __construct() {		
		$this->db = Registry::get('db');
		$this->loadSiteConfig();
	}

  	public function get($key) {
    	return (isset($this->data[$key]) ? $this->data[$key] : NULL);
  	}	
	
	public function set($key, $value) {
    	$this->data[$key] = $value;
  	}

	public function has($key) {
    	return isset($this->data[$key]);
  	}

  	public function load($filename) {
		$file = DIR_CONFIG . $filename . '.php';
		
    	if (file_exists($file)) { 
	  		$_ = array();
	  
	  		require($file);
	  
	  		$this->data = array_merge($this->data, $_);
		} else {
			trigger_error('Error: Could not load config ' . $filename . '!');
			exit();
		}
  	}
	
	public function loadSiteConfig()
	{	
		//SITE & LOAD SITE SETTING
		$siteid = "default";
		if($_GET['site'])
		{
			$siteid =  mysql_escape_string($_GET['site']);	
		}
	
		//Load tat ca setting trong table Site
		$sql = "Select `site`.* from `site` Where siteid = '".$siteid."'";
		$query = $this->db->query($sql);
		if(count($query->rows) > 0)
		{
			foreach($query->row as $key=>$value)
			{
				$this->set("config_".$key,$value);	
			}
		}
		else
		{
			trigger_error('Error: Could not found this website with code: ' . $siteid . '!');
			exit();
		}
		
		define('SITEID', $siteid);
		
		
		//SET LANGUAGE DEFAULT CONFIG
		$arr_language = explode(",",$this->get("config_language"));
		$this->set('config_languageid',$arr_language[0]);
	}
}
?>