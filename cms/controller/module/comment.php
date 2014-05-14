<?php
	class ControllerModuleComment extends Controller
	{
		private $err;
		public function index()
		{
			$this->getList();
		}
		
		public function getList()
		{
			if($this->request->get['page'] != '') {
				$page = (int)trim(@$this->request->get['page']);
			} else {
				$page = 1;	
			}
			//number of row per page
			$numpage = 20;
			
			$this->load->model('core/comment');	
			$where = " AND c.id = c.comment_id ";
			
			switch($this->request->get['status']) {
				case 'pending':
					$where .= " AND c.status = 'pending' ORDER BY c.commentdate DESC";
					break;
				default:	
					$where .= " ORDER BY c.commentdate DESC";
					break;
			}			
				
			$arr_folder = array(
				array("val"=>"all","display"=>"All"),
				array("val"=>"pending","display"=>"Pending"),	
			);
			
			$this->data['combo_folder'] = $this->common->combobox($arr_folder,"display","val",$this->request->get['status']);
			
			//get total of records
			$total = $this->model_core_comment->countComment($where);
			$total_page =  ceil($total/$numpage);
			
			$link = "?route=module/comment";
			if($this->request->get['folder'] != '')
				$link .= "&status=".$this->request->get['status'];
			else
				$link .= "&status=all";
				
			$pagination = "";
			// generate pagination; 5 before and 5 after page
			for ($i = $page -5; $i < $page; $i++) {
				if($i<1) continue;
				$pagination .= "<li><a href='".$link."&page=".$i."' >".$i."</a></li>";
			}
			
			for ($i = $page; $i <= $page+5; $i++) {
				if($i>$total_page) break;
				if($page == $i)
					$pagination .= "<li class='active'><a>".$i."</a></li>";
				else 
					$pagination .= "<li><a href='".$link."&page=".$i."' >".$i."</a></li>";
			}
			
			$this->data['pagination_li'] = $pagination;
			
			$limit_from = ($page-1)*$numpage;
			
			$where .= " LIMIT ".$limit_from.",".$numpage." ";
						
			$this->data['comments'] = $this->model_core_comment->getList($where);
			$this->id="content";
			$this->template="module/comment_list.tpl";
			$this->layout='layout/center';
			$this->render();
		}
		
		public function approveitem() {
			$this->load->model('core/comment');
			$this->load->model('customer/customer');
			$data = $this->request->post['delete'];
			if(count($data)) {
				foreach($data as $item) {
					$this->model_core_comment->approveItem($item);
					
					if(SKINID == 'singapore') {
						$post = $this->model_core_comment->getItem($item);
						$receiuser = $this->model_customer_customer->getItem($post['receiveuser']);
						if($receiuser != '') {
							// send email
							$subject = "[" . $this->config->get('config_sitename') . "] ".$this->language->get('text_contact');
							$template = $this->language->get('text_email_send_contact_mail');
							$param = array(
								'{sitename}' => $this->config->get('config_sitename'),
								'{siteurl}' => ROOT_HTTP_SERVER."messages.html",
							);
							$message =  htmlspecialchars_decode($this->string->inludeParameterToTemplate($param,$template));
							$this->load->helper('mail');
							HelperMail::sendEmail($this->config->get('config_contactemail'), $receiuser['email'], $this->config->get('config_sitename'), $subject, "", $message);
						}
					}
				}	
			}
			$this->data['output'] = "true";
			$this->template = "common/output.tpl";
			$this->render();	
		}
		
		public function deleteitem() {
			$this->load->model('core/comment');
			$data = $this->request->post['delete'];
			if(count($data)) {
				foreach($data as $item) {
					$this->model_core_comment->deleteItem($item);
				}	
			}
			$this->data['output'] = "true";
			$this->template = "common/output.tpl";
			$this->render();	
		}
		
	}
?>