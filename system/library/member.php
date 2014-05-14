<?php
final class Member {
	private $customerid;
	private $account;
	private $firstname;
	private $email;
	private $siteid;
	private $customer_group_id;
	private $point;
  	private $permission = array();
	private $Control = array();

  	public function __construct() {
		$this->db = Registry::get('db');
		$this->request = Registry::get('request');
		$this->session  = Registry::get('session');
		$this->json  = Registry::get('json');
		$this->string  = Registry::get('string');
		
		/*if($this->request->get['lang'])
		{
			$this->session->set('siteid',$this->request->get['lang']);
		}
		else
		{
			if (!isset($this->session->data['siteid'])) {
				$this->session->set('siteid',SITEID);
			}
		}*/
		$this->session->set('siteid',SITEID);
		
		$this->siteid = $this->session->data['siteid'];
		
	
    	if (isset($this->session->data['customerid'])) {
			$query = $this->db->query("SELECT * FROM customer WHERE customerid = '" . $this->db->escape($this->session->data['customerid']) . "'");
			
			if ($query->num_rows) {
				$this->customerid = $query->row['customerid'];
				$this->email = $query->row['email'];
				$this->firstname = $query->row['firstname'];
				$this->point = $query->row['point'];
				
      			$this->db->query("UPDATE customer SET ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "' WHERE customerid = '" . (int)$this->session->data['customerid'] . "'");
			}elseif(isset($this->session->data['safemode'])){
				$this->customerid = $this->session->data['customerid'];
				$this->email = $this->session->data['email'];
				$this->firstname = $this->session->data['firstname'];
				$this->point = $this->session->data['point'];
			} else {
				if (SKINID != 'elifesupport')
					$this->logout();
			}
    	}
  	}
		
  	public function login($email, $password, $siteid) 
	{

		if($email=="" || $password=="")
			return false;

		$sql="SELECT * FROM customer WHERE email = '" . $this->db->escape($email) . "' AND password = '" . $this->db->escape($password) . "' AND status = 1 ";
	   	$query = $this->db->query($sql);

    	if ($query->num_rows) 
		{
			$this->session->set('customer_group_id',$query->row['customer_group_id']);
			$this->session->set('customerid',$query->row['customerid']);
			$this->session->set('email',$query->row['email']);
			$this->session->set('account',$query->row['account']);
			$this->session->set('firstname',$query->row['firstname']);
			$this->session->set('point',$query->row['point']);
			$this->session->set('siteid',$siteid);
			$this->session->set('token',md5(SKINID.TOKE));
			
			$this->customer_group_id = $query->row['customer_group_id'];		
			$this->customerid = $query->row['customerid'];
			$this->email = $query->row['email'];
			$this->firstname = $query->row['firstname'];
			$this->point = $query->row['point'];
			
			$query = $this->db->query("Select * from `site` where siteid = '".$siteid."'");
			$this->session->set('sitename',$query->row['sitename']);		
				
      		return TRUE;
    	} 
		else 
		{
      		return FALSE;
    	}
  	}

    public function loginAfterAuthenExternalSystem($email, $siteid)
    {

        if($email=="")
            return false;

        $sql="SELECT * FROM customer WHERE email = '" . $this->db->escape($email) . "' AND status = 1 ";
        $query = $this->db->query($sql);

        if ($query->num_rows)
        {
            $this->session->set('customer_group_id',$query->row['customer_group_id']);
            $this->session->set('customerid',$query->row['customerid']);
            $this->session->set('email',$query->row['email']);
            $this->session->set('account',$query->row['account']);
            $this->session->set('firstname',$query->row['firstname']);
            $this->session->set('point',$query->row['point']);
            $this->session->set('siteid',$siteid);
            $this->session->set('token',md5(SKINID.TOKE));

            $this->customer_group_id = $query->row['customer_group_id'];
            $this->customerid = $query->row['customerid'];
            $this->email = $query->row['email'];
            $this->firstname = $query->row['firstname'];
            $this->point = $query->row['point'];

            $query = $this->db->query("Select * from `site` where siteid = '".$siteid."'");
            $this->session->set('sitename',$query->row['sitename']);

            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }
	
	public function loginToken($token, $password, $siteid) 
	{

		if($token=="" || $password=="")
			return false;

		$sql="SELECT * FROM customer WHERE md5(customerid) = '" . $this->db->escape($token) . "' AND password = '" . $this->db->escape($password) . "' AND status = 1 ";
	   	$query = $this->db->query($sql);

    	if ($query->num_rows) 
		{
			$this->session->set('customer_group_id',$query->row['customer_group_id']);
			$this->session->set('customerid',$query->row['customerid']);
			$this->session->set('email',$query->row['email']);
			$this->session->set('account',$query->row['account']);
			$this->session->set('firstname',$query->row['firstname']);
			$this->session->set('siteid',$siteid);
			$this->session->set('point',$point);
			$this->session->set('token',md5(SKINID.TOKE));
			
			$this->customer_group_id = $query->row['customer_group_id'];		
			$this->customerid = $query->row['customerid'];
			$this->email = $query->row['email'];
			$this->firstname = $query->row['firstname'];
			$this->point = $query->row['point'];
			
			$query = $this->db->query("Select * from `site` where siteid = '".$siteid."'");
			$this->session->set('sitename',$query->row['sitename']);		
			
				
      		return TRUE;
    	} 
		else 
		{
      		return FALSE;
    	}
  	}
	
	public function loginCMS($email, $password) 
	{
		
		if($email=="" || $password=="")
			return false;
		$sql="SELECT * FROM customer WHERE email = '" . $this->db->escape($email) . "' AND password = '" . $this->db->escape(md5($password)) . "' AND status = 'active' AND deletedby = ''";
	   	$query = $this->db->query($sql);
		
    	if ($query->num_rows) 
		{
			$this->session->set('customer_group_id',$query->row['customer_group_id']);
			$this->session->set('customerid',$query->row['customerid']);
			$this->session->set('cmscustomerid',$query->row['customerid']);
			$this->session->set('email',$query->row['email']);
			$this->session->set('firstname',$query->row['firstname']);
			$this->session->set('account',$query->row['account']);	
			$this->session->set('token',md5(SKINID.TOKE));		
			$this->customer_group_id = $query->row['customer_group_id'];
			$this->customerid = $query->row['customerid'];
			$this->email = $query->row['email'];
			$this->firstname = $query->row['firstname'];
			$this->point = $query->row['point'];				

      		$query = $this->db->query("SELECT DISTINCT ug.permission FROM customer u LEFT JOIN customertype ug ON u.customer_group_id = ug.customer_group_id WHERE u.customerid = '" . (int)$this->session->data['customerid'] . "'");


	  		$this->setPermission($query->row['permission']);
			
			if($query->row['customer_group_id'] > 1)
			{
				return FALSE;
			}
				
      		return TRUE;
    	} 
		else 
		{
      		return FALSE;
    	}
  	}

	public function logincode($email, $password) 
	{

		
		if($email=="" || $password=="")
			return false;
		$sql="SELECT * FROM customer WHERE email = '" . $this->db->escape($email) . "' AND password = '" . $this->db->escape($password) . "' AND status <> 0";
	   	$query = $this->db->query($sql);
		
    	if ($query->num_rows) 
		{
			$this->session->set('customerid',$query->row['customerid']);
			$this->session->set('email',$query->row['email']);
			$this->session->set('account',$query->row['account']);
			$this->session->set('firstname',$query->row['firstname']);
			$this->session->set('token',md5(SKINID.TOKE));		
			$this->customerid = $query->row['customerid'];
			$this->email = $query->row['email'];	
			$this->firstname = $query->row['firstname'];		
			$this->point = $query->row['point'];
			
      		$query = $this->db->query("SELECT DISTINCT ug.permission FROM customer u LEFT JOIN customertype ug ON u.customer_group_id = ug.customer_group_id WHERE u.customerid = '" . (int)$this->session->data['customerid'] . "'");

			
	  		$this->setPermission($query->row['permission']);
				
      		return TRUE;
    	} 
		else 
		{
      		return FALSE;
    	}
  	}
	
  	public function logout() {
		unset($_SESSION['safemode']);
		unset($_SESSION['email']);
		unset($_SESSION['customerid']);
		unset($_SESSION['firstname']);
		unset($this->session->data['email']);
		unset($_SESSION['customerid']);
		unset($_SESSION['account']);
		unset($_SESSION['token']);
		
		$this->customerid = '';
		$this->email = '';
		$this->safemode = false;
  	}
	
	public function setPermission($strPermission)
	{
		$this->permission = array();
		
		/*//Lay Mang Permission
		$arr = $this->_getJSONArray($strPermission);
		
		//Lay mang cac module co quyen
		$arrModule = $this->_getModules_Filter($arr);
		
		//Tao mang tung module + quyen & sitemap
		foreach($arrModule as $moduleid)
		{
			$this->permission[$moduleid] = array(
				"Permissions" => $this->_getPermissions($moduleid, $arr),
				"Sitemaps" => $this->_getSitemaps($moduleid, $arr)
			);
		}*/
		
		$this->permission = $this->string->referSiteMapToArray($strPermission);
		
	}

	public function setControl($key, $button)
	{
		$arr = array();
		if(!is_array($button)) {array_push($arr,$button);} else {$arr = $button;}
		$this->Control[$key] = array($arr);
	}
	
	public function getControl()
	{
		return $this->Control;
	}

	public function hasPermission($moduleid, $action) 
	{
		if( $_SESSION['safemode'])
			return true;
		if($this->customer_group_id == 'admin')
			return true;
		$allow = false;
		if (count($this->permission)) 
		{
			$moduleid = trim($moduleid);
			$action = trim($action);
			foreach($this->permission as $item)
			{
				$arr = @explode("-",$item);
				if($arr[0] ==$moduleid && $arr[1] == $action )
					$allow = true;
			}
		}
		
		return $allow;
	}
  
  	public function isLogged() {
    	if($this->session->data['customerid']){
			$this->customer_group_id = $this->session->data['customer_group_id'];
			$this->customerid = $this->session->data['customerid'];
			$this->account = $this->session->data['account'];
			$this->email = $this->session->data['email'];	
			$this->siteid = $this->session->data['siteid'];	
			$this->firstname = $this->session->data['firstname'];
			$this->point = $this->session->data['point'];	
			return true;
		}
		elseif($this->session->data['safemode']){
			$this->customer_group_id = $this->session->data['customer_group_id'];
			$this->customerid = $this->session->data['customerid'];
			$this->email = $this->session->data['email'];	
			$this->siteid = $this->session->data['siteid'];	
			$this->firstname = $this->session->data['firstname'];
			$this->point = $this->session->data['point'];
			return true;
		}
		return false;
  	}
	
	public function isCMSLogged() {
    	if($this->session->data['cmscustomerid']){
			$this->customer_group_id = $this->session->data['customer_group_id'];
			$this->customerid = $this->session->data['customerid'];
			$this->email = $this->session->data['email'];
			$this->firstname = $this->session->data['firstname'];
			$this->point = $this->session->data['point'];
			
			return true;
		} 
		return false;
  	}
  
  	public function getId() {
    	return $this->customerid;
  	}
	
	public function getcustomer_group_id() {
    	return $this->customer_group_id;
  	}
	
	public function getSiteId() {
    	return $this->siteid;
  	}
	
  	public function getEmail() {
    	return $this->email;
  	}
	
	public function getPermission() {
		return $this->permission;
	}
	
	public function getAccount() {
		return $this->account;
	}
	
	public function getFirstname() {
    	return $this->firstname;
  	}
	
	public function getPoint() {
    	return $this->point;
  	}
	
//elifeGIN PERMISSION JSON
	
	
	//return array
	public function _getJSONArray($strJSON)
	{
		//$this->json  = Registry::get('json');
		$arr = array();
		if($strJSON != "") return $this->json->decode($strJSON);
		return $arr;
	}
	
	//return array
	public function _getModules($arrJSON)
	{
		$arr = array();
		if(count($arrJSON) > 0)
		{
			return $arrJSON[0];
		}
		return $arr;
	}


	public function _getModules_Filter($arrJSON)
	{
		$arr = array();
			
		if(count($arrJSON) > 0)
		{
			
			if(count($arrJSON[0]) > 0)
			{
				foreach($arrJSON[0] as $moduleid)
				{
					$arrP = $this->_getPermissions($moduleid, $arrJSON);
					$arrS = $this->_getSitemaps($moduleid, $arrJSON);
					if(count($arrP) > 0 || count($arrS) > 0)
					{
						array_push($arr, $moduleid);
					}
				}
			}
		}
		return $arr;
	}

	
	//return array
	public function _getPermissions($moduleid, $arrJSON)
	{
		$arr = array();
		
		$arrModule = $this->_getModules($arrJSON);
		
		$index = $this->string->inArray($moduleid, $arrModule) + 1;
		
		if($index > 0 && count($arrJSON[$index][0]) > 0)
		{
			return $arrJSON[$index][0];
		}

		return $arr;
	}
	
	//return array
	public function _getSitemaps($moduleid, $arrJSON)
	{
		$arr = array();
		
		$arrModule = $this->_getModules($arrJSON);
		
		$index = $this->string->inArray($moduleid, $arrModule) + 1;
		
		if($index > 0 && count($arrJSON[$index][1]) > 0)
		{
			return $arrJSON[$index][1];
		}

		return $arr;
	}
//END PERMISSION JSON
	
}
?>