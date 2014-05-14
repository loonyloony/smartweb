<?php
class ControllerElifeSetting extends Controller
{
	private $error = array();
	
	public function index()
	{
		$this->load->language('core/site');
		$this->data = array_merge($this->data, $this->language->getData());
		
		$this->document->title = $this->language->get('heading_title');
		
		$this->load->model("core/site");
		$this->update();
	}
	
	public function insert()
	{
		$this->load->language('core/site');
		$this->data = array_merge($this->data, $this->language->getData());
		
		$this->document->title = $this->language->get('heading_title');
		$this->load->model("core/site");
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validateForm())) {
			$this->model_core_site->insertSite($this->request->post);
			$this->session->data['success'] = $this->language->get('text_success');
			$this->redirect($this->url->http('core/site'));
		}
    
    	$this->getForm();
	}
	
	public function update() {
		$this->load->language('core/site');
		$this->data = array_merge($this->data, $this->language->getData());
		$this->document->title = $this->language->get('heading_title');
		$this->load->model("core/site");	
		
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validateForm())) {
			$this->request->post['siteid'] =SITEID;
			$site=$this->model_core_site->getItem($this->request->post['siteid']);
			if(count($site)>0){
				
				$this->model_core_site->updateSite($this->request->post);
				$this->session->data['success'] = $this->language->get('text_success');
			}else{
				echo "sdsf";
				$this->model_core_site->insertSite($this->request->post);
				$this->session->data['success'] = $this->language->get('text_success');
			}
			
			
			//$this->redirect($this->url->http('core/site'));
		}

    	$this->getForm();
  	}
	
	public function delete() {
		$this->load->language('core/site');
		//$this->data = array_merge($this->data, $this->language->getData());
		
		//$this->document->title = $this->language->get('heading_title');
		$this->load->model("core/site");
			
    	if (isset($this->request->post['delete'])) 
		{
			foreach ($this->request->post['delete'] as $siteid) {
				$this->model_core_site->deleteSite($siteid);
			}
			$this->data['output'] = $this->language->get('announ_delete');
    	}
	
    	//$this->getList();
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
  	}
	
	public function copySite()
	{
		$siteid = $this->request->get['siteid'];
		$this->load->model("core/sitemap");
		$this->load->model("core/media");
		/*$medias = $this->model_core_media->getList();
		
		foreach($medias as $val)
		{
			$str = str_replace("default",$siteid, $val['mediaid']);
			$val['mediaid'] = $str;
			$this->model_core_media->save($val);
		}*/
		$sitemaps = array();
		$sitemaps=$this->model_core_sitemap->getList("default");
		
		foreach($sitemaps as $item)
		{
			
			//Copy sitemap
			
			$item['siteid'] = $siteid;
			$arr = $this->model_core_sitemap->getItem($item['sitemapid'],$item['siteid']);
			
			
			if(count($arr)==0)
				$this->model_core_sitemap->insertSiteMap($item);
			//Copy media lien quen den sitemap
			/*foreach($medias as $val)
			{
				$val['refersitemap'] = "[".$item['sitemapid']."]";
				$this->model_core_media->insert($val);
			}*/
		}
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	private function getList() 
	{
		$this->data['insert'] = $this->url->http('core/site/insert');
		$this->data['delete'] = $this->url->http('core/site/delete');		
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		$this->data['sites'] = array();
		$this->data['sites'] = $this->model_core_site->getList();
		
		for($i=0; $i <= count($this->data['sites'])-1 ; $i++)
		{
			$this->data['sites'][$i]['link_edit'] = $this->url->http('core/site/update&siteid='.$this->data['sites'][$i]['siteid']);
			$this->data['sites'][$i]['text_edit'] = $this->language->get('tool_edit');
		}
		
		$this->id='content';
		$this->template="core/site_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	
	private function getForm()
	{
		$this->load->helper("image");
		$this->data['error'] = @$this->error;
		
		
			$this->data['action'] = $this->url->http('elife/setting/update');
		
		
		$this->data['cancel'] = $this->url->https('core/message');
		
		$this->data['status'] = $this->model_core_site->getStatusList();
		$this->data['site'] = $this->model_core_site->getItem(SITEID);
		if (($this->request->server['REQUEST_METHOD'] != 'POST')) {
      		/*$this->data['site'] = $this->model_core_site->getItem(SITEID);
			if($this->data['site']['logo']){
				$this->data['site']['logothumbnail'] = HelperImage::resizePNG($this->data['site']['logo'], 200, 200);	
			}
			
			if($this->data['site']['symbol']){
				$this->data['attachment'][0]['imagethumbnail'] = HelperImage::resizePNG($this->data['site']['symbol'], 50, 50);
				$this->data['attachment'][0]['symbol'] = $this->data['site']['symbol'];
				$file = $this->model_core_file->getFileByPath($this->data['site']['symbol']);
				if(isset($file)){
					$this->data['attachment'][0]['fileid'] = $file['fileid'];
				}
			}*/
    	}
		else
		{
			$this->data['site'] = $this->request->post;
		}
		
		$this->id='content';
		$this->template='elife/setting_form.tpl';
		$this->layout="layout/center";
		
		$this->render();
	}
	
	private function validateForm()
	{
    	/*if ((strlen($this->request->post['siteid']) == 0) || (strlen($this->request->post['siteid']) > 30)) {
      		$this->error['siteid'] = $this->language->get('error_siteid');
    	}*/
		
		if (strlen($this->request->post['sitename']) == 0) {
      		$this->error['sitename'] = $this->language->get('error_sitename');
    	}
		
		if(trim($this->request->post['contactemail']) == ''){
			$this->error['contactemail'] = $this->language->get('error_email');	
		}else{
			if(!$this->validation->_checkEmail($this->request->post['contactemail']))
			{
				$this->error['contactemail'] = $this->language->get['error_emailnotformate'];
			}
		}
		
		if(trim($this->request->post['language']) == ''){
			$this->error['language'] = $this->language->get('error_nullfield');	
		}
		
		if(trim($this->request->post['currency']) == ''){
			$this->error['currency'] = $this->language->get('error_nullfield');	
		}
			
		if (!$this->error) {
			
	  		return TRUE;
		} else {
	  		return FALSE;
		}
	}
}
?>