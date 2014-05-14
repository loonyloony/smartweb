<?php 
class ModelProductFilter extends Model{
	/*******************************************
	* get filter type
	********************************************/
	private $filtertype = array(
								'checkbox',
								'text',
								'radio',
								'image',
								'label'
							);
							
	public function getOptionType(){
		return $this->filtertype;	
	}
	
	/*******************************************
	* insert filter
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
					
		$this->db->insertData("filter", $field, $value);
		
		$filterid = $this->db->getLastId();
		
		if(isset($data['filter_description'])){
			foreach($data['filter_description'] as $languageid => $filter_description){
				$filterid = (int)$filterid;
				$languageid = $languageid;
				$name = $this->db->escape($filter_description['name']);
				
				$field = array(
								'`filterid`',
								'`languageid`',
								'`name`'
							);
							
				$value = array(
								$filterid,
								$languageid,
								$name
							);
							
				$this->db->insertData("filter_description", $field, $value);
			}
		}	
	}
	
	/*******************************************
	* update filter
	********************************************/
	public function update($data){
		$filterid = $this->db->escape(@$data['filterid']);
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
					
		$where = " filterid = '" . $filterid . "'";
		$this->db->updateData("filter", $field, $value, $where);
		
		$this->db->query("DELETE FROM filter_description WHERE filterid = '" . (int)$filterid . "'");
		
		if(isset($data['filter_description'])){
			foreach($data['filter_description'] as $languageid => $filter_description){
				$filterid = (int)$filterid;
				$languageid = $languageid;
				$name = $this->db->escape(@$filter_description['name']);
				
				$field = array(
								'`filterid`',
								'`languageid`',
								'`name`'
							);
							
				$value = array(
								$filterid,
								$languageid,
								$name
							);
							
				$this->db->insertData("filter_description", $field, $value);
			}
		}
	}
	
	/*******************************************
	* delete filter
	********************************************/
	public function delete($filterid){
		$this->db->query("DELETE FROM `filter` WHERE filterid = '" . (int)$filterid . "'");
		$this->db->query("DELETE FROM `filter_description` WHERE filterid = '" . (int)$filterid . "'");	
		$this->db->query("DELETE FROM `filter_value` WHERE filterid = '" . (int)$filterid . "'");
		$this->db->query("DELETE FROM `filter_value_description` WHERE filterid = '" . (int)$filterid . "'");	
	}
	
	/*******************************************
	* get item
	********************************************/
	public function getItem($filterid){
		$sql = "SELECT 		* 
				FROM 		`filter` o 
							LEFT JOIN filter_description od ON (o.filterid = od.filterid) 
				WHERE 		o.filterid = '" . (int)$filterid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	/*******************************************
	* get item by languageid
	********************************************/
	public function getOptionList($where = ''){
		$sql = "SELECT 		* 
				FROM 		`filter` o 
							LEFT JOIN filter_description od ON (o.filterid = od.filterid) 
				WHERE 		od.languageid = '" . $this->config->get('config_languageid') . "'". $where;
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	/*******************************************
	* get list
	********************************************/
	public function getList($data = array()){
		$sql = "SELECT 		* 
				FROM 		`filter` o
							LEFT JOIN `filter_description` od ON (o.filterid = od.filterid)
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
	* get filter descriptions
	********************************************/
	public function getOptionDescriptions($filterid){
		$filter_data = array();
		
		$sql = "SELECT * FROM filter_description WHERE filterid = '" . (int)$filterid . "'";
		
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
	public function getOptionValues($filterid, $languageid){
		$filter_value_data = array();
		
		$sql = "SELECT 		* 
				FROM 		filter_value ov 
							LEFT JOIN filter_value_description ovd ON (ov.filter_value_id = ovd.filter_value_id) 
				WHERE 		ov.filterid = '" . (int)$filterid . "' 
							AND ovd.languageid = '" . $languageid . "' 
				ORDER BY 	ov.sortorder ASC";
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
	public function sortorder($filterid, $sortorder){
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " filterid = '" . $filterid . "'";
		
		$this->db->updateData("filter", $field, $value, $where);
	}
}
?>