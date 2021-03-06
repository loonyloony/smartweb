<?php
class ControllerModuleVideoalbum extends Controller
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
			
		);
		$config = array(
			"sitemapid" => $this->request->get['sitemapid'],
			"mediatype" => "media_videoalbum",
			"layoutpath" => "media/list_videoalbum.tpl",
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
			"mediatype" => "media_videoalbum",
			"arr_tabs" => array("tab_editor","tab_information","tab_file")
		);
		$this->data['dataform'] = $this->loadmodule("media/dataform","getForm",$config);
		
		$this->id='content';
		$this->template='module/mediaform.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
}
?>