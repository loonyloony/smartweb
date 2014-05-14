<?php
	class ControllerModulePayment extends Controller
	{
		private $error;
		
		public function index()
		{
			
			$this->load->model("customer/customer");
				
			$this->data['customer'] = $this->model_customer_customer->getItemByEmail($this->session->data['email']);
			
			
			$cartitems = $this->session->data['cart'];

			if(isset($cartitems) && count($cartitems) > 0)
			{
				$carttotal = 0;
				$discountfanprice = 0;
				$totaldiscountfanprice = 0;
				$carttotalnodiscount = 0;
				foreach($cartitems as $item)
				{	
					//add new elements
					//product size
					if($item['size'] != "")
					{
						$this->data['size'][$item['productid']] = explode(",", $item['size']);
						if(!isset($cartitems[$item['productid']]['sizeproduct']))
						{
							$cartitems[$item['productid']]['sizeproduct'] = $this->data['size'][$item['productid']][0];
						}
					}
					
					//product color
					if($item['color'] != "")
					{
						$this->data['color'][$item['productid']] = explode(",", $item['color']);
						if(!isset($cartitems[$item['productid']]['colorproduct']))
						{
							$cartitems[$item['productid']]['colorproduct'] = $this->data['color'][$item['productid']][0];
						}
					}
							
					//check product quantity in cart
					if($item['qtyincart'] == 0 || !isset($item['qtyincart']))
					{
						$item['qtyincart'] = 1;
					}
					
					//calc price
					//discount products
					//use discountFlag to check discount for fan(false is discount, true is not discount)
					$discountFlag = "false";
					if($item['saleoff'] > 0 && $item['saleoff'] < $item['price'])
					{
						//$item['price'] = $item['saleoff'];
						$carttotalnodiscount += $item['saleoff'] * $item['qtyincart'];
						$discountFlag = "true";
					} else {
						$carttotalnodiscount += $item['price'] * $item['qtyincart'];
					}

					//discount product price for fan except discount products
					if(isset($this->data['customer']['discount']) 
						&& $this->data['customer']['discount'] > 0 
						&& trim($this->data['customer']['discount']) != ""
						&& $discountFlag == "false")
					{
						$discountfanprice = round($item['price'] * ($this->data['customer']['discount']/100),2);
						$totaldiscountfanprice += $discountfanprice * $item['qtyincart'];
					}
					
					//calc cart total
					//$carttotalnodiscount += $item['price'] * $item['qtyincart'];					
					
					//discount price per each product for fan
					if($item['saleoff'] == 0)
					{
						if(isset($this->data['customer']['discount']) 
							&& $this->data['customer']['discount'] > 0 
							&& trim($this->data['customer']['discount']) != ""){
							//calc product price
							
						}
					}
					
					
					
					//add more data for product item in cart
					$cartitems[$item['productid']]['price'] = $item['price'];
					$cartitems[$item['productid']]['qtyincart'] = $item['qtyincart'];
				}
				
				//
				$this->session->set('totaldiscountfanprice', $totaldiscountfanprice);
				//confirm fan and in cart not a discount product
				if($totaldiscountfanprice > 0){
					$this->data['fan'] = "true";
				}
				
				$this->data['cart'] = $cartitems;
				//calc cart total
				$carttotal = $carttotalnodiscount - $totaldiscountfanprice;
				
				//set session
				$this->session->set('carttotalnodiscount', $carttotalnodiscount);
				
				//check promotion
				$this->load->model("core/order");
				$promotion = $this->model_core_order->getPromotion(" AND " . $carttotal . " >= amount ORDER BY amount DESC");
				if(count($promotion) > 0)
				{
					$this->session->set("carttotalnopromotion", $carttotal);
					$this->data['promotionstatus'] = "true";
					$this->data['promotion'] = $promotion;
					$discountPromotion = round($carttotal * ($this->data['promotion']['discount']/100),2);
					$carttotal = $carttotal - $discountPromotion;
					
				}
				
				$this->session->set("promotion", $promotion);
				$this->session->set("carttotal", $carttotal);
				$this->session->set("cart", $cartitems);
				
			}

			$this->template = "module/cart_form.tpl";
			$this->id = "content";
			$this->render();
		}
		
		public function payOrder() {
			
			$this->load->model("customer/customer");
			
			//require login
			if($this->member->getId() == '')
			{
				$this->data['output'] = "Bạn phải đăng nhập để có thể thanh toán";
				$this->id="content";
				$this->template="common/output.tpl";
				$this->render();
				return;
			}
			
			$data = $this->request->post;
			if ($this->validatePayment($data))
			{
				$data['cart'] = $this->session->data['cart'];

				$data['carttotal'] = $this->session->data['carttotal'];
				$data['promotion'] = $this->session->data['promotion'];
				$this->load->model("core/smartorder");
				
				//set point
				if($this->config->get('config_exchange_point') != 0) {
					$data['point'] = round($data['carttotal']/$this->config->get('config_exchange_point'));
				} else {
					$data['point'] = 0;
				}
				
				$customer = $this->model_customer_customer->getItemByEmail($this->session->data['email']);
				if ($customer['address'] == '') {
					$this->model_customer_customer->updateAddress($customer['customerid'], $data['address']);
				}

				//insert database
				$orderid = $this->model_core_smartorder->save($data);

				$this->session->set('cart',null);
				$this->session->set('totaldiscountfanprice',null);
				$this->session->set('carttotalnodiscount',null);
				$this->session->set('carttotalnopromotion',null);
				$this->session->set('carttotal',null);
				
				/************************
				//send email
				************************/
				
				/*//load library
				$this->load->helper('mail');
				
				$mail['from'] = $this->config->get('config_contactemail');
				$mail['FromName'] = $this->config->get('config_sitename');
				$mail['to'] = $data['email'];
				$mail['name'] = $data['name'];
				$mail['subject'] =  '[' . $this->config->get('config_sitename') . '] Thông báo đặt hàng';
				$arr = array($data,'common/mail.tpl');
				$orderTemplate = $this->loadModule('module/cart','orderTemplate',$arr);

				$mail['body'] = $orderTemplate;
				
				//$this->mailsmtp->sendMail($mail);
				HelperMail::sendEmail($this->config->get('config_contactemail'), $data['email'], $this->config->get('config_sitename'), $mail['subject'], "", $mail['body']);*/
				
				$this->data['output'] = "true";
			} else {
				$this->data['output'] = $this->err;
			}
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		private function validatePayment($data) {
			if($data['name'] == ""){
				$err = $this->language->get('war_entername');
			} elseif($data['telephone'] == ""){
				$err = $this->language->get('war_enterphone');
			} elseif($data['address'] == ""){
				$err = $this->language->get('war_addressnotnull');
			} elseif($data['email'] == ""){
				$err = $this->language->get('war_enteremail');
			} elseif ($this->validation->_checkEmail($data['email']) == false ){
				$err = $this->language->get('war_invalidemail');
			}
			
			if(count($err) == 0) {
				return true;
				
			} else {
				$this->err = $err;
				return false;	
			}
		}
		
		public function orderTemplate($order, $template){
			$this->data['order'] = $order;
			
			$this->id="content";
			$this->template="common/email.tpl";
	
			$this->render();
		}
	}
?>