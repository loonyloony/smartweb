<?php 
class ModelProductFilteroption extends Model{
	
	/*******************************************
	* insert filter
	********************************************/
	public function insert($data){
		$filterid = $this->db->escape(@$data['filterid']);
		$sortorder = '1';
		
		$field = array(
						'`filterid`',
						'`sortorder`'
					);
					
		$value = array(
						$filterid,
						$sortorder
					);
					
		$this->db->insertData("filter_value", $field, $value);
		
		$filter_value_id = $this->db->getLastId();
		
		if(isset($data['filter_value_description'])){
			foreach($data['filter_value_description'] as $languageid => $filter_description){
				$filter_value_id = (int)$filter_value_id;
				$filterid = $this->db->escape(@$data['filterid']);
				$languageid = $languageid;
				$name = $this->db->escape($filter_description['name']);
				
				$field = array(
								'`filter_value_id`',
								'`filterid`',
								'`languageid`',
								'`name`'
							);
							
				$value = array(
								$filter_value_id,
								$filterid,
								$languageid,
								$name
							);
							
				$this->db->insertData("filter_value_description", $field, $value);
			}
		}	
	}
	
	/*******************************************
	* update filter
	********************************************/
	public function update($data){
		$filter_value_id = $this->db->escape(@$data['filter_value_id']);
		$filterid = $this->db->escape(@$data['filterid']);
		
		$field = array(
						'`filterid`'
					);
					
		$value = array(
						$filterid
					);
					
		$where = " filter_value_id = '" . $filter_value_id . "'";
		$this->db->updateData("filter_value", $field, $value, $where);
		
		$this->db->query("DELETE FROM filter_value_description WHERE filter_value_id = '" . (int)$filter_value_id . "'");
		
		if(isset($data['filter_value_description'])){
			foreach($data['filter_value_description'] as $languageid => $filter_description){
				$filter_value_id = (int)$filter_value_id;
				$filterid = $this->db->escape(@$data['filterid']);
				$languageid = $languageid;
				$name = $this->db->escape(@$filter_description['name']);
				
				$field = array(
								'`filter_value_id`',
								'`filterid`',
								'`languageid`',
								'`name`'
							);
							
				$value = array(
								$filter_value_id,
								$filterid,
								$languageid,
								$name
							);
							
				$this->db->insertData("filter_value_description", $field, $value);
			}
		}
	}
	
	/*******************************************
	* delete filter
	********************************************/
	public function delete($filter_value_id){	
		$this->db->query("DELETE FROM `filter_value` WHERE filter_value_id = '" . (int)$filter_value_id . "'");
		$this->db->query("DELETE FROM `filter_value_description` WHERE filter_value_id = '" . (int)$filter_value_id . "'");	
	}
	
	/*******************************************
	* get item
	********************************************/
	public function getItem($filter_value_id){
		$sql = "SELECT 		* 
				FROM 		`filter_value` fv
							LEFT JOIN filter_value_description fvd ON (fv.filter_value_id = fvd.filter_value_id) 
				WHERE 		fvd.filter_value_id = '" . (int)$filter_value_id . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	/*******************************************
	* get list
	********************************************/
	public function getList($data = array()){
		$sql = "SELECT 		DISTINCT * 
				FROM 		`filter_value` fv
							LEFT JOIN `filter_value_description` fvd ON (fv.filter_value_id = fvd.filter_value_id)
				WHERE		fvd.languageid = '" . $this->config->get('config_languageid') . "'";
		
		if (isset($data['filter_name']) && !is_null($data['filter_name'])) {
			$sql .= " AND LCASE(fvd.name) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
		}

		$sort_data = array(
			'fv.type',
			'fv.sortorder'
		);	
		
		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY fv.sortorder";	
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
	* get filter descriptions
	********************************************/
	public function getOptionDescriptions($filter_value_id){
		$filter_data = array();
		
		$sql = "SELECT * FROM filter_value_description WHERE filter_value_id = '" . (int)$filter_value_id . "'";
		
		$query = $this->db->query($sql);
				
		foreach ($query->rows as $result) {
			$filter_data[$result['languageid']] = array(
															'name' 			=> $result['name'],
															'languageid'	=> $result['languageid']
														);
		}
		
		return $filter_data;
	}
	
	public function getListOptionDescriptions(){
		$filter_data = array();
		
		$sql = "SELECT * FROM filter_description WHERE 1=1 ";
		
		$query = $this->db->query($sql);
				
		foreach ($query->rows as $result) {
			$filter_data[$result['languageid']] = array('name' => $result['name']);
		}
		
		return $filter_data;
	}
	
	/*******************************************

	* get filter values
	********************************************/
	public function getOptionValues($filterid, $languageid, $order = ''){
		$filter_value_data = array();
		if($order == '') {
			$sql = "SELECT 		* 
				FROM 		filter_value ov 
							LEFT JOIN filter_value_description ovd ON (ov.filter_value_id = ovd.filter_value_id) 
				WHERE 		ov.filterid = '" . (int)$filterid . "' 
							AND ovd.languageid = '" . $languageid . "' 
				ORDER BY 	ov.sortorder ASC";
		} else {
			$sql = "SELECT 		* 
				FROM 		filter_value ov 
							LEFT JOIN filter_value_description ovd ON (ov.filter_value_id = ovd.filter_value_id) 
				WHERE 		ov.filterid = '" . (int)$filterid . "' 
							AND ovd.languageid = '" . $languageid . "' 
				ORDER BY 	" . $order;
		}
		$filter_value_query = $this->db->query($sql);
				
		foreach ($filter_value_query->rows as $filter_value) {
			$filter_value_data[] = array(
				'filter_value_id' => $filter_value['filter_value_id'],
				'name'            => $filter_value['name'],
				'image'           => $filter_value['image'],
				'sortorder'      => $filter_value['sortorder']
			);
		}
		
		return $filter_value_data;
	}
	
	/*******************************************
	* get filter value descriptions
	********************************************/
	public function getOptionValueDescriptions($filterid){
		$filter_value_data = array();
		
		$sql = "SELECT * FROM filter_value WHERE filterid = '" . (int)$filterid . "'";
		$filter_value_query = $this->db->query($sql);
				
		foreach ($filter_value_query->rows as $filter_value) {
			$filter_value_description_data = array();
			
			$sql = "SELECT * FROM filter_value_description WHERE filter_value_id = '" . (int)$filter_value['filter_value_id'] . "'";
			$filter_value_description_query = $this->db->query($sql);			
			
			foreach ($filter_value_description_query->rows as $filter_value_description) {
				$filter_value_description_data[$filter_value_description['languageid']] = array(
																								'name' 			=> $filter_value_description['name'],
																								'languageid'	=> $filter_value_description['languageid']
																								);
			}
			
			$filter_value_data[] = array(
				'filter_value_id'          	=> $filter_value['filter_value_id'],
				'filter_value_description' 	=> $filter_value_description_data,
				'image'                    	=> $filter_value['image'],
				'sortorder'               	=> $filter_value['sortorder']
			);
		}
		
		return $filter_value_data;
	}
	
	/*******************************************
	* get total filters
	********************************************/
	public function getTotalOptions() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `filter`"); 
		
		return $query->row['total'];
	}
	
	/*******************************************
	* sort order filter
	********************************************/
	public function sortorder($filter_value_id, $sortorder){
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " filter_value_id = '" . $filter_value_id . "'";
		
		$this->db->updateData("filter_value", $field, $value, $where);
	}
}
?>