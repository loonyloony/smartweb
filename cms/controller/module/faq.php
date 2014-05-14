<?php
class ControllerModuleFaq extends Controller
{
	private $error = array();
	function __construct() 
	{}
	function index()
	{	
		$this->id='content';		
		$this->data = array_merge($this->data, $this->language->getData());
		
		$column_list = array(
			0 => "text;title;" . $this->language->get("column_title"),			
			1 => "text;mediaid;" . $this->language->get("column_media_id"),
			
		);
		$config = array(
			"sitemapid" => $this->request->get['sitemapid'],
			"mediatype" => "media_faq",
			"layoutpath" => "media/list_faq.tpl",
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
			"mediatype" => "media_faq",
			"arr_tabs" => array("tab_faq")
		);
		$this->data['dataform'] = $this->loadmodule("media/dataform","getForm",$config);
		
		$this->id='content';
		$this->template='module/mediaform.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	
}
?>