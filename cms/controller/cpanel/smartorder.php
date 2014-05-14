<?php
	class ControllerCpanelSmartorder extends Controller
	{
		private $orderstatus = array(
									"pending" => "Chờ Duyệt",
									"active" => "Xác Nhận",
									"deliver" => "Gửi Hàng Hoàn Tất",
									"cancel" => "Hủy",
								);
		public function index()
		{
			//load libraries
			$this->load->model("customer/customer");
			
			//load combobox order status
			$this->data['orderstatus'] = $this->orderstatus;
			
			$this->load->model("common/control");
			$this->data['cborderstatus'] = $this->model_common_control->getComboboxData("cborderstatus", $this->data["orderstatus"],$data['search_status']);
			
			$this->getList();
			
			$this->id="content";
			$this->layout='layout/center';
			$this->template="cpanel/smartorder.tpl";
			$this->render();
		}
		
		public function getList()
		{
			// init value
			$itemperpage = 20;
			$data = $this->request->post;
			
			$page = $data['page'] == "" ? 1 : $data['page'];
			
			//search
			$this->data['post_data'] = $data;
			$where = " AND `status` <> 'delete' "; 
			$where .= $data['search_id'] == "" ? "" : " AND `orderid` = '".$data['search_id']."'";
			$where .= $data['search_customer'] == "" ? "" : " AND ( `customerid` LIKE  '%".$data['search_customer']."%' OR `customername` LIKE '%".$data['search_customer']."%' )";
			$where .= $data['search_from'] == "" ? "" : " AND `total` > ".$data['search_from'];
			$where .= $data['search_to'] == "" ? "" : " AND `total` < ".$data['search_to'];
			$where .= $data['search_status'] == "" ? "" : " AND `status` LIKE '".$data['search_status']."'";
			
			
			//get order and pagination
			$this->load->model("core/smartorder");
			$total = $this->model_core_smartorder->count_total($where);
			$totalPage = ceil($total['cnt'] / $itemperpage);
			$this->data['paginate'] = $this->paginate($page,$totalPage);
			
			$limit = " LIMIT ".($page-1)*$itemperpage.", ".$itemperpage." ";
			$arrOrders = $this->model_core_smartorder->getListFull($where,"orderid DESC", $limit);
			if(count($arrOrders))
			{
				foreach($arrOrders as $item)
				{
					//variables
					$totalorder = 0;
					
					//load customer information
					$customer = $this->model_customer_customer->getItem($item['customerid']);
					$item['customer'] = $customer;
					
					//load products
					$item['products'] = $this->model_core_smartorder->getProductsByOrderid($item['orderid']);
					
					//discount orders have total which greater than 1,000,000 or 2,000,000
					if(count($item['products']))
					{
						foreach($item['products'] as $product)
						{
							$totalorder += $product['subtotal'];
						}
					}
					//load khuyen mai
					//if($totalorder > 0){
					//	$item['promotion'] = $this->model_core_smartorder->getPromotionByOrderTotal($totalorder);
					//}
					$item['cbstatus'] = $this->model_common_control->getComboboxData("cbstatus-" . $item['orderid'], $this->orderstatus,$item['status']);
					$this->data['orders'][] = $item;
				}	
			}
		}
		
		private function paginate($page,$total)
		{	
			$result .= "<ul class='elife-pagination'>";
			if ($total == 1 || $total == 0) return;
			
			if($page != 1) {
				$result .= "<li><a onclick='paginate(1)' ><<</a></li>";
				$result .= "<li><a onclick='paginate(".($page-1).")' ><</a></li>";
			}
			for($i=$page-5;$i<=$page;$i++)
			{
				$pg = $i;
				if ($pg>0)
				{
					if($pg != $page)
						$result .= "<li><a onclick='paginate(".$pg.")'>".$pg."</a></li>";
					else
						$result .= "<li><a class='active' onclick='paginate(".$pg.")' >".$pg."</a></li>";	
				}			
			}
			for($i=$page+1;$i<=$page+5;$i++)
			{
				$pg = $i;
				if ($pg<=$total)
				{
					if($pg != $page)
						$result .= "<li><a onclick='paginate(".$pg.")'>".$pg."</a></li>";
					else
						$result .= "<li><a class='active' onclick='paginate(".$pg.")'>".$pg."</a></li>";	
				}			
			}
			
			if($page != $total && $total != 0) {
				$result .= "<li><a onclick='paginate(".($page-1).")' >></a></li>";
				$result .= "<li><a onclick='paginate(".($total).")' >>></a></li>";
			}
			$result .= "<div class='clearer'></div>";
			$result .= "</ul>";
			return $result;
		}
		
		public function sendMail() {
			$this->load->model("core/smartorder");
			
			$data = $this->request->post;
			
			$order = $this->model_core_smartorder->getItem(" AND `orderid` = '".$data['orderid']."'");
			$email = $order['email'];
			
			//send email
			if($data['status'] == "active" || $data['status'] == "deliver")
			{
				//load library
				$this->load->helper('mail');
				
				$mail['from'] = $this->config->get('config_contactemail');
				$mail['FromName'] = $this->config->get('config_sitename');
				$mail['to'] = $email;
				//registered fullname in order
				$mail['name'] = $order['customername'];
				
				//template
				if($data['status'] == 'active')
				{
					$mail['subject'] =  '[' . $this->config->get('config_sitename') . '] Thông báo xác nhận đặt hàng';
					$arr = array($data,'cpanel/confirmordermailtemplate.tpl');
				}
				
				if($data['status'] == 'deliver')
				{
					$mail['subject'] =  '[' . $this->config->get('config_sitename') . '] Thông báo xác nhận hoàn tất đơn hàng';
					$arr = array($data,'cpanel/deliverordermailtemplate.tpl');
				}
				
				$orderTemplate = $this->loadModule('cpanel/smartorder','orderTemplate',$arr);
	
				$mail['body'] = $orderTemplate;
				
				//$this->mailsmtp->sendMail($mail);
				HelperMail::sendEmail($this->config->get('config_contactemail'), $order['email'], $this->config->get('config_sitename'), $mail['subject'], "", $mail['body']);
				
				$this->data['output'] = "true";
			}
			else {
				$this->data['output'] = "false";
			}
			
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		public function removeOrder() {
			$orderid = $_GET['orderid'];
			$this->data['output'] = 'false';
			if(isset($orderid)) {
				
				$this->load->model("core/smartorder");
				$order = $this->model_core_smartorder->getItem(" AND `orderid` = '".$orderid."'");
				
				if($order['status'] == 'cancel') {
					$this->model_core_smartorder->delete($orderid);	
					$this->data['output'] = 'true';	
				}
			}
			$this->template = "common/output.tpl";
			$this->render();
		}
		
		public function updateStatus() {
			$data = $this->request->post;
			
			$this->load->model("core/smartorder");
			$this->load->model("customer/customer");
			
			//get old order
			$order = $this->model_core_smartorder->getItem(" AND `orderid` = '".$data['orderid']."'");
			
			//update order status
			$this->model_core_smartorder->updateStatus($data['orderid'], $data['status']);
			
			//old status
			$status  = $data['status'];
			$oldstatus = $order['status'];
			$email = $order['email'];
			$point = $order['point'];
			
			//process customer's point
			if($oldstatus != 'deliver' && $status == 'deliver') {
				$this->model_customer_customer->addPoint($email,$point);
			} 
			
			if($oldstatus == 'deliver' && $status != 'deliver') {
				$this->model_customer_customer->minusPoint($email,$point);
			}
			
			$this->data['output'] = "true";
			
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		public function orderTemplate($data, $template){
			//load libraries
			$this->load->model("customer/customer");
			$this->load->model("core/smartorder");
			
			//get order
			$this->data['order'] = $this->model_core_smartorder->getItem(" AND orderid = '" . $data['orderid'] . "'");
			
			//variables
			$this->data['ordertotal'] = 0;
			
			//load customer information
			$customer = $this->model_customer_customer->getItem($this->data['order']['customerid']);
			$point = $this->model_core_smartorder->checkFanByCustomerPoint($customer['point']);
			if(count($point))
			{
				$this->data['point'] = $point;
				$this->data['fan']	= "true";
			}
			$this->data['customer'] = $customer;
			
			//load products
			$arrProducts = $this->model_core_smartorder->getProductsByOrderid($this->data['order']['orderid']);
			$this->data['products'] = $arrProducts;
			
			//discount orders have total which greater than 1,000,000 or 2,000,000
			if(count($arrProducts))
			{
				foreach($arrProducts as $product)
				{
					$this->data['ordertotal'] += $product['subtotal'];
				}
			}
			//load promotion
			/*
			if($this->data['ordertotal'] > 0){
				$this->data['promotion'] = $this->model_core_smartorder->getPromotionByOrderTotal($this->data['ordertotal']);
			}
			*/
			
			$this->id="content";
			$this->template= $template;
			$this->render();
		}
		
	}
?>