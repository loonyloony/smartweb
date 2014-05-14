<?php 
class ModelProductOption extends Model{
	/*******************************************
	* get option type
	********************************************/
	private $optiontype = array(
								'checkbox',
								'text',
								'radio',
								'image',
								'label'
							);
							
	public function getOptionType(){
		return $this->optiontype;	
	}
	
	/*******************************************
	* insert option
	********************************************/
	public function insert($data){
		$siteid = $this->member->getSiteId();
		$type = $this->db->escape(@$data['type']);
		$sortorder = '1';
		
		$field = array(
						'`siteid`',
						'`type`',
						'`sortorder`'
					);
					
		$value = array(
						$siteid,
						$type,
						$sortorder
					);
					
		$this->db->insertData("option", $field, $value);
		
		$optionid = $this->db->getLastId();
		
		if(isset($data['option_description'])){
			foreach($data['option_description'] as $languageid => $option_description){
				$optionid = (int)$optionid;
				$languageid = $languageid;
				$name = $this->db->escape($option_description['name']);
				
				$field = array(
								'`optionid`',
								'`languageid`',
								'`name`'
							);
							
				$value = array(
								$optionid,
								$languageid,
								$name
							);
							
				$this->db->insertData("option_description", $field, $value);
			}
		}
		
		if(isset($data['option_value'])){
			foreach($data['option_value'] as $option_value){
				$optionid = (int)$optionid;
				$image = $this->db->escape(html_entity_decode(@$option_value['image'], ENT_QUOTES, 'UTF-8'));
				$sortorder = $this->db->escape(@$option_value['sortorder']);
				
				$field = array(
								'`optionid`',
								'`image`',
								'`sortorder`'
							);
							
				$value = array(
								$optionid,
								$image,
								$sortorder
							);
							
				$this->db->insertData("option_value", $field, $value);
				
				$option_value_id = $this->db->getLastId();
				
				if(isset($option_value['option_value_description'])){
					foreach($option_value['option_value_description'] as $languageid => $option_value_description){
						$option_value_id = (int)$option_value_id;
						$languageid = $languageid;
						$optionid = (int)$optionid;
						$name = $this->db->escape(@$option_value_description['name']);
						
						$field = array(
										'`option_value_id`',
										'`languageid`',
										'`optionid`',
										'`name`'
									);
									
						$value = array(
										$option_value_id,
										$languageid,
										$optionid,
										$name
									);
						
						$this->db->insertData("option_value_description", $field, $value);
					}
				}
			}
		
		}	
	}
	
	/*******************************************
	* update option
	********************************************/
	public function update($data){
		$optionid = $this->db->escape(@$data['optionid']);
		$siteid = $this->member->getSiteId();
		$type = $this->db->escape(@$data['type']);
		
		$field = array(
						'`siteid`',
						'`type`'
					);
					
		$value = array(
						$siteid,
						$type
					);
					
		$where = " optionid = '" . $optionid . "'";
		$this->db->updateData("option", $field, $value, $where);
		
		$this->db->query("DELETE FROM option_description WHERE optionid = '" . (int)$optionid . "'");
		
		if(isset($data['option_description'])){
			foreach($data['option_description'] as $languageid => $option_description){
				$optionid = (int)$optionid;
				$languageid = $languageid;
				$name = $this->db->escape(@$option_description['name']);
				
				$field = array(
								'`optionid`',
								'`languageid`',
								'`name`'
							);
							
				$value = array(
								$optionid,
								$languageid,
								$name
							);
							
				$this->db->insertData("option_description", $field, $value);
			}
		}
		
		$this->db->query("DELETE FROM `option_value` WHERE optionid = '" . (int)$optionid . "'");
		$this->db->query("DELETE FROM `option_value_description` WHERE optionid = '" . (int)$optionid . "'");
		
		if(isset($data['option_value'])){
			foreach($data['option_value'] as $option_value){
				$optionid = (int)$optionid;
				$image = $this->db->escape(html_entity_decode(@$option_value['image'], ENT_QUOTES, 'UTF-8'));
				$sortorder = $this->db->escape(@$option_value['sortorder']);
				
				$field = array(
								'`optionid`',
								'`image`',
								'`sortorder`'
							);
							
				$value = array(
								$optionid,
								$image,
								$sortorder
							);
							
				$this->db->insertData("option_value", $field, $value);
				
				$option_value_id = $this->db->getLastId();
				
				if(isset($option_value['option_value_description'])){
					foreach($option_value['option_value_description'] as $languageid => $option_value_description){
						$option_value_id = (int)$option_value_id;
						$languageid = $languageid;
						$optionid = (int)$optionid;
						$name = $this->db->escape(@$option_value_description['name']);
						
						$field = array(
										'`option_value_id`',
										'`languageid`',
										'`optionid`',
										'`name`'
									);
									
						$value = array(
										$option_value_id,
										$languageid,
										$optionid,
										$name
									);
						
						$this->db->insertData("option_value_description", $field, $value);
					}
				}
			}
		}	
	}
	
