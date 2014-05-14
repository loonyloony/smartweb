<?php
	class ControllerAddonYeucaubaogia extends Controller
	{
		public $validSecure;
		public function index()
		{
			$img = new Securimage();
			$this->data['security'] = DIR_COMPONENT."securimage/securimage_show.php?sid=".md5(uniqid(time()));
			$this->id="yeucaubaogia";
			$this->template="addon/yeucaubaogia.tpl";
			$this->render();
		}
		
		public function getNewSecureImage()
		{
			//$img = new Securimage();
			$this->data['output'] = DIR_COMPONENT."securimage/securimage_show.php?sid=".md5(uniqid(time()));
			$this->id="content";
			$this->template="common/output.tpl";
	
			$this->render();
		}
		
		public function sendMessage(){

			$data=$this->request->post;
	
			$error = $this->validate($data);
	
			if(count($error)){
				foreach($error as $item){
					$this->data['output'].= $item;
				}
			} else {
				
				$this->load->model("core/site");
				$this->load->model("core/message");
				
				$site = $this->model_core_site->getItem(SITEID);
				
				$message['to'] = "office@elifepartners.com";
				$message['from'] = '"' . $data['hoten'] . '" '. $data['email'];
				$message['title'] = $this->language->get('text_contactprice');
				
				$message['description'].=$this->language->get('text_fullname').": ".$data['hoten']."<br />";
				$message['description'].=$this->language->get('text_company').": ".$data['congty']."<br />";
				$message['description'].=$this->language->get('text_email').": ".$data['email']."<br />";
				$message['description'].=$this->language->get('text_phone').": ".$data['dienthoai']."<br />";
				if(is_array($data['service']))
				{
					$message['description'].=$this->language->get('text_serviceneedprice').": ".implode(",",$data['service'])."<br />";
				}
				$message['description'].=$this->language->get('text_estimatedcost').": ".$data['chiphidutru']."<br />";
				$message['description'].=$this->language->get('text_estimatedtime').": ".$data['thoigianmongmuon']."<br />";
				$message['description'].=$this->language->get('text_content').": ".$data['mota']."<br />";
	
				$message['folder']="inbox";
	
				$this->model_core_message->insert($message);
				
				$mail['from'] = $data['email'];
				$mail['FromName'] = $data['fullname'];
				$mail['to'] = $site['contactemail'];
				$mail['name'] = $site['sitename'];
				$mail['subject'] =  $this->language->get('text_contact');
				$arr = array($message['description']);
				$mail['body'] = $this->loadModule('module/contactmap','createEmailTemplate',$arr);
				
				//$this->mailsmtp->sendMail($mail);
				$this->data['output'] = "true";
			}
			
			$this->id="content";
			$this->template="common/output.tpl";
	
			$this->render();
	
		}
	
		
	
		private function validate($data){
			$err = array();
			$img = new Securimage();
			$this->validSecure = $img->check($data['mabaove']);
			if($data['hoten'] == ""){
				$err["hoten"] = $this->language->get('war_entername');
			} elseif($data['email'] == ""){
				$err["email"] = $this->language->get('war_enteremail');
			} elseif ($this->validation->_checkEmail($data['email']) == false ){
				$err["email"] = $this->language->get('war_invalidemail');
			} elseif($data['dienthoai'] == ""){
				$err["dienthoai"] = $this->language->get('war_enterphone');
			} elseif($this->validSecure == false)
			{
				$err["mabaove"] = $this->language->get('war_invalidcode');			
			}
	
			return $err;
		}
	}
?>