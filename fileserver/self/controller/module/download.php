<?php
class ControllerModuleDownload extends Controller
{
	private $error = array();
	function __construct() 
	{}
	
	function index()
	{	$this->data = array_merge($this->data, $this->language->getData());
		$this->getForm();
	}
	
	public function getForm()
	{
		$config = array(
			"sitemapid" => $this->request->get['sitemapid'],
			"mediatype" => "media_download",
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