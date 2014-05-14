<?php
class ControllerModuleLink extends Controller
{
	private $error = array();
	
	public function __construct() 
	{
		$this->load->language('elife/sitemap');
		$this->data['errors'] = array();
	}
	
	public function index()
	{
		$this->getForm();
	}
	
	public function insert() {
		$this->data['heading_title'] = $this->language->get('heading_insert');
		
		$this->getForm();
	}
	
	public function update() {
		$this->data['heading_title'] = $this->language->get('heading_update');
		
		$this->getForm();
	}
	
	public function save()
	{
		$this->load->model("core/link");
		
		$data = $this->request->post;
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm($data)) {
			foreach($this->document->getLanguage() as $key=>$value)
			{
				$sitemap_desc = $data['link_'.$key];
				$data['link'][$key] = $sitemap_desc;
			}
			
			$sitemapid = $this->model_core_link->save($data);

			$this->data['output'] = "true";
			$this->template='common/output.tpl';	
		}
		else
		{
			foreach($this->error as $item)
				$this->data['output'] .= $item."<br />";	
			$this->template='common/output_error.tpl';	
		}
		
		$this->id='output';
		
		$this->render();
	}
	
	private function getForm() {
		//Load Model
		$this->load->model("core/sitemap");
		$this->load->model("core/module");
		$this->load->model("core/layout");
		
		//Get Sitemap ID
		$sitemapid = $this->request->get["sitemapid"];
		
		//Tab Languages
		$this->data['languages'] = $this->document->getLanguage();
		
		//Load Sitemap record
		if (isset($this->request->get['sitemapid'])) {
			$this->data['link'] = $this->model_core_sitemap->getItem($sitemapid, SITEID);
			foreach($this->document->getLanguage() as $key=>$value)
			{
				$sitemap_desc = $this->model_core_sitemap->getDescription($sitemapid, $key);
				$this->data['link'][$key] = $sitemap_desc[0];
			}
		} else {
			$this->data['link'] = array();
		}
		
		$this->id='content';
		$this->template='module/link.tpl';
		$this->layout="layout/center";
		$this->render();
	}
	
	function validateForm($data)
	{
		$data = $this->request->post;
		foreach($this->document->getLanguage() as $key=>$value)
		{
			$sitemap_desc = $data['link_'.$key];
			$data['link'][$key] = $sitemap_desc;
		}
		
		foreach ($this->document->getLanguage() as $language_id => $value) {
			if (trim($data['link'][$language_id]['sitemapname']) == "") {
				$this->error['sitemapname'] = $this->language->get('error_sitemapname');
			}
		}
		
		$this->data['errors'] = $this->error;
		if (!$this->error) {
			return true; 
		} else {
			return false;
		}
	}
}