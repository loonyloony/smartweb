<?php 
class ModelAddonDownload extends Model{
	
	public function insert($data){	
		
		if(isset($data['weblink'])){
			foreach($data['weblink'] as $key => $item){
				$link = $this->db->escape(@$data['link']);
				$addonid = $this->db->escape(@$data['addonid']);
				$image = $this->db->escape($item['image']);
				$sortorder = 1;
				
				$field = array(
								'`link`',
								'`addonid`',
								'`image`',
								'`sortorder`'
							);	
							
				$value = array(
								$link,
								$addonid,
								$image,
								$sortorder
							);
							
				$weblinkid = $this->db->insertData("weblink", $field, $value);
				
				if(isset($item['weblink_description'])){
					if(count($item['weblink_description']) > 0){
						foreach($item['weblink_description'] as $key_language => $weblink_description){
							$weblinkid = $weblinkid;
							$languageid = $key_language;
							$title = $weblink_description;
							
							$field = array(
											'`weblinkid`',
											'`languageid`',
											'`title`'
										);
										
							$value = array(
											$weblinkid,
											$languageid,
											$title
										);
										
							$this->db->insertData("weblink_description", $field, $value);
						}
					}
				}
			}	
		}
	}
	
	public function update($data){
		
		$sql = "Select * from `weblink` where link = '" . $data['link'] . "' and addonid = 'downloadmenu'";
		$query = $this->db->query($sql);
		$arr = $query ->rows;
		if(count($arr) > 0){
			foreach($arr as $item){
				$this->db->query("DELETE FROM `weblink` WHERE weblinkid = '" . $item['weblinkid'] . "'");
				$this->db->query("DELETE FROM `weblink_description` WHERE weblinkid = '" . $item['weblinkid'] . "'");
			}
		}
		
		if(isset($data['weblink'])){
			foreach($data['weblink'] as $key => $item){
				$link = $this->db->escape(@$data['link']);
				$addonid = $this->db->escape(@$data['addonid']);
				$image = $this->db->escape($item['image']);
				$sortorder = 1;
				
				$field = array(
								'`link`',
								'`addonid`',
								'`image`',
								'`sortorder`'
							);	
							
				$value = array(
								$link,
								$addonid,
								$image,
								$sortorder
							);
							
				$weblinkid = $this->db->insertData("weblink", $field, $value);
				
				if(isset($item['weblink_description'])){
					if(count($item['weblink_description']) > 0){
						foreach($item['weblink_description'] as $key_language => $weblink_description){
							$weblinkid = $weblinkid;
							$languageid = $key_language;
							$title = $weblink_description;
							
							$field = array(
											'`weblinkid`',
											'`languageid`',
											'`title`'
										);
										
							$value = array(
											$weblinkid,
											$languageid,
											$title
										);
										
							$this->db->insertData("weblink_description", $field, $value);
						}
					}
				}
			}	
		}
	}
	
	public function getList($where = ''){
		$weblink_data = array();
		
		$sql = "SELECT * FROM `weblink` WHERE 1=1 " . $where . "ORDER BY sortorder";
		$weblink_query = $this->db->query($sql);
		
		foreach($weblink_query->rows as $weblink){
			//$weblink['linkedit'] = "?route=addon/download/update&addonid=" . $weblink['addonid'] . "&weblinkid=" . $weblink['weblinkid'];
			$sql = "SELECT * FROM `weblink_description` WHERE weblinkid = '" . $weblink['weblinkid'] . "'";	
			$query = $this->db->query($sql);
			$weblink['title'] = $query->rows;
			$weblink_data[] = $weblink;
		}
		
		return $weblink_data;
	}
	
	public function getListText($where = ''){
		$weblink_data = array();
		
		$sql = "SELECT * FROM `weblink` WHERE 1=1 " . $where . "ORDER BY sortorder";
		$weblink_query = $this->db->query($sql);
		
		foreach($weblink_query->rows as $weblink){
			//$weblink['linkedit'] = "?route=splash/bannertext/update&addonid=" . $weblink['addonid'] . "&weblinkid=" . $weblink['weblinkid'];
			$sql = "SELECT * FROM `weblink_description` WHERE weblinkid = '" . $weblink['weblinkid'] . "' AND languageid = '" . $this->config->get('config_languageid') . "'";	
			$query = $this->db->query($sql);
			$weblink_data[] = array_merge($weblink, $query->row);
		}
		
		return $weblink_data;
	}
	
	public function delete($listweblinkid){
		foreach($listweblinkid as $weblinkid){
			$sql = "Select * from `weblink` where link = '" . $weblinkid . "' and addonid = 'downloadmenu'";
			$query = $this->db->query($sql);
			$arr = $query ->rows;
			if(count($arr) > 0){
				foreach($arr as $item){
					$this->db->query("DELETE FROM `weblink` WHERE weblinkid = '" . $item['weblinkid'] . "'");
					$this->db->query("DELETE FROM `weblink_description` WHERE weblinkid = '" . $item['weblinkid'] . "'");
				}
			}
			//$this->db->query("DELETE FROM `weblink` WHERE weblinkid = '" . $weblinkid . "'");
			//$this->db->query("DELETE FROM `weblink_description` WHERE weblinkid = '" . $weblinkid . "'");
		}
	}
	
	public function getItem($weblinkid){
		$sql = "SELECT * FROM `weblink` WHERE weblinkid = '" . $weblinkid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getDescriptions($weblinkid){
		$weblink_description = array();
		$sql = "SELECT * FROM `weblink_description` WHERE weblinkid = '" . $weblinkid . "'";
		$query = $this->db->query($sql);
		
		foreach ($query->rows as $result) {
			$weblink_description[$result['languageid']] = array(
																	'title' 			=> $result['title'],
																	'description'		=>	$result['description']
																);
		}
		
		return $weblink_description;
	}
	
	public function sortorder($weblinkid, $sortorder){
		
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " weblinkid = '" . $weblinkid . "'";
		$this->db->updateData("weblink", $field, $value, $where);
	}
}
?>