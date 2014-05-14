<?php 
class ModelCustomerCustomer extends Model{
	
	
	public function getListByLanguageid($languageid){
		$sql = "SELECT 		* 
				FROM 		`customer_group` cg 
							LEFT JOIN customer_group_description cgd ON (cg.customer_group_id = cgd.customer_group_id) 
				WHERE 		cgd.languageid = '" . $languageid . "'
				ORDER BY	sortorder";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function checkApproved($customerid, $approved){
		
		$field = array(
						'`approved`'
					);
					
		$value = array(
						$approved
					);
					
		$where = " customerid = '" . $customerid . "'";
		
		$this->db->updateData("customer", $field, $value, $where);
	}
	
	public function getList($where, $to, $from){
		$sql = "SELECT 		* 
				FROM		customer
				WHERE		1=1 " . $where ;
		
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$sql .= " ORDER BY date_added";
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getItem($customerid){
		$sql = "SELECT * FROM `customer` WHERE customerid = '" . $customerid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function insert($data){
		$customer_group_id = $this->db->escape(@$data['customer_group_id']);
		$siteid = $this->member->getSiteId();
		$firstname = $this->db->escape(@$data['firstname']);
		$lastname = $this->db->escape(@$data['lastname']);
		$email = $this->db->escape(@$data['email']);
		$telephone = $this->db->escape(@$data['telephone']);
		$fax = $this->db->escape(@$data['fax']);
		$password = $this->db->escape(@$data['password']);
		$ip = $this->db->escape(@$this->request->server['REMOTE_ADDR']);
		$approved = 1;
		$activecode = $this->db->escape(@$data['activecode']);
		$date_added = $this->date->getToday();
		
		$field = array(
						'`customer_group_id`',
						'`siteid`',
						'`firstname`',
						'`lastname`',
						'`email`',
						'`telephone`',
						'`fax`',
						'`password`',
						'`ip`',
						'`approved`',
						'`activecode`',
						'`date_added`'
					);
					
		$value = array(
						$customer_group_id,
						$siteid,
						$firstname,
						$lastname,
						$email,
						$telephone,
						$fax,
						md5($password),
						$ip,
						$approved,
						$activecode,
						$date_added
					);
		
		$this->db->insertData("customer", $field, $value);
		
		$customerid = $this->db->getLastId();

		$field = array(
						'`token`'
					);
		$value = array(
						md5($customerid)
					);
					
		$where = " customerid = '" . $customerid . "'";
		
		$this->db->updateData("customer", $field, $value, $where);
	}
	
	public function update($data){
		$customerid = $this->db->escape(@$data['customerid']);
		$customer_group_id = $this->db->escape(@$data['customer_group_id']);
		$siteid = $this->member->getSiteId();
		$firstname = $this->db->escape(@$data['firstname']);
		$lastname = $this->db->escape(@$data['lastname']);
		$email = $this->db->escape(@$data['email']);
		$telephone = $this->db->escape(@$data['telephone']);
		$fax = $this->db->escape(@$data['fax']);
		
		$field = array(
						'`customer_group_id`',
						'`siteid`',
						'`firstname`',
						'`lastname`',
						'`email`',
						'`telephone`',
						'`fax`'
					);
					
		$value = array(
						$customer_group_id,
						$siteid,
						$firstname,
						$lastname,
						$email,
						$telephone,
						$fax
					);
		
		$where = " customerid = '" . $customerid . "'";
		
		$this->db->updateData("customer", $field, $value);
	}
	
	public function delete($customerid){
		$this->db->query("DELETE FROM `customer` WHERE customerid = '" . $customerid . "'");
	}
	
	public function changePassword($customerid, $password){
		$password = $this->db->escape(@$password);
		
		$field = array(
						'`password`'
					);
		
		$value = array(
						md5($password)
					);
					
		$where = " customerid = '" . $customerid . "'";
		
		$this->db->updateData("customer", $field, $value, $where);	
	}
}
?>