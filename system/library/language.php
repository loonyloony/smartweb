<?php
final class Language {
  	private $code = 'vn';
	private $directory;
  	private $languages = array(); //Load tu table language
	private $data = array(); //Data load tu file ngon ngu
 
	public function __construct() {		
		$this->config  = Registry::get('config');
		$this->db = Registry::get('db');
		$this->request = Registry::get('request');
		$this->session = Registry::get('session');
		$this->cache = Registry::get('cache');
		
		//Lay toan bo Language Record
		$this->languages = $this->getDataLanguage();
		
		//Cai dat ngon ngu lang=vn
		if($this->request->get['lang'] != "")
		{
			$this->set(trim($this->request->get['lang']));
		}
		elseif (@array_key_exists($this->session->data['lang_session'], $this->languages)) {
			$this->set($this->session->data['lang_session']);
		}else{
			$this->set($this->code);
		}
		
		//Load file ngon ngu chung
		//$this->load($this->languages[$this->code]['filename']);
		$this->getDefaultDictionary();
	}
	
	

	public function set($language) {
		if (isset($this->languages[$language])) {
    		$this->code = $language;
			$this->directory = $this->languages[$this->code]['directory'];
		}
    	if ((!isset($this->session->data['lang_session'])) || ($this->session->data['lang_session'] != $this->code)) {
			$this->session->set('lang_session', $this->code);
    	}

    	if ((!isset($this->request->cookie['language'])) || ($this->request->cookie['language'] != $this->code)) {	  
	  		setcookie('language', $this->code, time() + 60 * 60 * 24 * 30, '/', $_SERVER['HTTP_HOST']);
    	}
	}
	
  	public function get($key) {
   		return (isset($this->data[$key]) ? $this->data[$key] : $key);
  	}
	
	public function load($filename) {
		$file = DIR_LANGUAGE . $this->directory . '/' . $filename . '.php';
    	
		if (file_exists($file)) {
			$_ = array();
	  		
			require($file);
		
			$this->data = array_merge($this->data, $_);
			
			return $this->data;
		}
  	}
	
	public function loaddata($filename)
	{
		$file = DIR_LANGUAGE . $filename . '.php';
    	
		if (file_exists($file)) {
			$_ = array();
			require($file);
			return $_;
		}
	}

	public function getId() {
    	return $this->languages[$this->code]['languageid'];
  	}

  	public function getCode() {
    	return $this->code;
  	}  	
	
	public function getData(){
		return $this->data;
	}
	
	public function getLanguages()
	{
		return $this->languages;
	}
	
	public function getLanguageByCode($code)
	{
		return $this->languages[$code];
	}
	
	
	//Cac ham private
	private function getDataLanguage()
	{
		$data = $this->cache->get('language');
		
		if (!$data) {
			$query = $this->db->query("SELECT * FROM language");
			foreach ($query->rows as $result) {
				$data[$result['code']] = array(
					'languageid' => $result['languageid'],
					'name'        => $result['name'],
					'code'        => $result['code'],
					'locale'      => $result['locale'],
					'directory'   => $result['directory'],
					'filename'    => $result['filename']
				);
			}
		}
		return $data;
	}
	
	private function getDefaultDictionary()
	{
		$filename = DIR_LANGUAGE."language.json";
		if(!is_file($filename))
		{
			$fp = fopen($filename, 'w');
			fwrite($fp, '');
			fclose($fp);	
		}
		$handle = fopen($filename, "r");
		@$contents = fread($handle, filesize($filename));
		fclose($handle);
		$obj = json_decode($contents);
		
		$_ = array();
		$defaultlanguageid = $this->getId();
		if(count($obj))
		{
			foreach($obj as $key=>$item)
			{
				$_[$item->languagekey] = $item->$defaultlanguageid;	
			}
		}
		
		$this->data = array_merge($this->data, $_);
		return $this->data;
	}
}
?>