<?php
final class Smartweb {
	public $sitemap = array();
	public $media = array();
	public $allsitemap = array();
	public $allmainmenus = array();
	public $allfootermenus = array();
	
	//Load web page
	public $rootsitemapid = "";  //Menu được đánh dấu là trang chủ
	public $moduleroute = "";
	public $sitemapid = "";
	public $objectid = "";
	public $weburl = "";
	
	//Cai dat cho 1 web page
	public $skinpath = '';
	public $breadcrumbs = '';
	public $route = '';
	public $layoutid = '';
	public $layouttype = '';
	public $sidebar_left = '';
	public $sidebar_right = '';
	public $splash = '';
	public $dashboard = '';
	
	//og variables
	public $og_site_name = '';
	public $og_type = '';
	public $og_title = '';
	public $og_url = '';
	public $og_image = '';
	public $og_description = '';
	public $og_publicdate = '';
	public $og_revisiondate = '';
	
	//Setting
	public $settings = array();
	
	public function __construct() 
	{
		$this->db = Registry::get('db');
		$this->language = Registry::get('language');
		$this->config = Registry::get('config');
		if($this->config->get("config_skinid") == "") $this->config->set("config_skinid","default");
		$this->skinpath = "smartweb_".$this->config->get("config_skinid");
		
		//get setting from setting.json
		$this->getSetting();
		
		//SET COUNT USER ONLINE
		$this->config->set('config_countonlinevisitors', $this->visitorsOnline());
		
		//save setting
		$this->saveSetting();
	}
	
	public function setPageDefault($sitemapid, $breadcrumbs, $layoutid, $layouttype, $sidebar_left = array(), $sidebar_right = array(), $splash = array(), $dashboard = array())
	{
		$this->sitemapid = $sitemapid;
		$this->breadcrumbs = $breadcrumbs;
		$this->layoutid = $layoutid;
		$this->layouttype = $layouttype;
		$this->sidebar_left = $sidebar_left;
		$this->sidebar_right = $sidebar_right;
		$this->splash = $splash;
		$this->dashboard = $dashboard;
	}
	
	public function getSEOURL($seourl, $where="")
	{
		$query = $this->db->query("Select * 
									from `url_alias` 
									where keyword ='".$seourl."' ".$where);
		return $query->row;
	}
	
	function checkSEOURL($seo_url, $object, $id)
	{
		if($seo_url != "")
		{
			$sql="SELECT * FROM url_alias WHERE keyword = '" .$seo_url . "'";
			$query = $this->db->query($sql);
			$data = $query->rows;
			$count = count($data);
			if($count>0){
				if($count > 1)
				{
					return false;	
				}
				else
				{
					$data = $query->row;
					if($data['object'] == $object && $data['value'] == $id)
					{
						return true;	
					}
					else
					{
						return false;
					}	
				}
				
			}else{
				return true;
			}	
		}
		else
		{
			return true;
		}
		
	}
	
	public function saveSEOURL($seo_url, $object, $id)
	{
		$object= $this->db->escape($object);
		$value=$this->db->escape($id);
		$keyword=$this->db->escape($seo_url);
		
		$field=array(
						'object',
						'value',
						'keyword'
					);
		$value=array(
						$object,
						$value,
						$keyword
					);	
		
		$sql="SELECT * FROM url_alias WHERE object = '" .$object . "' AND value = '".$id."'";
		$query = $this->db->query($sql);
		if(count($query->rows) > 0)
		{
			$where="object = '".$object."' AND `value` = '".$id."'";
			$this->db->updateData("url_alias",$field,$value,$where);
		}
		else
		{
			$this->db->insertData("url_alias",$field,$value);
		}
	}
	
	public function deleteSEOURL($object, $id)
	{
		$sql = "DELETE FROM url_alias where `object` = '".$object."' AND `value` = '".$id."' ";	
		$this->db->query($sql);
	}
	
	
	public function explodeReferSitemap($refersitemap)
	{
		$refersitemap = str_replace("][",",",$refersitemap);
		$refersitemap = str_replace("[","",$refersitemap);
		$refersitemap = str_replace("]","",$refersitemap);
		
		$arr = explode(",",$refersitemap);
		return $arr;
	}
	
	public function setOG($title = '', $url = '', $image = '', $summary = '', $description = '', $publicdate = '', $revisiondate = ''){		
		$this->og_title = $title;
		$this->og_url = $url;
		$this->og_image = $image;		
		$this->og_description = strip_tags($summary);
		$this->og_publicdate = $publicdate;
		$this->og_revisiondate = $revisiondate;
	}
	
	public function visitorsOnline()
	{
		$session_path = DIR_FILE."cachedb/";
		
		$current_session_path = $session_path."sess_".session_id().".txt";
		
		//if((int)$this->settings['webcounter'] == 0){ $this->settings['webcounter'] = 0;}
		
		if(file_exists($current_session_path)){
			$checktime = time() - fileatime($current_session_path);
			if($checktime >= (3 * 60))
			{
				@unlink($current_session_path);	
				$handle = fopen($current_session_path, 'w');
				fwrite($handle, "elifesmartweb");
				fclose($handle);
			}
		}
		else
		{
			$handle = fopen($current_session_path, 'w');
			fwrite($handle, "elifesmartweb");
			fclose($handle);
			
			$this->settings['webcounter'] = (int)$this->settings['webcounter'] + 1;
		}
		
		$files = glob($session_path . 'sess_*');
		
		$count = 0; 
		if(count($files)>0)
		{
			foreach ($files as $file) 
			{
				//$time = end(explode('.', basename($file)));
				$time = fileatime($file);
				if ((time() - $time) < (3 * 60)) {
					$count++; 
				}
				else
				{
					if ((time() - $time) > (20 * 60)) {
						@unlink($file);	
					}
				}
			}	
		}
		
		
		if((int)$this->settings['webcounter'] < $count){ $this->settings['webcounter'] = $count;}
		
		$this->config->set("setting_webcounter", (int)$this->settings['webcounter']);
		
		return $count;
	}
	
	public function getSetting()
	{
		$filename = DIR_FILE."setting/setting.json";
		$handle = fopen($filename, "r");
		@$contents = fread($handle, filesize($filename));
		fclose($handle);
		$obj = json_decode($contents);
		if(count($obj))
		{
			foreach($obj as $key=>$item)
			{
				$this->config->set("setting_".$key, $item);
				$this->settings[$key] = $item;
			}
		}
	}
	
	private function saveSetting()
	{
		$this->settings['webcounter'] = $this->config->get("setting_webcounter");
		$filename = DIR_FILE."setting/setting.json";
		$str = json_encode($this->settings);
		$fp = fopen($filename, 'w');
		fwrite($fp, $str);
		fclose($fp);
	}

}
?>