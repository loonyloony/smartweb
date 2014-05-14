<?php
class ModelCoreMedia extends Model
{ 
	public function getItem($mediaid, $where="")
	{
		$result = array();
		if($this->smartweb->objectid == $mediaid)
		{
			$result = $this->smartweb->media;	
		}
		if(count($result) <= 0)
		{
			$mediaid = $this->db->escape($mediaid);
			$query = $this->db->query("Select `media`.* 
										from `media` 
										where mediaid ='".$mediaid."' AND languageid = '".$this->config->get('config_languageid')."' ".$where);
			//$query->row['media_file'] = $this->getMedia_Files($mediaid);
			$result = $query->row;
		}
		return $result;
	}
	
	public function get1Item($where="")
	{
		$query = $this->db->query("Select `media`.* 
									from `media` 
									where languageid = '".$this->config->get('config_languageid')."' ".$where);
		//$query->row['media_file'] = $this->getMedia_Files($mediaid);
		$result = $query->row;
	
		return $result;
	}
	
	public function getMedia_Files($mediaid)
	{
		$data_file = array();
		
		$sql = "SELECT		mf.*, mfd.title
				FROM		`media_file` mf
							LEFT JOIN `media_file_description` mfd ON (mf.mediafileid = mfd.mediafileid AND mfd.languageid = '".$this->config->get('config_languageid')."')
				WHERE		mf.mediaid = '" . $mediaid . "'";

		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$data_file[] = $item;
			}	
		}
		
		return $data_file;
	}
	
	public function getListFAQ($where = '' , $limit = ''){
		$sql = "SELECT 		*
				FROM		`media`
				WHERE		refersitemap like '%[" . $this->smartweb->sitemapid . "]%'
							AND languageid = '" . $this->config->get('config_languageid')."'". $where . $limit;
		$query = $this->db->query($sql);
							
		return $query->rows;
	}
	
	public function getList($where = '' , $from = '', $to = ''){
		$sql = "SELECT 		*
				FROM		`media`
				WHERE		refersitemap like '%[" . $this->smartweb->sitemapid . "]%'
							AND languageid = '" . $this->config->get('config_languageid')."'
							AND status = 'active' ". $where . " 
				ORDER BY 	position desc, statusdate desc ";

		if($from."" != ''){
			$sql .= " LIMIT ". $from . "," . $to;	
		}
		
		$query = $this->db->query($sql);
							
		return $query->rows;
	}
	
	public function getListMedia($where = '' , $from = '', $to = ''){
		$sql = "SELECT 		*
				FROM		`media`
				WHERE		languageid = '" . $this->config->get('config_languageid')."'
							AND status = 'active' ". $where . " 
				ORDER BY 	position desc, updateddate desc ";

		if($from."" != ''){
			$sql .= " LIMIT ". $from . "," . $to;	
		}
		
		$query = $this->db->query($sql);
							
		return $query->rows;
	}
	
	public function getListMediaTags($where = '' , $from = '', $to = ''){
		$sql = "SELECT 		*
				FROM		`media`
				LEFT JOIN  `tag` ON  `media`.refersitemap =  '[' +  `tag`.sitemapid +  ']'
				WHERE		`media`.languageid = '" . $this->config->get('config_languageid')."'
							AND `media`.status = 'active' ". $where . " 
				ORDER BY 	`media`.position desc, `media`.statusdate desc ";

		if($from."" != ''){
			$sql .= " LIMIT ". $from . "," . $to;	
		}
		
		$query = $this->db->query($sql);
							
		return $query->rows;
	}
	
	
	public function getListMediaNoLang($where = '' , $from = '', $to = ''){
		$sql = "SELECT 		*
				FROM		`media`
				WHERE		status = 'active' ". $where . " 
				ORDER BY 	position ASC, statusdate desc ";

		if($from."" != ''){
			$sql .= " LIMIT ". $from . "," . $to;	
		}
		
		$query = $this->db->query($sql);
							
		return $query->rows;
	}
	
	public function getListNews($where = '' , $from = '', $to = ''){
		$sql = "SELECT 		*
				FROM		`media`
				WHERE		languageid = '" . $this->config->get('config_languageid')."'
							AND status = 'active' ". $where . " 
				ORDER BY 	position desc, statusdate desc ";

		if($from."" != ''){
			$sql .= " LIMIT ". $from . "," . $to;	
		}
		
		$query = $this->db->query($sql);
							
		return $query->rows;
	}
	
	public function getInformation($mediaid, $fieldname){

		$sql = "Select * from media_information where mediaid = '".$mediaid."' and fieldname = '".$fieldname."'";
		$query = $this->db->query($sql);

		$info = $query->row;

		return $info['fieldvalue'];
	}
	
	public function getFileByMediaId($mediaid, $filetype="file"){
		$data_file = array();
		
		$sql = "SELECT		mf.*, mfd.title
				FROM		`media_file` mf
							LEFT JOIN `media_file_description` mfd ON (mf.mediafileid = mfd.mediafileid AND mfd.languageid = '".$this->config->get('config_languageid')."')
				WHERE		mf.mediaid = '" . $mediaid . "' and mf.filetype = '".$filetype."'";

		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$data_file[] = $item;
			}	
		}
		
		return $data_file;
	}
	
	public function getBlockNews($where = ''){
		$data_block_news = array();
		$sql = "SELECT 		*
				FROM		`media`
				WHERE		languageid = '" . $this->config->get('config_languageid')."'
							AND status = 'active' ". $where;

		$query = $this->db->query($sql);
							
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$item["link"] = $this->url->getURL($item['alias'], 'media', $item['mediaid']);
				$item["statusdate"] = $this->date->formatMySQLDate($item["statusdate"], "DMY", "/");
				$data_block_news[] = $item;
			}
		}
		
		return $data_block_news;
	}	
	
	public function getListMonth($where = '' , $from = '', $to = ''){
		$sql = "SELECT 		updateddate
				FROM		`media`
				WHERE		languageid = '" . $this->config->get('config_languageid')."'
							AND status = 'active' ". $where . "
				GROUP BY DATE_FORMAT(updateddate, '%Y%m')
				ORDER BY updateddate desc ";

		if($from."" != ''){
			$sql .= " LIMIT ". $from . "," . $to;	
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function updateViewcount($mediaid){
		$sql = "Update `media` set viewcount = viewcount + 1 where mediaid = '" . $mediaid . "'";
		$this->db->query($sql);
	}

}
?>