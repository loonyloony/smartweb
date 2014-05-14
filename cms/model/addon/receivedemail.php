<?php 
class ModelAddonReceivedemail extends Model{
	
	public function insert($data){	

		$fullname = $this->db->escape(@$data['fullname']);
		$email = $this->db->escape(@$data['email']);
		$registereddate = $this->date->getToday();
		
		$field = array(
						'`fullname`',
						'`email`',
						'`registereddate`'
					);	
					
		$value = array(
						$fullname,
						$email,
						$registereddate
					);
					
		$this->db->insertData("receivedemail", $field, $value);

	}
	
	public function update($data){
		
		$fullname = $this->db->escape(@$data['fullname']);
		$email = $this->db->escape(@$data['email']);
		$registereddate = $this->date->getToday();
		
		$field = array(
						'`fullname`',
						'`email`',
						'`registereddate`'
					);	
					
		$value = array(
						$fullname,
						$email,
						$registereddate
					);
		
		$where = " id = '" . $data['id'] . "'";
		$this->db->updateData("receivedemail", $field, $value, $where);
	}
	
	public function getList($where = ''){
				
		$sql = "SELECT * FROM `receivedemail` WHERE 1=1 " . $where . "ORDER BY registereddate";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function delete($id){
		$this->db->query("DELETE FROM `receivedemail` WHERE id = '" . $id . "'");
	}
	
	public function getItem($id){
		$sql = "SELECT * FROM `receivedemail` WHERE id = '" . $id . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
}
?>