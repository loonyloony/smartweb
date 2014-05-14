<?php
class ControllerModuleNews extends Controller
{
	private $error = array();
	function __construct() 
	{}
	
	function index()
	{	
		$this->id='content';		
		$this->data = array_merge($this->data, $this->language->getData());

		$column_list = array(
			0 => "text;title;".$this->language->get("column_title") ,
			1 => "text;mediaid;".$this->language->get("column_media_id"),
			2 => "text;status;".$this->language->get("column_status"),
			
		);
		$config = array(
			"sitemapid" => $this->request->get['sitemapid'],
			"mediatype" => "media_news",
			"layoutpath" => "media/list_news.tpl",
			"column_list" => $column_list
		);
		$this->data['datalist'] = $this->loadmodule("media/datalist","getList",$config);
		
		
		$this->template='module/medialist.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function insert()
	{		
		$config = array(
			"sitemapid" => $this->request->get['sitemapid'],
			"mediatype" => "media_news",
			"arr_tabs" => array("tab_editor","tab_information")
		);
		$this->data['dataform'] = $this->loadmodule("media/dataform","getForm",$config);
		
		$this->id='content';
		$this->template='module/mediaform.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function active()
	{
		$mediaid = $this->request->post['mediaid'];
		$status = $this->request->post['status'];
		$this->load->model('core/media');
		$this->model_core_media->updateStatus($mediaid,$status);
		$this->data['output'] = "true";
		$this->template='common/output.tpl';
		$this->render();
	}
	
}
?>