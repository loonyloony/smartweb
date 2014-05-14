<?php
class ModelCoreSite extends Model 
{
	public function getList()
	{
		$query = $this->db->query("Select * from `site`");
		return $query->rows;
	}
	
	public function getItem($siteid)
	{
		$query = $this->db->query("Select * from `site` where siteid = '".$siteid."'");
		return $query->row;
	}
	
	public function getStatusList()
	{
		return array(
					"Active"=>"Active",
					"Pause"=>"Pause"
				);
	}
	
	public function insertSite($data)
	{
		$siteid=$this->db->escape(@$data['siteid']);
		$sitename=$this->db->escape(@$data['sitename']);
		$slogan=$this->db->escape(@$data['slogan']);
		$logo=$this->db->escape(@$data['logo']);
		$symbol=$this->db->escape(@$data['symbol']);
		$currency=$this->db->escape(@$data['currency']);
		$contactemail=$this->db->escape(@$data['contactemail']);
		$siteurl=$this->db->escape(@$data['siteurl']);
		$language=$this->db->escape(@$data['language']);
		$pagetopic=$this->db->escape(@$data['pagetopic']);
		$description=$this->db->escape(@$data['description']);
		$keywords=$this->db->escape(@$data['keywords']);
		$status=$this->db->escape(@$data['status']);
		$imageskype=$this->db->escape(@$data['imageskype']);
		$imageyahoo=$this->db->escape(@$data['imageyahoo']);
		$googleanalytics=$this->db->escape(@$data['googleanalytics']);
		$field=array(
						'`siteid`',
						'`sitename`',
						'`slogan`',
						'`logo`',
						'`symbol`',
						'`currency`',
						'`contactemail`',
						'`siteurl`',
						'`language`',
						'`pagetopic`',
						'`description`',
						'`keywords`',
						'`status`',
						'`googleanalytics`',
						'`imageyahoo`',
						'`imageskype`'
					);
		$value=array(
						$siteid,
						$sitename,
						$slogan,
						$logo,
						$symbol,
						$currency,
						$contactemail,
						$siteurl,
						$language,
						$pagetopic,
						$description,
						$keywords,
						$status,
						$googleanalytics,
						$imageyahoo,
						$imageskype
					);
		$this->db->insertData("site",$field,$value);
	}
	
	public function updateSite($data)
	{
		
		$siteid=$this->db->escape(@$data['siteid']);
		$sitename=$this->db->escape(@$data['sitename']);
		$slogan=$this->db->escape(@$data['slogan']);
		$logo=$this->db->escape(@$data['logo']);
		$symbol=$this->db->escape(@$data['symbol']);
		$currency=$this->db->escape(@$data['currency']);
		$contactemail=$this->db->escape(@$data['contactemail']);
		$siteurl=$this->db->escape(@$data['siteurl']);
		$language=$this->db->escape(@$data['language']);
		$pagetopic=$this->db->escape(@$data['pagetopic']);
		$description=$this->db->escape(@$data['description']);
		$keywords=$this->db->escape(@$data['keywords']);
		$status=$this->db->escape(@$data['status']);
		$imageskype=$this->db->escape(@$data['imageskype']);
		$imageyahoo=$this->db->escape(@$data['imageyahoo']);
		$googleanalytics=$this->db->escape(@$data['googleanalytics']);
		$field=array(
						'`siteid`',
						'`sitename`',
						'`slogan`',
						'`logo`',
						'`symbol`',
						'`currency`',
						'`contactemail`',
						'`siteurl`',
						'`language`',
						'`pagetopic`',
						'`description`',
						'`keywords`',
						'`status`',
						'`googleanalytics`',
						'`imageyahoo`',
						'`imageskype`'
					);
		$value=array(
						$siteid,
						$sitename,
						$slogan,
						$logo,
						$symbol,
						$currency,
						$contactemail,
						$siteurl,
						$language,
						$pagetopic,
						$description,
						$keywords,
						$status,
						$googleanalytics,
						$imageyahoo,
						$imageskype
					);
					
		$where="siteid = '".$siteid."'";
		$this->db->updateData("site",$field,$value,$where);
	}	
			
	public function deleteSite($siteid)
	{
		$siteid=$this->db->escape(@$siteid);
		$where="siteid = '".$siteid."'";
		$this->db->deleteData('site',$where);
	}
	
	public function deleteSites($data)
	{
		foreach($data as $siteid)
		{
			$this->deleteSite($siteid);
		}		
	}
	
	public function updateSetting($data,$siteid)
	{
		$keys = array();
		$values = array();
		if(count($data) > 0) {
			foreach($data as $k => $v) {
				$keys[] = $k;
				$values[] = $this->db->escape(@$v);
			}
			$where="siteid = '".$siteid."'";
			$this->db->updateData("site",$keys,$values,$where);
		}
		
	}
	
}

?>