<?php
class ControllerProductFilteroption extends Controller
{
	private $error = array();
	
	function __construct()
	{
		$this->load->model("product/filteroption");
		$this->load->helper('image');	
	}
   	
	public function index()
	{
		$this->getList();
	}
	
	public function insert()
	{	
    	$this->getForm();
	}
	
	public function update()
	{

			$this->data['haspass'] = false;
			$this->data['readonly'] = 'readonly="readonly"';
			$this->data['class'] = 'readonly';
		
			$this->getForm();
	
  	}
	
	public function delete() 
	{
		$listid=$this->request->post['delete'];
		
		$this->load->model("product/filteroption");
		
		if(count($listid))
		{
			foreach($listid as $id)
			{
				$this->model_product_filteroption->delete($id);	
			}
			$this->data['output'] = "true";
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
  	}
	
	public function sortorder(){
		$arrsort = $this->request->post['sortorder'];
		
		if(isset($arrsort)){
			foreach($arrsort as $key => $value){
				$this->model_product_filteroption->sortorder($key, $value);
			}
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	public function linkdirect(){
		$data = $this->request->post;
		
		if(isset($data)){
			$this->model_product_filteroption->linkdirect($data['filterid'], $data['linkdirect']);
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	private function getList() 
	{
		$this->load->model("core/language");
		$this->load->model("product/filter");
		$data = $this->request->get;
		$this->data['insert'] = $this->url->http('product/filteroption/insert');
		$this->data['delete'] = $this->url->http('product/filteroption/delete');		
		
		$this->data['datas'] = array();
		$rows = $this->model_product_filteroption->getList($data = array());
		
		//Page
		$page = $this->request->get['page'];		
		$x=$page;		
		$limit = 20;
		$total = count($rows); 
		// work out the pager values 
		$this->data['pager']  = $this->pager->pageLayout($total, $limit, $page); 
		
		$pager  = $this->pager->getPagerData($total, $limit, $page); 
		$offset = $pager->offset; 
		$limit  = $pager->limit; 
		$page   = $pager->page;
		
		for($i=$offset;$i < $offset + $limit && count($rows[$i])>0;$i++)
		//for($i=0; $i <= count($this->data['datas'])-1 ; $i++)
		{
			$this->data['datas'][$i] = $rows[$i];
			
			//load filter
			$filter = $this->model_product_filter->getItem($this->data['datas'][$i]['filterid']);
			
			$this->data['datas'][$i]['filtername'] = $filter['name'];
			
			$this->data['datas'][$i]['link_edit'] = $this->url->http('product/filteroption/update&filter_value_id='.$this->data['datas'][$i]['filter_value_id']);
			$this->data['datas'][$i]['text_edit'] = $this->language->get('button_edit');
			
		}
		
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		

		$this->id='content';
		$this->template="product/filteroption_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	
	private function getForm()
	{
		$this->load->model("core/language");
		$this->load->model("core/site");
		$this->load->model("product/filteroption");
		$this->load->model("product/filter");
		$this->load->model("common/control");
		$this->data['DIR_UPLOADPHOTO'] = HTTP_SERVER."index.php?route=common/uploadpreview";
		$this->data['DIR_UPLOADATTACHMENT'] = HTTP_SERVER."index.php?route=common/uploadattachment";
		
		//language base on member site
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arr_site_language = explode(",", $site['language']);
		foreach($arr_site_language as $site_language){
			$language = $this->model_core_language->getLanguageByCode(trim($site_language));
			if(isset($language)){
				$this->data['language'][$language['languageid']] = $language['name'];
			}
		}
		
		if ((isset($this->request->get['filter_value_id'])) ) 
		{
      		$this->data['filter_value'] = $this->model_product_filteroption->getItem($this->request->get['filter_value_id']);

			if($this->data['filter_value']['image'] != "")
			{
				$imagepreview = HelperImage::resizePNG($this->data['filter_value']['image'],180,180);
			}
			$filter_value_description = $this->model_product_filteroption->getOptionDescriptions($this->request->get['filter_value_id']);

			foreach($filter_value_description as $key => $description){
				$this->data['filter_value_description'][$description['languageid']]['name'] = $description['name'];
			}
			
			//$this->data['filter']['imagepreview'] = $imagepreview;
			
    	}
		
		$this->data['filtertype'] = $this->model_product_filter->getList();
		
		$this->id='content';
		$this->template='product/filteroption_form.tpl';
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function save()
	{
		$data = $this->request->post;

		if($this->validateForm($data))
		{
			if($data['filter_value_id']=="")
			{
				$this->model_product_filteroption->insert($data);		
			}
			else
			{
				$this->model_product_filteroption->update($data);	
			}
			
			$this->data['output'] = "true";
		}
		else
		{
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item."<br>";
			}
		}
		$this->id='content';
		$this->template='common/output.tpl';
		$this->render();
	}
	
	private function validateForm($data)
	{
		$this->load->model("product/filteroption");

		if(isset($data['filter_description'])){
			foreach($data['filter_description'] as $description){
				if(trim($description['name']) == ''){
					$this->error['name'] = $this->language->get('warning_filter_name_null');
				}	
			}
		}
		
		/*$filter = $this->model_product_filteroption->getListOptionDescriptions();
		
		if($data['filterid'] == "" && $filter['name'] = trim($data['name']))
		{
			$this->error['name'] = $this->language->get('warning_filter_name_existed');
		}*/
	
		if (count($this->error)==0) {
	  		return TRUE;
		} else {
	  		return FALSE;
		}
	}
	
	//Cac ham xu ly tren form
	
}
?>