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
			
			$where = " AND c.status != 'waiting' ";
			if($this->request->get['mediaid'] != '') {
				$where .= " AND c.mediaid = '".$this->request->get['mediaid']."'";
			}
			
			//customerid is used to determine who the message belong to because the message will have 2 editions 
			
			switch($this->request->get['folder']) {
				case 'inbox':
					$where .= " AND c.receiveuser = '".$this->member->getId()."' AND c.customerid = '".$this->member->getId()."' ORDER BY c.commentdate DESC";
					break;
				case 'sent':
					$where .= " AND c.userid = '".$this->member->getId()."' AND c.customerid = '".$this->member->getId()."' ORDER BY c.commentdate DESC";
					break;
				default:	
					$where .= " AND ( c.customerid = '".$this->member->getId()."') ORDER BY c.commentdate DESC";
					break;
			}			
				
			$arr_folder = array(
				array("val"=>"all","display"=>"All"),
				array("val"=>"inbox","display"=>"Inbox"),
				array("val"=>"sent","display"=>"Sent"),			
			);
			
			$this->data['combo_folder'] = $this->common->combobox($arr_folder,"display","val",$this->request->get['folder']);
			$this->data['my_userid'] = $this->member->getId();
			
			//get total of records
			$total = $this->model_core_comment->countComment($where);
			$total_page =  ceil($total/$numpage);
			
			$link = $this->smartweb->weburl;
			if($this->request->get['folder'] != '')
				$link .= "?folder=".$this->request->get['folder'];
			else
				$link .= "?folder=all";
				
			if($this->request->get['mediaid'] != '')
				$link .= "&mediaid=".$this->request->get['mediaid'];
			
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
			$this->id="comment";
			$this->template="module/comment_list.tpl";
			$this->render();
		}
		
		public function countunread()
		{
			$where = " AND c.customerid = '".$this->member->getId()."' AND c.status = 'unread' ";
			$this->load->model('core/comment');
			$this->data['output'] = $this->model_core_comment->countComment($where);
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		public function getForm($mediaid = '5',$objtype = 'propertyproduct') {
			$this->data['mediaid'] = $mediaid;
			$this->data['objtype'] = $objtype;
			$this->id="comment";
			$this->template="module/comment_form.tpl";
			$this->render();
		}
		
		public function save()
		{
			$data = $this->request->post;
			if($this->validate($data)) {
				$this->load->model('core/comment');
				$this->load->helper('mail');
				$this->load->model('customer/customer');
				//get the media information
				if($data['receiveuser'] == '') {
					if($data['objtype'] = "propertyproduct") {
						$this->load->model('core/propertyproduct');
						$product = $this->model_core_propertyproduct->getItemBasic($data['mediaid']);
						if($product['customerid'] != '' )  { 
							$data['receiveuser']  = $product['customerid'];
						}
						/*else {
							$data['receiveuser']  = $product['userid'];
						}*/
					}			
				}
				
				//save 2 edtion, one for sender and one for receiver
				
				$data_sender = $data;
				$data_sender['customerid'] = $this->member->getId();
				$data_sender['status'] = 'pending';
				
				$data_receiver = $data;
				$data_receiver['customerid'] = $data['receiveuser'];
				$data_receiver['status'] = 'waiting';
				
				$comment_id = $this->model_core_comment->save($data_sender);
				$this->model_core_comment->updateCommentId(array('id'=>$comment_id, 'comment_id'=>$comment_id));
				
				$data_receiver['comment_id'] = $comment_id;
				$this->model_core_comment->save($data_receiver);
				
				//notify by email
				if(SKINID != 'singapore') {
					$receiuser = $this->model_customer_customer->getItem($data['receiveuser']);
					if($receiuser != '') {
						// send email
						$subject = "[" . $this->config->get('config_sitename') . "] ".$this->language->get('text_contact');
						$template = $this->language->get('text_email_send_contact_mail');
						$param = array(
							'{sitename}' => $this->config->get('config_sitename'),
							'{siteurl}' => HTTP_SERVER."messages.html",
						);
						$message =  htmlspecialchars_decode($this->string->inludeParameterToTemplate($param,$template));
						$this->load->helper('mail');
						HelperMail::sendEmail($this->config->get('config_contactemail'), $receiuser['email'], $this->config->get('config_sitename'), $subject, "", $message);
					}
				}
				
				$this->data['output'] = 'true';
			} else {
				$this->data['output'] = $this->err;
			}
			$this->id="content";
			$this->template="common/output.tpl";
			$this->render();
		}
		
		private function validate($data) {
			if($this->err == '')
				return true;
			else
				return false;
		}
		
		public function updatestatus() {
			
			$id = $this->request->post['id'];
			if($id == '') {
				$this->data['output'] = 'error1';			
			} else {
				$this->load->model('core/comment');
				$comment = $this->model_core_comment->getItem($id);
				if($comment['customerid'] != $this->member->getId()) {
					$this->data['output'] = "error2";	
				} elseif ($comment['status'] != 'unread' ){
					$this->data['output'] = 'true';
				} else {
					$this->model_core_comment->updateStatus(array('id'=>$id,'status'=>'read'));
					$this->data['output'] = 'true';	
				}
			}
			$this->template = "common/output.tpl";
			$this->render();
		}
		public function deletecomment() {
			
			$id = $this->request->post['id'];
			if($id == '') {
				$this->data['output'] = 'error1';			
			} else {
				$this->load->model('core/comment');
				$comment = $this->model_core_comment->getItem($id);
				if($comment['customerid'] != $this->member->getId()) {
					$this->data['output'] = "error2";	
				} else {
					$this->model_core_comment->deleteItem($id);
					$this->data['output'] = 'true';	
				}
			}
			$this->template = "common/output.tpl";
			$this->render();
		}
		
	}
?>