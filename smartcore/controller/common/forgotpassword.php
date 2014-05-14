<?php 
class ControllerCommonForgotpassword extends Controller
{
	private $error = array();
	
	public function index()
	{
		$this->id="content";	
		$this->template="common/forgotpassword.tpl";
		$this->layout="layout/home";
		$this->render();
	}
	
	public function getpassword()
	{
		$email = $this->request->post['email'];
		
		if($this->validate($email))
		{
			$newpass = $this->string->generateRandStr(6);
			$this->load->model("customer/customer");
			$customer = $this->model_customer_customer->getItemByEmail($email);
			$this->model_customer_customer->changePassword($customer['customerid'], $newpass);
			
			$this->sendMailWithNewPassword($customer, $newpass);
			
			$this->data['output'] = "true";	
		}
		else
		{
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item . "<br />";
			}
		}
		
		$this->template = "common/output.tpl";
		$this->render();
	}
	
	private function sendMailWithNewPassword($customer, $newpass) {
		
		$this->load->helper('mail');
		
		//Send mail
		$to=$customer['email'];
		// subject
		$subject = $this->language->get("label_renew_password");
		
		// To send HTML mail, the Content-type header must be set
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
		// Additional headers
		$headers .= 'From: '. $this->config->get('config_contactemail');
		
		// Mail it
		//$template = $this->language->get('message_template_recoverypassword');
		$template = $this->language->get("email_template_renew_password");
		
		$param = array(
						'{customername}' => $customer['firstname'] . " " . $customer['lastname'],
						'{sitename}' => $this->config->get('config_sitename'),
						'{email}' => $customer['email'],
						'{password}' => $newpass
						);
		
		$message = htmlspecialchars_decode($this->string->inludeParameterToTemplate($param,$template));
		HelperMail::sendEmail($this->config->get('config_contactemail'), $to, $this->config->get('config_sitename'), $subject, "", $message);
	}
	
	public function validate($email)
	{
		if(trim($email) == "")
		{
			$this->error['email'] = $this->language->get('war_email_empty');
		}
		elseif(!filter_var(trim($email), FILTER_VALIDATE_EMAIL))
		{
			$this->error['email'] = $this->language->get('war_invalidemail');
		}	
		else
		{
			$this->load->model("customer/customer");
			$emails = $this->model_customer_customer->getList(" AND email = '" . $email . "'");
			
			if(count($emails) == 0)
			{
				$this->error['email'] = $this->language->get('war_emailnotavailable');
			}
		}
		
		if(count($this->error) > 0)
		{
			return false;	
		}
		else
		{
			return true;	
		}
	}
	
	
}
?>