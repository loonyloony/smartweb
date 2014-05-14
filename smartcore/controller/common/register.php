<?php 
class ControllerCommonRegister extends Controller
{
	
	private $error = array();
	
	public function __construct()
	{
		$this->load->model("customer/customer");
	}
	
	public function index()
	{
		$data = $this->request->post;
		
		if($this->validate($data))
		{
			//Gui ma kich hoat vo email cua member
			$activecode = $this->string->generateRandStr(10);
			$data["activecode"] = $activecode;
			
			$customerid = $this->model_customer_customer->insert($data);
			
			//send mail
			if($customerid)
			{
				//Load libraries
				$this->load->helper('mail');
				
				//Send mail
				$to=$data['email'];
				
				// subject
				$subject = $this->language->get('text_register_complete');
				
				// Additional headers
				$headers .= 'From: office@elifepartners.com';			
				
				// To send HTML mail, the Content-type header must be set
				$headers  = 'MIME-Version: 1.0' . "\r\n";
				$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
				
				$template = htmlspecialchars_decode($this->language->get('text_email_register_tempate'));

				$param = array(
								'{customer}' => $data['account'],
								'{email}' => $data['email'],
								'{link_registration}' => HTTP_SERVER . '?route=common/register/active&customerid=' . $customerid . '&activecode=' . $data['activecode'],
								'{link_sub_registration}' => HTTP_SERVER . '?route=common/register/subactive',
								'{active_number}' => $data['activecode']
								
								);
				$message = $this->string->inludeParameterToTemplate($param,$template);
						
				if(HelperMail::sendmail($to, $subject, $message, "")){
					$this->model_customer_customer->changePassword($customer['customerid'],$customer['password']);
				}
			}
			$this->data['output'] = "true";
		}
		else
		{
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item;
			}
		}
		
		$this->template = "common/output.tpl";
		$this->render();
	}
	
	private function validate($data)
	{
		if(trim($data['account']) == "")
		{
			$this->error['account']	= $this->language->get('war_enter_account');
		}
		else
		{
			$customer = $this->model_customer_customer->getItemByAccount(trim($data['account']));
			
			if(count($customer))
			{
				$this->error['account'] = $this->language->get('war_account_registered');
			}
			elseif(trim($data['email']) == "")
			{
				$this->error['email'] = $this->language->get('war_enteremail');
			}
			elseif(!filter_var(trim($data['email']), FILTER_VALIDATE_EMAIL))
			{
				$this->error['email'] = $this->language->get('war_invalidemail');
			}
			else
			{
				$customer = $this->model_customer_customer->getItemByEmail(trim($data['email']));
				
				if(count($customer))
				{
					$this->error['email'] = $this->language->get('war_emailhasused');
				}
				elseif(trim($data['password']) == "")
				{
					$this->error['password'] = $this->language->get('war_passwordnotnull');
				}
				elseif(trim($data['password']) != trim($data['repassword']))
				{
					$this->error['password'] = $this->language->get('war_confirmpasswordnotcorrect');
				}
				elseif(trim($data['firstname']) == "")
				{
					$this->error['firstname'] = $this->language->get('war_enterfirstname');
				}
				elseif(trim($data['lastname']) == "")
				{
					$this->error['lastname'] = $this->language->get('war_enterlastname');
				}
				elseif(trim($data['telephone']) == "")
				{
					$this->error['telephone'] = $this->language->get('war_enterphone');
				}
				
			}
		}
		
		if(count($this->error))
		{
			return false;	
		}
		else
		{
			return true;	
		}
	}
	
	private function checkemail($email)
	{
		$message = "";
		(eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$", $string)) ? $message = false : $message = true ; 
		return $message ;
	}
	
	public function active()
	{
		$this->data['output'] = "false";
		
		$customerid = $this->request->get['customerid'];
		$activecode = $this->request->get['activecode'];
		
		$this->load->model("customer/customer");
		$customers = $this->model_customer_customer->checkActive($customerid, $activecode);
		
		if(count($customers) > 0)
		{
			$this->model_customer_customer->updateStatus($customerid, '1');
			$this->data['output'] = "true";
		}
		
		$this->id="content";
		$this->template="common/active.tpl";
		$this->render();
	}
	
	public function update()
	{
		$data = $this->request->post;
		
		if($this->validate_update($data))
		{
			$customerid = $this->model_customer_customer->update($data);
			$this->data['output'] = "true";
		} else {
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item;
			}
		}
		
		$this->template = "common/output.tpl";
		$this->render();
		
	}
	
	public function changepass()
	{
		$data = $this->request->post;
		
		if($this->validate_pass($data))
		{
			$customerid = $this->member->getId();
			$this->model_customer_customer->changepassword($customerid, $data['newpassword']);
			$this->data['output'] = "true";
		} else {
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item;
			}
		}
		
		$this->template = "common/output.tpl";
		$this->render();
		
	}
	
	private function validate_update($data)
	{
		if(trim($data['firstname']) == "")
		{
			$this->error['firstname'] = $this->language->get('war_enterfirstname');
		}
		elseif(trim($data['lastname']) == "")
		{
			$this->error['lastname'] = $this->language->get('war_enterlastname');
		}
		elseif(trim($data['address']) == "")
		{
			$this->error['address'] = $this->language->get('war_addressnotnull');
		}
		elseif(trim($data['telephone']) == "")
		{
			$this->error['telephone'] = $this->language->get('war_enterphone');
		}
		
		if(count($this->error) == 0)
			return true;
		else
			return false;
	}
	
	private function validate_pass($data)
	{
        $isValid = true;
		if($data['oldpassword'] == "")
		{
			$this->error['oldpassword'] = $this->language->get('war_oldpassnotcorrect');
            $isValid = false;
		}
        if($isValid && $data['newpassword'] == "")
		{
			$this->error['newpassword'] = $this->language->get('war_passwordnotnull');
            $isValid = false;
		}
        if($isValid && $data['newpassword'] != $data['repassword'])
		{
			$this->error['repassword'] = $this->language->get('war_confirmpasswordnotcorrect');
            $isValid = false;
		}
        //rule Singapore
        $pattern = "/([a-zA-Z0-9]){6,}/";
        if($isValid && SKINID == 'singapore' && !preg_match($pattern, $data['newpassword'])) {
            $this->error['password'] = $this->language->get('war_password_rule_6_characters_numbers');
            $isValid = false;
        }

		if($isValid)
		{
			$customer = $this->model_customer_customer->getItemByEmail($this->member->getEmail());
			if(md5($data['oldpassword']) != $customer['password']) {
				$this->error['oldpassword'] = $this->language->get('war_oldpassnotcorrect');
			}		
		}
		
		if(count($this->error) == 0)
			return true;
		else
			return false;
	}
}
?>