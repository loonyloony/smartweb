<?php 
class ModelCoresidebar extends Model{
	private $position = array(
								"left"	=>"left",
								"right"	=>"right"
							);
	
	public function getPosition(){
		return $this->position;	
	}
	
	public function getItem($sidebarid){
		$sql = "SELECT * FROM `sidebar` WHERE sidebarid = '" . $sidebarid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getList($where = ""){
		$sql = "SELECT * FROM `sidebar` WHERE 1=1 " . $where;
		$sql .= " ORDER BY sidebarid";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getItemById($id){
		$sql = "SELECT * FROM `sidebar` WHERE id = '" . $id . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function insert($data){
		$sidebar_name = $this->db->escape(@$data['sidebar_name']);	
		
		$field = array(
						'`sidebar_name`'
					);
					
		$value = array(
						$sidebar_name
					);
					
		$this->db->insertData("sidebar", $field, $value);
		$sidebarid = $this->db->getLastId();
		
		if(isset($data['sidebar'])){
			foreach($data['sidebar'] as $key => $sidebar){
				$sidebarid = (int)$sidebarid;
				$addonid = (int)$sidebar;
				$sortorder = $data['sidebarorder'][$key];
				
				$field = array(
								'sidebarid',
								'addonid',
								'sortorder'
							);
							
				$value = array(
								$sidebarid,
								$addonid,
								$sortorder
							);
							
				$this->db->insertData("sidebar_addon", $field, $value);
			}
		}	
	}
	
	public function getDescriptions($sidebarid){
		$sql = "SELECT * FROM `sidebar_description` WHERE sidebarid = '" . $sidebarid . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function update($data){
		$sidebarid = (int)$this->db->escape(@$data['sidebarid']);
		$sidebar_name = $this->db->escape(@$data['sidebar_name']);	
		
		$field = array(
						'`sidebar_name`'
					);
					
		$value = array(
						$sidebar_name
					);
		
		$where = " sidebarid = '" . $sidebarid . "'";
				
		$this->db->updateData("sidebar", $field, $value, $where);
		
		$sql = "DELETE FROM `sidebar_addon` WHERE sidebarid = '" . $sidebarid . "'";
		$this->db->query($sql);
		
		if(isset($data['sidebar'])){
			foreach($data['sidebar'] as $key => $sidebar){
				$sidebarid = (int)$sidebarid;
				$addonid = (int)$sidebar;
				$sortorder = $data['sidebarorder'][$key];
				
				$field = array(
								'sidebarid',
								'addonid',
								'sortorder'
							);
							
				$value = array(
								$sidebarid,
								$addonid,
								$sortorder
							);
							
				$this->db->insertData("sidebar_addon", $field, $value);
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
		$this->db->updateData("sidebar", $field, $value, $where);
	}
	
	public function getListAddonBySidebarId($sidebarid){
		$sql = "SELECT * FROM `sidebar_addon` WHERE sidebarid = '" . $sidebarid . "'  ORDER BY sortorder";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function delete($sidebarid){
		$this->db->query("DELETE FROM `sidebar` WHERE sidebarid = '" . $sidebarid . "'");	
	}

}
?>