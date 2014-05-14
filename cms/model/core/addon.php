<?php 
class ModelCoreAddon extends Model{
	private $position = array(
								"left"	=>"left",
								"right"	=>"right"
							);
	
	public function getPosition(){
		return $this->position;	
	}
	
	public function getItem($addonid){
		$sql = "SELECT * FROM `addon` WHERE addonid = '" . $addonid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getList($where = ""){
		$sql = "SELECT 		* 
				FROM 		`addon` a
							LEFT JOIN `addon_description` ad ON (a.addonid = ad.addonid)
				WHERE 		ad.languageid = '" . $this->config->get('config_languageid') . "' " . $where . "ORDER BY sortorder";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getItemById($id){
		$sql = "SELECT * FROM `addon` WHERE id = '" . $id . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function insert($data){
		$addonid = $this->db->escape(@$data['addonid']);	
		$moduleid = $this->db->escape(@$data['moduleid']);
		$areacode = $this->db->escape(@$data['areacode']);
		$sortorder = 1;
		
		$field = array(
						'`addonid`',
						'`moduleid`',
						'`areacode`',
						'`sortorder`'
					);
					
		$value = array(
						$addonid,
						$moduleid,
						$areacode,
						$sortorder
					);
					
		$this->db->insertData("addon", $field, $value);
		
		if($data['addon_description']){
			foreach($data['addon_description'] as $languageid => $addonname){
				$field = array(
								'addonid',
								'addonname',
								'languageid'
							);
							
				$value = array(
								$addonid,
								$addonname,
								$languageid
							);
							
				$this->db->insertData("addon_description", $field, $value);
			}
		}	
	}
	
	public function getDescriptions($addonid){
		$sql = "SELECT * FROM `addon_description` WHERE addonid = '" . $addonid . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function update($data){
		$id = $this->db->escape(@$data['id']);
		$addonid = $this->db->escape(@$data['addonid']);	
		$moduleid = $this->db->escape(@$data['moduleid']);
		$areacode = $this->db->escape(@$data['areacode']);
		
		$field = array(
						'`addonid`',
						'`moduleid`',
						'`areacode`'
					);
					
		$value = array(
						$addonid,
						$moduleid,
						$areacode
					);
		
		$where = " id = '" . $id . "'";
				
		$this->db->updateData("addon", $field, $value, $where);
		
		$sql = "DELETE FROM `addon_description` WHERE addonid = '" . $addonid . "'";
		$this->db->query($sql);
		
		if($data['addon_description']){
			foreach($data['addon_description'] as $languageid => $addonname){
				$field = array(
								'addonid',
								'addonname',
								'languageid'
							);
							
				$value = array(
								$addonid,
								$addonname,
								$languageid
							);
							
				$this->db->insertData("addon_description", $field, $value);
			}
		}
	}
	
	public function sortorder($id, $sortorder){
		
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " id = '" . $id . "'";
		$this->db->updateData("addon", $field, $value, $where);
	}
	
	public function delete($addonid)
	{
		$this->db->query("Delete from `addon` where addonid = '" . $addonid . "'");
		$this->db->query("Delete from `addon_description` where addonid = '" . $addonid . "'");
	}
}
?>