<?php
	class ControllerCpanelOrder extends Controller
	{
		public function index()
		{
			$this->getList();
			
			$this->id="content";
			$this->layout='layout/center';
			$this->template="cpanel/order_list.tpl";
			$this->render();
		}
		
		public function getList()
		{
			// init value
			$itemperpage = 20;
			$data = $this->request->post;
			
			$page = $data['page'] == "" ? 1 : $data['page'];
			
			$this->data['post_data'] = $data;
			$where = " AND `status` <> 'delete' "; 
			$where .= $data['search_id'] == "" ? "" : " AND `orderid` = '".$data['search_id']."'";
			$where .= $data['search_customer'] == "" ? "" : " AND ( `userid` LIKE  '%".$data['search_customer']."%' OR `customername` LIKE '%".$data['search_customer']."%' )";
			$where .= $data['search_from'] == "" ? "" : " AND `total` > ".$data['search_from'];
			$where .= $data['search_to'] == "" ? "" : " AND `total` < ".$data['search_to'];
			$where .= $data['search_status'] == "" ? "" : " AND `status` LIKE '".$data['search_status']."'";
			
			
			//get order and pagination
			$this->load->model("core/order");
			$total = $this->model_core_order->count_total($where);
			$totalPage = ceil($total['cnt'] / $itemperpage);
			$this->data['paginate'] = $this->paginate($page,$totalPage);
			
			$limit = " LIMIT ".($page-1)*$itemperpage.", ".$itemperpage." ";
			$this->data['list_order'] = $this->model_core_order->getListFull($where,"orderid DESC", $limit);
			
			$this->data['stt_map'] = array(
				"%" => "tất cả",
				"pending" => "Chờ duyệt",
				"active" => "Xác nhận",
				"deliver" => "Gửi hàng hoàn tất",
				"cancel" => "Hủy",
			);
			$this->load->model("common/control");
			$this->data['stt_box'] = $this->model_common_control->getComboboxData("stt_box", $this->data["stt_map"],$data['search_status']);
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
		
		public function active() {
			$this->update_order('active');
		}
		
		public function deliver() {
			$this->update_order('deliver');
		}

		public function cancel() {
			$this->update_order('cancel');
		}

		
		private function update_order($status) {
			$listid=$this->request->post['delete'];
			$this->load->model("core/order");
			$this->load->model("customer/customer");
			if(count($listid))
			{
				foreach($listid as $id)
				{
					$order = $this->model_core_order->getItem(" AND `orderid` = '".$id."'");
					$this->model_core_order->update($id,$status);
					
					$old_status = $order['status'];
					
					$email = $order['email'];
					$point = $order['point'];
					if(($old_status == 'pending' || $old_status == 'cancel') && ($status == 'active' || $status == 'deliver') )
						$this->model_customer_customer->addPoint($email,$point);
					else if(($old_status == 'active' || $old_status == 'deliver') && ($status == 'cancel' || $status == 'deliver'))
						$this->model_customer_customer->minusPoint($email,$point);
						
				}
				$this->data['output'] = "true";
			} else {
				$this->data['output'] = "Không có hóa đơn nào để thực hiện";
			}
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		public function countpending() {
			$this->load->model("core/order");
			$count = $this->model_core_order->count_total(" AND `status` = 'pending'");
			$this->data['output'] = $count['cnt'];
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		} 
		
	}
?>