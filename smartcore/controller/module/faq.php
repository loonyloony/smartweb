<?php 

class ControllerModuleFaq extends Controller{
	
	public function index(){		
		$this->getList();	
	}
	
	private function getList(){
		
		$this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
		
		//load libraries
		$this->load->model("core/media");
		$page = $this->request->get['page'];
		
		if(isset($page)){
			$page = preg_replace('#[^0-9]#i', '', $page);	
		} else {
			$page = 1;	
		}

		$arrayOfFaq = $this->model_core_media->getListFAQ();
		
		//get total records
		$faqTotal = count($arrayOfFaq);
		
		//This is where we set how many database items to show on each page
		$itemsPerPage = 6;
		
		// Get the value of the last page in the pagination result set
		$lastPage = ceil($faqTotal / $itemsPerPage);

		// Be sure URL variable page is no lower than page 1 and no higher than $lastpage
		// If it is less than 1
		if ($page < 1) {
		// force if to be 1
			$page = 1;
		}else if ($page > 1) {
			// force it to be $lastpage's value
			if($page > $lastPage)
			{
				$page = $lastPage;
			}
		} 
		
		// This creates the numbers to click in between the next and back buttons
		// This section is explained well in the video that accompanies this script
		$link = $this->smartweb->weburl;
		$centerPages = "";
		$sub1 = $page - 1;
		$sub2 = $page - 2;
		$add1 = $page + 1;
		$add2 = $page + 2;
		if($this->request->get['__seourl__'] != ""){
			if ($page == 1) {
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub2 . '">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add2 . '">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
			}
		} else {
			if ($page == 1) {
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub2 . '">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add2 . '">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
			}
		}
		
		$limit = ' LIMIT ' .($page - 1) * $itemsPerPage .',' . $itemsPerPage;
		
		// Initialize the pagination output variable
		$paginationDisplay = "";
		// This code runs only if the last page variable is ot equal to 1, if it is only 1 page we require no paginated links to display
		if ($lastPage != "1"){
			// This shows the user what page they are on, and the total number of pages
			//$paginationDisplay .= 'Trang <strong>' . $page . '</strong> trên tổng ' . $lastPage. '&nbsp; trang  ';
			
			$paginationDisplay .= '<ul>';
			// If we are not on page 1 we can place the Back button
			if ($page != 1) {
				$previous = $page - 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '?page=' . $previous . '"><span> &lt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '&page=' . $previous . '"><span> &lt; </span></a></li> ';
				}
			}
			// Lay in the clickable numbers display here between the Back and Next links
			$paginationDisplay .= $centerPages;
			// If we are not on the very last page we can place the Next button
			if ($page != $lastPage) {
				$nextPage = $page + 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '?page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '&page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				}
			}
			$paginationDisplay .= '</ul>';
		}
		
		$arrayOfFaq = $this->model_core_media->getListFAQ("", $limit);	
				
		if(count($arrayOfFaq)){
			foreach($arrayOfFaq as $faq){
				$this->data['faq'][] = array(
												'title'			=> $faq['title'],
												'summary'		=> htmlspecialchars_decode($faq['summary'])
											);
			}	
		}
		
		//pagination
		if(count($this->data['faq']))
		{
			$this->data['paginationDisplay'] = $paginationDisplay;
		}
		
		/************************************
		* config
		************************************/
		
		//set page title
		if($this->smartweb->sitemap['sitemap_description']['meta_title'] == "")
		{
			$this->document->setTitle($this->smartweb->sitemap['sitemap_description']['sitemapname']);
		}
		else
		{
			$this->document->setTitle($this->smartweb->sitemap['sitemap_description']['meta_title']);	
		}
		
		//meta tag
		$meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'];
		$this->document->setDescription($meta_description);
		$meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'];
		$this->document->setKeywords($meta_keywords);
		
		//link
		$this->document->addLink($this->url->getURL($this->smartweb->sitemap['seo_url'], 'sitemap', $this->smartweb->sitemapid));
		
		//OG
		$og_title = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
		$og_url = $this->url->getURL($this->smartweb->sitemap['seo_url'], 'sitemap', $this->smartweb->sitemapid);
		$og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->smartweb->sitemap['imagepath'];
		$og_summary = $this->smartweb->sitemap['sitemap_description']['summary'];
		$og_description = $this->string->getTextLength($this->smartweb->sitemap['sitemap_description']['description'], 0, 100);
		$og_publicdate = "";
		$og_revisiondate = "";
		$this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);
		
		$this->template="module/faq.tpl";
		$this->id="content";
		
		$this->render();
	}
	
	public function sendFAQ(){
		$data=$this->request->post;

		$error = $this->validate($data);

		if(count($error)){
			foreach($error as $item){
				$this->data['output'].=$item."<br>";
			}
		} else {
			
			$this->load->model("core/site");
			$this->load->model("core/message");
			
			$site = $this->model_core_site->getItem(SITEID);
			
			$message['to'] = $site['contactemail'];
			$message['from'] = '"' . $data['fullname'] . '" '. $data['email'];
			$message['title'] = $this->language->get('text_sendquestion')." - " . $data['sitemapname'];
			$message['description'].= $this->language->get('text_phone').": ".$data['telephone']."<br>";
			$message['description'].=$this->language->get('text_content').": ".$data['description']."<br>";
			

			$message['folder']="inbox";

			$this->model_core_message->insert($message);
			
			$this->load->helper('mail');
			//Send mail
			
			if(SKINID == "huutoan")
			{
				$to=$data['department'];
				
				if($to == "")
				{
					$to=$site['contactemail'];	
				}
			} else {
				$to=$site['contactemail'];
			}
			
			// subject
			$subject = "[" . $this->config->get('config_sitename') . "] ".$this->language->get('text_sendquestion')." - " . html_entity_decode($data['sitemapname']);
			
			// To send HTML mail, the Content-type header must be set
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
			
			// Additional headers
			$headers .= 'From: ' . $data['fullname'] . $data['email'];
								
			//Mail it
			//$template = $this->language->get('message_template_recoverypassword');
			//load template
			$arr = array($data,'common/faq.tpl');
			$faqTemplate = $this->loadModule('module/faq','faqTemplate',$arr);
			
			$message = $faqTemplate;

			/*$mail['body'] = $orderTemplate;
			$template = $this->language->get('message_template_faq');
			
			
			$param = array(
							'{fullname}' 	=> $data['fullname'],
							'{description}' => $data['description'],
							'{email}'		=> $data['email'],
							'{telephone}'	=> $data['telephone']
							
							);
			$message = $this->string->inludeParameterToTemplate($param,$template);*/
			
			if(SKINID == "huutoan" || SKINID == "trungnamrc" || SKINID == 'singapore')
			{
				HelperMail::sendmail($to, $subject, $message, $data['email'], "mail", $data['fullname']);
			} else {
				HelperMail::sendEmail('elifepartners.com@gmail.com', $this->config->get('config_contactemail'), "elife partners", $subject, "", $message);
			}
			
			/*$mail['from'] = $data['email'];
			$mail['FromName'] = $data['fullname'];
			$mail['to'] = $site['contactemail'];
			$mail['name'] = $site['sitename'];
			$mail['subject'] =  "Gửi câu hỏi - góc tư vấn";
			$arr = array($message['description']);
			$mail['body'] = $this->loadModule('module/contactmap','createEmailTemplate',$arr);*/
			
			//$this->mailsmtp->sendMail($mail);
			$this->data['output'] = "true";
		}
		
		$this->id="content";
		$this->template="common/output.tpl";

		$this->render();
	}
	
	private function validate($data){
		$err = array();
		
		if($data['fullname'] == ""){
			$err["fullname"] = $this->language->get('war_entercontactname');
		} elseif($data['email'] == ""){
			$err["email"] = $this->language->get('war_entercontactemail');
		} elseif ($this->validation->_checkEmail($data['email']) == false ){
			$err["email"] = $this->language->get('war_invalidemail');
		}

		return $err;
	}
	
	public function faqTemplate($data, $template){
		$this->data['data'] = $data;
		
		$this->id="content";
		$this->template=$template;

		$this->render();

	}
		
}

?>