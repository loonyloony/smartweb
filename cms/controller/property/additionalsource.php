<?php
class ControllerPropertyAdditionalSource extends Controller
{
	private $error = array();
	
	function __construct()
	{
		$this->load->model("property/additionalsource");
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
		if(count($listid))
		{
			foreach($listid as $id)
			{
				$this->model_property_additionalsource->delete($id);	
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
				$this->model_property_additionalsource->sortorder($key, $value);
			}
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	private function getList() 
	{
		$data = $this->request->get;
		
		$this->data['insert'] = $this->url->http('property/additionalsource/insert');
		$this->data['delete'] = $this->url->http('property/additionalsource/delete');		
		
		$this->data['datas'] = array();
		
		//filter
		$where = '';
		/*
		$filter_name = trim(urldecode($this->request->get['filter_name']));
		if ($filter_name != '') {
			$where = " AND name like '%". $filter_name ."%'";
		}
		*/
		
		$rows = $this->model_property_additionalsource->getList($where);
		
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
			$this->data['datas'][$i]['link_edit'] = $this->url->http('property/additionalsource/update&additionalsourceid='.$this->data['datas'][$i]['additionalsourceid']);		
		}
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		$this->id='content';
		$this->template="property/additionalsource_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	
	private function getForm()
	{
		$this->load->model("core/language");
		$this->load->model("core/site");
		$this->load->model("property/additionalsource");
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
		// area of VN
		
		if ((isset($this->request->get['additionalsourceid'])) ) 
		{
      		$this->data['additionalsource'] = $this->model_property_additionalsource->getItem($this->request->get['additionalsourceid']);
			$additional_source_description = $this->model_property_additionalsource->getDescriptions($this->request->get['additionalsourceid']);
			
			foreach($additional_source_description as $description){
				$this->data['additional_source_description'][$description['languageid']]['sourcename'] = $description['sourcename'];
				$this->data['additional_source_description'][$description['languageid']]['sourcevalue'] = $description['sourcevalue'];
			}
    	}
		
		$this->id='content';
		$this->template='property/additionalsource_form.tpl';
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function save()
	{
		$data = $this->request->post;
				
		if($this->validateForm($data))
		{			
				if($data['additionalsourceid']=="")
				{
					$this->model_property_additionalsource->insert($data);
				}
				else
				{
					$this->model_property_additionalsource->update($data);	
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
		$this->load->model("property/additionalsource");
		$this->load->model("core/site");
		if (trim($data['title']) == "") 
		{
      		$this->error['title'] = $this->language->get('warning_additionalsource_name_null');
    	}
		
		if (count($this->error)==0) {
	  		return TRUE;
		} else {
	  		return FALSE;
		}
	}
	
	//Cac ham xu ly tren form
	
}
?>