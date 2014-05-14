<?php
	class ControllerCommonShoppingcart extends Controller
	{
		private $error;
		public function index()
		{
		}
		
		public function choose_qty()
		{
			$id = $this->request->post['id'];
			if (!empty($id)) {
				$this->data['productid'] = $id;
				$this->id = 'playlist_form';
				$this->template = 'common/shoppingcart_chooseqty.tpl';	
				$this->render();
			}
		}
		
		public function save_product()
		{
			$data = $this->request->post;
			if ($this->validate_save_product($data)) 
			{
				$my_cart = $this->session->data['cart'];
				if($my_cart == "" || !is_array($my_cart)) {
					$my_cart = array();
					$my_cart[$data['product-id']] = $data;
				} else {
					if ($my_cart[$data['product-id']] == "")
						$my_cart[$data['product-id']] = $data;
					else
						$my_cart[$data['product-id']]['product-qty'] += $data['product-qty'];
				}
				$this->session->set('cart',$my_cart);
				
				$this->data['output'] = "true";
			} else {
				foreach ($this->error as $err)
				{
					$this->data['output'].=$err."<br />";	
				} 
			}
			
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		
		
		private function validate_save_product($data) {
			$productid = $data['product-id'];
			$productqty = $data['product-qty'] - 0;
					
			if ($productqty == "") {
				$err["qty"] = $this->language->get('war_invalidqty');
			} elseif (!is_int($productqty)) {
				$err["qty_num"] = $this->language->get('war_invalidqty');
			} else {
				// check config
				$stockAdjust = $this->config->get('config_stockAdjust');
				$strictPrice = $this->config->get('config_strictPrice');
				
				//edit right product qty
				$my_cart = $this->session->data['cart'];
				if (is_array($my_cart))
				{
					foreach ($my_cart as $prd)
					{
						if($prd['product-id'] == $productid) {
							$productqty +=	$prd['product-qty'];
						}	
					}
				}
				
				$this->load->model("core/product");
				$product = $this->model_core_product->getItem($productid);
				//check het hang
				if (($product['price'] == 0 && $strictPrice == 1) || $product['quantity'] == 0) {
					$err['outofstock'] = $this->language->get('war_outofstock');
				} elseif ($product['quantity'] < $productqty) {
					$qty_left = $product['quantity'] - ($productqty - $data['product-qty']);
					$err['lackofqty'] = $this->language->get('war_lackofqty')." ". $qty_left . " ".$this->language->get('text_product');
				}
			}
			
			if (count($err) == 0) 
				return true;
			else
			{
				$this->error = $err;
				return false;
			}
		}
	}
?>