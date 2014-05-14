<?php 
class ModelCustomerCustomer extends Model{
	
	
	public function getListByLanguageid(){
		$sql = "SELECT 		* 
				FROM 		`customer_group` cg 
							LEFT JOIN customer_group_description cgd ON (cg.customer_group_id = cgd.customer_group_id) 
				WHERE 		cgd.languageid = '" . $this->config->get('config_languageid') . "'
				ORDER BY	sortorder";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	
	
	public function checkApproved($customerid, $approved){
		
		$field = array(
						'`status`'
					);
					
		$value = array(
						$approved
					);
					
		$where = " customerid = '" . $customerid . "'";
		
		$this->db->updateData("customer", $field, $value, $where);
	}
	
	public function getList($where, $to = "", $from = ""){
		$sql = "SELECT 		* 
				FROM		customer
				WHERE		1=1 " . $where ;
		
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$sql .= " ORDER BY added_date";
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getItemByEmail($email){
		$sql = "SELECT * FROM `customer` WHERE email = '" . $email . "'";
		$query = $this->db->query($sql);		
		return $query->row;
	}
	
	public function getItemByAccount($account){
		$sql = "SELECT * FROM `customer` WHERE account = '" . $account . "'";
		$query = $this->db->query($sql);		
		return $query->row;
	}
	
	public function getItemByToken($token){
		$sql = "SELECT * FROM `customer` WHERE token = '" . $token . "'";
		$query = $this->db->query($sql);
		return $query->row;
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
		$account = $this->db->escape(@$data['account']);
		$email = $this->db->escape(@$data['email']);
		$telephone = $this->db->escape(@$data['telephone']);
		$password = $this->db->escape(@$data['password']);
		$address = $this->db->escape(@$data['address']);
		$birthdate = $this->date->formatViewDate($this->db->escape(@$data['birthdate']));
		$ip = $this->db->escape(@$this->request->server['REMOTE_ADDR']);
		$approved = 1;
		$status = 1;
		$activecode = $this->db->escape(@$data['activecode']);
		$updated_date = $this->date->getToday();
		$added_date = $this->date->getToday();
		$point = (int)$this->string->toNumber($this->db->escape(@$data['point']));
		$fax = $this->db->escape(@$data['fax']);
		$issuedate = $this->date->formatViewDate($this->db->escape(@$data['issuedate']));
		$identification = $this->db->escape(@$data['identification']);
		$birthplace = $this->db->escape(@$data['birthplace']);
		$gender = $this->db->escape(@$data['gender']);
		$customertype = $this->db->escape(@$data['customertype']);

		$field = array(
						'`customer_group_id`',
						'`siteid`',
						'`firstname`',
						'`lastname`',
						'`email`',
						'`account`',
						'`telephone`',
						'`address`',
						'`birthdate`',
						'`password`',
						'`ip`',
						'`activecode`',
						'`updated_date`',
						'`added_date`',
						'`point`',
						'`fax`',
						'`approved`',
						'`status`',
						'`issuedate`',
						'`identification`',
						'`birthplace`',
						'`gender`',
                        '`customertype`'
					);
					
		$value = array(
						$customer_group_id,
						$siteid,
						$firstname,
						$lastname,
						$email,
						$account,
						$telephone,
						$address,
						$birthdate,
						md5($password),
						$ip,
						$activecode,
						$updated_date,
						$added_date,
						$point,
						$fax,
						$approved,
						$status,
						$issuedate,
						$identification,
						$birthplace,
						$gender,
                        $customertype
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
		
		return $customerid;
	}
	
	public function update($data){
		$siteid = $this->member->getSiteId();
		$firstname = $this->db->escape(@$data['firstname']);
		$lastname = $this->db->escape(@$data['lastname']);
		$telephone = $this->db->escape(@$data['telephone']);
		$address = $this->db->escape(@$data['address']);
		$point = (int)$this->string->toNumber($this->db->escape(@$data['point']));
		$birthdate = $this->date->formatViewDate($this->db->escape(@$data['birthdate']));
		$fax = $this->db->escape(@$data['fax']);
		$issuedate = $this->date->formatViewDate($this->db->escape(@$data['issuedate']));
		$identification = $this->db->escape(@$data['identification']);
		$birthplace = $this->db->escape(@$data['birthplace']);
		$gender = $this->db->escape(@$data['gender']);
		$customertype = $this->db->escape(@$data['customertype']);

		$field = array(
						'`firstname`',
						'`lastname`',
						'`telephone`',
						'`address`',
						'`point`',
						'`birthdate`',
						'`fax`',
						'`issuedate`',
						'`identification`',
						'`birthplace`',
						'`gender`',
                        '`customertype`'
					);
					
		$value = array(
						$firstname,
						$lastname,
						$telephone,
						$address,
						$point,
						$birthdate,
						$fax,
						$issuedate,
						$identification,
						$birthplace,
						$gender,
                        $customertype
					);
		
		$where = " customerid = '" . $data['customerid'] . "'";
		$this->db->updateData("customer", $field, $value,$where);
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
	
	public function getAddress($customerid){
		$sql = "select * from `customer_address` where customerid = '" . $customerid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function validatePassword($customerid,$pass)
	{
		$contain=$this->getItem($customerid);
		if(count($contain)==0)
			return false;
		else
		{
			
			if( $contain['password']== $pass)
			{
				return true;
			}
			else
				return false;
		}
	}
	
	public function updateStatus($customerid, $status)
	{
		$field = array(
						'`status`'
					);
					
		$value = array(
						$status
					);
		
		$where = " customerid = '" . $customerid  . "'";
		$this->db->updateData("customer", $field, $value, $where);
	}
	
	public function checkActive($customerid, $activecode)
	{
		$sql = "Select * from `customer` where customerid = '" . $customerid . "' and activecode = '" . $activecode . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function updatePoint($email) {
		
		// get point
		$point_sql = "SELECT SUM(point) sum_point FROM `order` WHERE `email` = '".$email."' AND ( `status` = 'active' OR `status` = 'deliver' )";
		$point_query = $this->db->query($point_sql);
		$user_point = $point_query->row;
		
		$field = array(
						'`point`'
					);
					
		$value = array(
						$user_point['sum_point']
					);
		
		$where = " `email` = '" . $email  . "'";
		$this->db->updateData("customer", $field, $value, $where);
	}
	
	public function addPoint($email,$point) {
		$customer = $this->getItemByEmail($email);
		$new_point = $customer['point'] + $point;
		echo $new_point;
		$field = array(
						'`point`'
					);
					
		$value = array(
						$new_point
					);
		
		$where = " `email` = '" . $email  . "'";
		$this->db->updateData("customer", $field, $value, $where);
	}
	
	public function minusPoint($email,$point) {
		$customer = $this->getItemByEmail($email);
		$new_point = $customer['point'] - $point;
		$field = array(
						'`point`'
					);
					
		$value = array(
						$new_point
					);
		
		$where = " `email` = '" . $email  . "'";
		$this->db->updateData("customer", $field, $value, $where);
	}
}
?>