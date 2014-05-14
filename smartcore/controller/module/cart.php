<?php
	class ControllerModuleCart extends Controller
	{
		private $err;
		public function index()
		{
			if($this->request->get["step"] == "")
				$step = 1;
			else
				$step = $this->request->get["step"];
						
			switch ($step) {
				case 1:
					$this->getList();
					break;
				case 2:
					$this->payment();
					break;
			}
		}
		
		private function getList() {
			$this->get_cart();
			$this->template = "module/cart_list.tpl";
			$this->id = "content";
			
			$this->render();	
		}
		
		private function payment() {
			//require login
			if($this->member->getId() == '' && SKINID != "hatomex")
			{

				$this->id="content";
				$this->template="module/cart_login.tpl";
				$this->render();
			} else {
			
				$this->load->model("customer/customer");
				
				$this->data['customer'] = $this->model_customer_customer->getItemByEmail($this->session->data['email']);
				$this->get_cart();
				$this->id="content";
				$this->template="module/cart_form.tpl";
				$this->render();
			}
			
		}
		
		private function get_cart() {
			
			$this->load->model("core/product");
			
			$total = 0;
			
			$my_cart = $this->session->data['cart'];

			if($my_cart != "" && count($my_cart) != 0)
			{
				$arr_prd = "";
				foreach($my_cart as $prd)
				{
					if($prd['type'] != "productoption"){
						$arr_prd .= $prd['product-id'].",";
					} else {
						//load product belong to product option type
						$product = $this->model_core_product->getItem($prd['product-id']);
						
						if($product['saleoff'] != 0){
							$product['price'] = $product['saleoff'];
						}
						
						//
						if(count($prd['product-option-value']) > 0)
						{
							foreach($prd['product-option-value'] as $item){
								$optionvalue = $this->model_core_product->getItemOptionValueByProductIdandOptionValueId(trim($prd['product-id']), $item);
								$product['price'] += $optionvalue['price'];
								if($optionvalue['optionname'] != "" && $optionvalue['optionvaluename'] != ""){
									$product['name'] = $product['name'] . "<br />" . "- " . $optionvalue['optionname'] . " : " . $optionvalue['optionvaluename'];
								} else {
									$product['name'] = $product['name'];
								}
							}
						}
						
						//calculate price
						$my_cart[$product['productid']]['price'] = $product['price'];
						$my_cart[$product['productid']]['name'] = $product['name'];
						
						if(count($prd['image']) > 0){
							$my_cart[$product['productid']]['image'] = $prd['image'];
						} else {
							$prd['image'] = array($product['image']);
							$my_cart[$product['productid']]['image'] = $prd['image'];
						}
						$my_cart[$product['productid']]['product-option-value'] = $prd['product-option-value'];
						$my_cart[$product['productid']]['product-qty'] = count($prd['image']);
						$total += $product['price'] * count($prd['image']);
					}
				}
				
				$arr_prd = substr($arr_prd,0,-1);
				
				if($arr_prd != "")
				{
					$where = "AND p.productid in (".$arr_prd.")";
					
					
					$products = $this->model_core_product->getGroupList($where);
					foreach ($products as $prd) {
						if($prd['saleoff'] != 0){
							$prd['price'] = $prd['saleoff'];
						}
	
						$my_cart[$prd['productid']]['image'] = $prd['image'];
						$my_cart[$prd['productid']]['name'] = $prd['name'];
						$my_cart[$prd['productid']]['link'] = $prd['link'];
						$my_cart[$prd['productid']]['price'] = $prd['price'];
						$my_cart[$prd['productid']]['subtract_stock'] = $prd['subtract_stock'];
						$total += $prd['price'] * $my_cart[$prd['productid']]['product-qty'];
					}
				}
			}
			$this->session->set('cart_total',$total);
			$this->data['my_cart_list'] = $my_cart;	
		}
		
		public function pay() {
			//require login
			if($this->member->getId() == '' && SKINID != "hatomex")
			{
				$this->data['output'] = "Bạn phải đăng nhập để có thể thanh toán";
				$this->id="content";
				$this->template="common/output.tpl";
				$this->render();
				return;
			}
			
			$data = $this->request->post;
			if ($this->validate_pay($data))
			{
				$this->get_cart();
				$data['cart'] = $this->data['my_cart_list'];

				$data['cart_total'] = $this->session->data['cart_total'];

				$this->load->model("core/order");
				
				//insert database
				$orderid = $this->model_core_order->save($data);

				$data['orderid'] = $orderid;
				
				/************************
				//send email
				************************/
				
				//load library
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
				HelperMail::sendEmail($this->config->get('config_contactemail'), $data['email'], $this->config->get('config_sitename'), $mail['subject'], "", $mail['body']);
				
				
				$this->session->set('cart',null);
				$this->session->set('cart_total',null);
				
				$this->data['output'] = "true";
			} else {
				$this->data['output'] = $this->err;
			}
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		private function validate_pay($data) {
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
			} elseif ($this->session->data['cart_total'] < 500000 && SKINID == "hatomex"){
				$err = "Chúng tôi chỉ nhận giao hàng với đơn hàng từ 500,000 vnđ trở lên. Quý khách vui lòng đặt thêm hoặc liên hệ mua trực tiếp tại cửa hàng";
			}
			if(count($err) == 0) {
				return true;
				
			} else {
				$this->err = $err;
				return false;	
			}
		}
		
		
		public function validate() {
			$my_cart = $this->request->post['prd'];

			$flag = true;
			foreach ($my_cart as $key => $item) {
				$data['product-id'] = $key;
				$data['product-qty'] = $item['product-qty'];
				if (!$this->validate_prd($data)) $flag = false;
			}
			if ($flag) {
				/*$new_cart = array();
				foreach ($my_cart as $key => $value) {
					if ($value != 0) {
						$new_cart[$key]['product-id'] = $key;
						$new_cart[$key]['product-qty'] = $value;	
					}
				}*/
				$this->session->set('cart', $my_cart);
				$this->data['output'] = "true";
			}
			else {
				$this->data['output'] = json_encode($this->err);
			}
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		private function validate_prd($data) {
			$productid = $data['product-id'];
			$productqty = $data['product-qty'] - 0;
					
			if ($productqty == "" && $productqty != 0) {
				$err = $this->language->get('war_invalidqty');
			} elseif (!is_int($productqty)) {
				$err = $this->language->get('war_invalidqty');
			} else {
				// check config
				$strictPrice = $this->config->get('config_strictPrice');
				
				$this->load->model("core/product");
				$product = $this->model_core_product->getItem($productid);
				//check het hang
				if(SKINID != "mesushop" && SKINID != "hatomex")
				{
					if (($product['price'] == 0 && $strictPrice == 1) || $product['quantity'] == 0) {
						$err = $this->language->get('war_outofstock');
					} elseif ($product['quantity'] < $productqty) {
						$err = $this->language->get('war_lackofqty')." ". $qty_left . " ".$this->language->get('text_product');
					}
				}
			}
			
			if ($err == "") {	
				return true;
			}
			else
			{
				$this->err[$productid] = $err;
				return false;
			}
		}
		
		public function validate_qty() {
			$data = $this->request->post;
			$prd['product-id'] = $data['id'];
			$prd['product-qty'] = $data['qty'];
			if ($this->validate_prd($prd)) {
				$this->data['output'] = "true";
			}
			else {
				$this->data['output'] = $this->err[$prd['product-id']];
			}
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		public function delete() {
			$data = $this->request->post['chk'];
			$my_cart = $this->session->data["cart"];
			foreach($data as $item) {
				unset($my_cart[$item]);
			}
			$this->session->set("cart",$my_cart);
		}
		
		public function orderTemplate($order, $template){
			$this->data['order'] = $order;
			
			$this->id="content";
			$this->template="common/email.tpl";
	
			$this->render();
		}
	}
?>