	/*******************************************
	* delete option
	********************************************/
	public function deleteOption($optionid){
		$this->db->query("DELETE FROM `option` WHERE optionid = '" . (int)$optionid . "'");
		$this->db->query("DELETE FROM `option_description` WHERE optionid = '" . (int)$optionid . "'");	
		$this->db->query("DELETE FROM `option_value` WHERE optionid = '" . (int)$optionid . "'");
		$this->db->query("DELETE FROM `option_value_description` WHERE optionid = '" . (int)$optionid . "'");	
	}
	
	/*******************************************
	* get item
	********************************************/
	public function getItem($optionid){
		$sql = "SELECT 		* 
				FROM 		`option` o 
							LEFT JOIN option_description od ON (o.optionid = od.optionid) 
				WHERE 		o.optionid = '" . (int)$optionid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	/*******************************************
	* get item by languageid
	********************************************/
	public function getOptionList($where = ''){
		$sql = "SELECT 		* 
				FROM 		`option` o 
							LEFT JOIN option_description od ON (o.optionid = od.optionid) 
				WHERE 		od.languageid = '" . $this->config->get('config_languageid') . "'". $where;
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	/*******************************************
	* get list
	********************************************/
	public function getList($data = array()){
		$sql = "SELECT 		* 
				FROM 		`option` o
							LEFT JOIN `option_description` od ON (o.optionid = od.optionid)
				WHERE		od.languageid = '" . $this->config->get('config_languageid') . "'";
		
		if (isset($data['filter_name']) && !is_null($data['filter_name'])) {
			$sql .= " AND LCASE(od.name) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
		}

		$sort_data = array(
			'o.type',
			'o.sortorder'
		);	
		
		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY o.sortorder";	
		}
		
		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}					

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
		
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}	
		
		$query = $this->db->query($sql);

		return $query->rows;	
	}
	
	/*******************************************
	* get option descriptions
	********************************************/
	public function getOptionDescriptions($optionid){
		$option_data = array();
		
		$sql = "SELECT * FROM option_description WHERE optionid = '" . (int)$optionid . "'";
		
		$query = $this->db->query($sql);
				
		foreach ($query->rows as $result) {
			$option_data[$result['languageid']] = array(
															'name' 			=> $result['name'],
															'languageid'	=> $result['languageid']
														);
		}
		
		return $option_data;
	}
	
	public function getListOptionDescriptions(){
		$option_data = array();
		
		$sql = "SELECT * FROM option_description WHERE 1=1 ";
		
		$query = $this->db->query($sql);
				
		foreach ($query->rows as $result) {
			$option_data[$result['languageid']] = array('name' => $result['name']);
		}
		
		return $option_data;
	}
	
	/*******************************************

	* get option values
	********************************************/
	public function getOptionValues($optionid, $languageid){
		$option_value_data = array();
		
		$sql = "SELECT 		* 
				FROM 		option_value ov 
							LEFT JOIN option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) 
				WHERE 		ov.optionid = '" . (int)$optionid . "' 
							AND ovd.languageid = '" . $languageid . "' 
				ORDER BY 	ov.sortorder ASC";
		$option_value_query = $this->db->query($sql);
				
		foreach ($option_value_query->rows as $option_value) {
			$option_value_data[] = array(
				'option_value_id' => $option_value['option_value_id'],
				'name'            => $option_value['name'],
				'image'           => $option_value['image'],
				'sortorder'      => $option_value['sortorder']
			);
		}
		
		return $option_value_data;
	}
	
	/*******************************************
	* get option value descriptions
	********************************************/
	public function getOptionValueDescriptions($optionid){
		$option_value_data = array();
		
		$sql = "SELECT * FROM option_value WHERE optionid = '" . (int)$optionid . "'";
		$option_value_query = $this->db->query($sql);
				
		foreach ($option_value_query->rows as $option_value) {
			$option_value_description_data = array();
			
			$sql = "SELECT * FROM option_value_description WHERE option_value_id = '" . (int)$option_value['option_value_id'] . "'";
			$option_value_description_query = $this->db->query($sql);			
			
			foreach ($option_value_description_query->rows as $option_value_description) {
				$option_value_description_data[$option_value_description['languageid']] = array(
																								'name' 			=> $option_value_description['name'],
																								'languageid'	=> $option_value_description['languageid']
																								);
			}
			
			$option_value_data[] = array(
				'option_value_id'          	=> $option_value['option_value_id'],
				'option_value_description' 	=> $option_value_description_data,
				'image'                    	=> $option_value['image'],
				'sortorder'               	=> $option_value['sortorder']
			);
		}
		
		return $option_value_data;
	}
	
	/*******************************************
	* get total options
	********************************************/
	public function getTotalOptions() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `option`"); 
		
		return $query->row['total'];
	}
	
	/*******************************************
	* sort order option
	********************************************/
	public function sortorder($optionid, $sortorder){
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " optionid = '" . $optionid . "'";
		
		$this->db->updateData("option", $field, $value, $where);
	}
}
?>