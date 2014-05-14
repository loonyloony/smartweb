<?php
include('config.php');
include('../config.php');	
require_once(DIR_SYSTEM . 'startup.php');
	
class ControllerCustomerNotification extends Controller{
	
	public function notifyBirthday() {
		
		$this->load->model("customer/customer");
		$where = " AND DAYOFYEAR( birthdate ) - DAYOFYEAR( CURDATE( ) )
					BETWEEN 0
					AND 7
					OR (
					DAYOFYEAR( CURDATE( ) + INTERVAL 7
					DAY ) <7
					AND DAYOFYEAR( birthdate ) < DAYOFYEAR( CURDATE( ) + INTERVAL 7
					DAY )
					)";
			
		$customers = $this->model_customer_customer->getList($where);
		
		if(count($customers) > 0) {
			
			$message = "<p><b>Danh sách khách hàng gần tới ngày sinh nhật trong tuần</b></p>";
			$message .= "<table>";
			$message .= "<tr>
				<th style='border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center'>Mã KH</th>
				<th style='border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center'>Họ và tên</th>
				<th style='border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center'>Ngày sinh</th>
						</tr>";
			foreach($customers as $customer) {
				$message .= "<tr>";
				$message .= "<td style='border:1px solid #ccc; padding:5px; text-align:center'>" . "FHH" . $this->string->numberToString($customer['customerid'], 4) . "</td>";
				$message .= "<td style='border:1px solid #ccc; padding:5px; text-align:center'>" . $customer['firstname'] . " " . $customer['lastname']."</td>";
				$message .= "<td style='border:1px solid #ccc; padding:5px; text-align:center'>" . date_format(date_create($customer['birthdate']), 'd-m-Y') ."</td>";
				$message .= "</tr>";
			}
			$message .= "</table>";
			//echo $message;
			
			//Load libraries
			$this->load->helper('mail');
			
			//Send mail
			$to=$this->config->get('config_contactemail');
			echo $to;
			
			// subject
			$subject = "[".$this->config->get('config_sitename')."] ".$this->language->get('text_notify_birthday');
			
			// Additional headers
			$headers .= 'From: '.$this->config->get('config_email');
			echo $headers;
			
			// To send HTML mail, the Content-type header must be set
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
			HelperMail::sendEmail($this->config->get('config_contactemail'),  $to, $this->config->get('config_sitename'), $subject, "", $message);	
			
		}
	}
}

$customerNotification = new ControllerCustomerNotification();
$customerNotification->notifyBirthday();

?>