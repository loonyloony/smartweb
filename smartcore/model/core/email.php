<?php 
class ModelCoreEmail extends Model{
	
	public function getItem($id){
		$sql = "SELECT * FROM `email` WHERE id = '" . $id . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getList($where = ""){
		$sql = "SELECT 		* 
				FROM 		`email` e
							LEFT JOIN `email_description` ed ON (e.id = ed.emailid)
				WHERE 		ed.languageid = '" . $this->config->get('config_languageid') . "' " . $where . "ORDER BY e.date_added";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getItemByEmail($email){
		$sql = "SELECT * FROM `email` WHERE email = '" . $email . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function insert($data){
		$email = $this->db->escape(@$data['email']);
		$date_added = $this->date->getToday();
		
		$field = array(
						'`email`',
						'`date_added`'
					);
					
		$value = array(
						$email,
						$date_added
					);
					
		$emailid = $this->db->insertData("email", $field, $value);
		
		if($data['email_description']){
			foreach($data['email_description'] as $languageid => $name){
				$field = array(
								'emailid',
								'name',
								'languageid'
							);
							
				$value = array(
								$emailid,
								$name,
								$languageid
							);
							
				$this->db->insertData("email_description", $field, $value);
			}
		}	
	}
	
	public function getDescriptions($emailid){
		$sql = "SELECT * FROM `email_description` WHERE emailid = '" . $emailid . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function update($data){
		$id = $this->db->escape(@$data['id']);
		$email = $this->db->escape(@$data['email']);
		
		$field = array(
						'`email`'
					);
					
		$value = array(
						$email
					);
		
		$where = " id = '" . $id . "'";
				
		$this->db->updateData("email", $field, $value, $where);
		
		$sql = "DELETE FROM `email_description` WHERE emailid = '" . $id . "'";
		$this->db->query($sql);
		
		if($data['email_description']){
			foreach($data['email_description'] as $languageid => $name){
				$field = array(
								'emailid',
								'name',
								'languageid'
							);
							
				$value = array(
								$id,
								$name,
								$languageid
							);
							
				$this->db->insertData("email_description", $field, $value);
			}
		}
	}
	
	public function delete($addonid)
	{
		$this->db->query("Delete from `addon` where addonid = '" . $addonid . "'");
		$this->db->query("Delete from `addon_description` where addonid = '" . $addonid . "'");
	}
}
?>