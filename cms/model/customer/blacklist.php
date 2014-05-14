<?php 
class ModelCustomerBlacklist extends Model{

	public function insert($ip){
		$siteid = $this->member->getSiteId();
		
		$field = array(
						'`siteid`',
						'`ip`'
					);
				
		$value = array(
						$siteid,
						$ip		
					);
		
		$this->db->insertData("customer_ip_blacklist", $field, $value);
	}
	
	public function delete($customer_ip_blacklist_id){
		$this->db->query("DELETE FROM `customer_ip_blacklist` WHERE customer_ip_blacklist_id = '" . $customer_ip_blacklist_id . "'");
	}
	
	public function getList($where = ''){
		$sql = "SELECT * FROM `customer_ip_blacklist` WHERE siteid = '" . $this->member->getSiteId() . "'" . $where;
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
}
?>