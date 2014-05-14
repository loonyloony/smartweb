<?php 
class ModelSidebarSupportonline extends Model{
	
	public function insert($data){
		$addonid = $this->db->escape(@$data['addonid']);
		$telephone = $this->db->escape(@$data['telephone']);
		$skype = $this->db->escape(@$data['skype']);
		$yahoo = $this->db->escape(@$data['yahoo']);
		$sortorder = 1;
		
		$field = array(
						'`addonid`',
						'`telephone`',
						'`skype`',
						'`yahoo`',
						'`sortorder`'
					);
					
		$value = array(
						$addonid,
						$telephone,
						$skype,
						$yahoo,
						$sortorder
					);
					
		$supportid = $this->db->insertData("support", $field, $value);
		
		if(isset($data['support_description'])){
			foreach($data['support_description'] as $languageid => $support_description){
				$supportid = (int)$supportid;
				$languageid = $languageid;
				$title = $this->db->escape(@$support_description['title']);
				$description = $this->db->escape(@$support_description['description']);
				
				$field = array(
								'`supportid`',
								'`title`',
								'`description`',
								'`languageid`'
							);	
							
				$value = array(
								$supportid,
								$title,
								$description,
								$languageid
							);
							
				$this->db->insertData("support_description", $field, $value);
			}	
		}
	}
	
	public function update($data){

		$supportid = $this->db->escape(@$data['supportid']);
		$addonid = $this->db->escape(@$data['addonid']);
		$telephone = $this->db->escape(@$data['telephone']);
		$skype = $this->db->escape(@$data['skype']);
		$yahoo = $this->db->escape(@$data['yahoo']);
		
		$field = array(
						'`addonid`',
						'`telephone`',
						'`skype`',
						'`yahoo`'
					);
					
		$value = array(
						$addonid,
						$telephone,
						$skype,
						$yahoo
					);
		
		$where = " supportid = '" . $supportid . "'";
		
		$this->db->updateData("support", $field, $value, $where);
		
		$this->db->deleteData("support_description", " supportid = '" . $supportid . "'");
		
		if(isset($data['support_description'])){
			foreach($data['support_description'] as $languageid => $support_description){
				$supportid = (int)$supportid;
				$languageid = $languageid;
				$title = $this->db->escape(@$support_description['title']);
				$description = $this->db->escape(@$support_description['description']);
				
				$field = array(
								'`supportid`',
								'`title`',
								'`description`',
								'`languageid`'
							);	
							
				$value = array(
								$supportid,
								$title,
								$description,
								$languageid
							);
							
				$this->db->insertData("support_description", $field, $value);
			}
		}
	}
	
	public function getList($where = ''){
		$support_data = array();
		
		$sql = "SELECT * FROM `support` WHERE 1=1 " . $where . "ORDER BY sortorder";
		$support_query = $this->db->query($sql);
		
		foreach($support_query->rows as $support){
			$support['link'] = "?route=sidebar/supportonline/update&addonid=" . $support['addonid'] . "&supportid=" . $support['supportid'];
			$sql = "SELECT * FROM `support_description` WHERE supportid = '" . $support['supportid'] . "' AND languageid = '" . $this->config->get('config_languageid') . "'";	
			$query = $this->db->query($sql);
			$support_data[] = array_merge($support, $query->row);
		}
		
		return $support_data;
	}
	
	public function delete($listsupportid){
		foreach($listsupportid as $supportid){
			$this->db->query("DELETE FROM `support` WHERE supportid = '" . $supportid . "'");
			$this->db->query("DELETE FROM `support_description` WHERE supportid = '" . $supportid . "'");
		}
	}
	
	public function getItem($supportid){
		$sql = "SELECT * FROM `support` WHERE supportid = '" . $supportid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getDescriptions($supportid){
		$support_description = array();
		$sql = "SELECT * FROM `support_description` WHERE supportid = '" . $supportid . "'";
		$query = $this->db->query($sql);
		
		foreach ($query->rows as $result) {
			$support_description[$result['languageid']] = array(
																	'title' 			=> $result['title'],
																	'description'		=>	$result['description']
																);
		}
		
		return $support_description;
	}
	
	public function sortorder($supportid, $sortorder){
		
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " supportid = '" . $supportid . "'";
		$this->db->updateData("support", $field, $value, $where);
	}
}
?>