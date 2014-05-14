<?php 
class ModelCustomerCustomergroup extends Model{
	
	public function getList($where, $to, $from){
		$sql = "SELECT 		* 
				FROM		customer_group cg
							LEFT JOIN customer_group_description cgd ON (cg.customer_group_id = cgd.customer_group_id)
				WHERE		languageid = '" . $this->config->get('config_languageid') . "'" . $where ;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$sql .= " ORDER BY sortorder";
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getItem($customer_group_id){
		$sql = "SELECT * FROM `customer_group` WHERE customer_group_id = '" . $customer_group_id . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function delete($customer_group_id){
		$this->db->query("DELETE FROM `customer_group` WHERE customer_group_id = '" . $customer_group_id . "'");
		$this->db->query("DELETE FROM `customer_group_description` WHERE customer_group_id = '" . $customer_group_id . "'");
	}
	
	public function sortorder($customer_group_id, $sortorder){
		
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " customer_group_id = '" . $customer_group_id . "'";
		
		$this->db->updateData("customer_group", $field, $value, $where);	
	}
	
	public function checkApproval($customer_group_id, $approval){
		
		$field = array(
						'`approval`'
					);
					
		$value = array(
						$approval
					);
					
		$where = " customer_group_id = '" . $customer_group_id . "'";
		
		$this->db->updateData("customer_group", $field, $value, $where);
	}
	
	public function getDescriptions($customer_group_id){
		$data_customer_group_descriptions = array();
		$sql = "SELECT * FROM `customer_group_description` WHERE customer_group_id = '" . $customer_group_id . "'";
		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$data_customer_group_descriptions[$item['languageid']] = $item;
			}
		}
		return $data_customer_group_descriptions;
	}
	
	public function insert($data){
		$siteid = $this->member->getSiteId();
		$approval = 1;
		$sortorder = 1;
		
		$field = array(
						'`siteid`',
						'`approval`',
						'`sortorder`'
					);
					
		$value = array(
						$siteid,
						$approval,
						$sortorder
					);
		
		$customer_group_id = $this->db->insertData("customer_group", $field, $value);
		
		if(isset($data['customer_group_description'])){
			foreach($data['customer_group_description'] as $languageid => $item){
				$customer_group_id = (int)$customer_group_id;
				$languageid = $languageid;
				$name = $this->db->escape(@$item['name']);
				$description = $this->db->escape(@$item['description']);
				
				$field = array(
								'`customer_group_id`',
								'`languageid`',
								'`name`',
								'`description`'
							);
							
				$value = array(
								$customer_group_id,
								$languageid,
								$name,
								$description
							);
							
				$this->db->insertData("customer_group_description", $field, $value);
			}
		}
	}
	
	public function update($data){
		$customer_group_id = (int)$this->db->escape(@$data['customer_group_id']);
		$siteid = $this->member->getSiteId();
		
		$field = array(
						'`siteid`'
					);
					
		$value = array(
						$siteid
					);
		
		$where = " customer_group_id = '" . $customer_group_id . "'";
		$this->db->updateData("customer_group", $field, $value, $where);
		
		$sql = "DELETE FROM `customer_group_description` WHERE customer_group_id = '" . $customer_group_id . "'";
		$this->db->query($sql);
		
		if(isset($data['customer_group_description'])){
			foreach($data['customer_group_description'] as $languageid => $item){
				$customer_group_id = (int)$customer_group_id;
				$languageid = $languageid;
				$name = $this->db->escape(@$item['name']);
				$description = $this->db->escape(@$item['description']);
				
				$field = array(
								'`customer_group_id`',
								'`languageid`',
								'`name`',
								'`description`'
							);
							
				$value = array(
								$customer_group_id,
								$languageid,
								$name,
								$description
							);
							
				$this->db->insertData("customer_group_description", $field, $value);
			}
		}
	}
	
	public function getCustomerGroupNames($where = "")
	{
		$sql = "Select * from `customer_group_description` where 1=1" . $where;
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
}
?>