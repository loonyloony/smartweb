<?php
class ControllerModuleBlog extends Controller
{
	private $error = array();
	function __construct() 
	{}
	
	function index()
	{	
		$this->id='content';		
		$this->data = array_merge($this->data, $this->language->getData());
		
		$column_list = array(
			0 => "text;title;Tiêu đề",			
			1 => "text;mediaid;Mã bài viết",
			2 => "text;status;Trạng thái",
			
		);
		$config = array(
			"sitemapid" => $this->request->get['sitemapid'],
			"mediatype" => "media_blog",
			"layoutpath" => "media/list_blog.tpl",
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
			"mediatype" => "media_blog",
			"arr_tabs" => array("tab_editor","tab_information","tab_tag")
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