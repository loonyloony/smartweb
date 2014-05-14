<?php
class ControllerProductManufacturer extends Controller
{
	private $error = array();
	
	function __construct()
	{
		$this->load->model("product/manufacturer");
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
		if(count($listid))
		{
			foreach($listid as $id)
			{
				$this->model_product_manufacturer->delete($id);	
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
				$this->model_product_manufacturer->sortorder($key, $value);
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
			$this->model_product_manufacturer->linkdirect($data['manufacturerid'], $data['linkdirect']);
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	private function getList() 
	{
		$data = $this->request->get;
		$this->data['insert'] = $this->url->http('product/manufacturer/insert');
		$this->data['delete'] = $this->url->http('product/manufacturer/delete');		
		
		$this->data['datas'] = array();
		$rows = $this->model_product_manufacturer->getList($where);
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
			if($this->data['datas'][$i]['image'] != "")
			{
				$imagepreview = "<img width=100 src='".HelperImage::resizePNG($this->data['datas'][$i]['image'], 180, 180)."' >";
			}
			$this->data['datas'][$i]['link_edit'] = $this->url->http('product/manufacturer/update&manufacturerid='.$this->data['datas'][$i]['manufacturerid']);
			$this->data['datas'][$i]['imagepreview'] = $imagepreview;
			$this->data['datas'][$i]['text_edit'] = "Sửa";
			
		}
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		$this->id='content';
		$this->template="product/manufacturer_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	
	private function getForm()
	{
		$this->load->model("core/language");
		$this->load->model("core/site");
		$this->load->model("product/manufacturer");
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
		
		
		if ((isset($this->request->get['manufacturerid'])) ) 
		{
      		$this->data['manufacturer'] = $this->model_product_manufacturer->getItem($this->request->get['manufacturerid']);
			if($this->data['manufacturer']['image'] != "")
			{
				$imagepreview = HelperImage::resizePNG($this->data['manufacturer']['image'],180,180);
			}
			$product_manufacturer_description = $this->model_product_manufacturer->getDescriptions($this->request->get['manufacturerid']);
			
			foreach($product_manufacturer_description as $description){
				$this->data['product_manufacturer_description'][$description['languageid']]['summary'] = $description['summary'];
				$this->data['product_manufacturer_description'][$description['languageid']]['description'] = $description['description'];
				$this->data['product_manufacturer_description'][$description['languageid']]['meta_keyword'] = $description['meta_keyword'];
				$this->data['product_manufacturer_description'][$description['languageid']]['meta_description'] = $description['meta_description'];
			}
			
			$this->data['manufacturer']['imagepreview'] = $imagepreview;
    	}
		
		$this->id='content';
		$this->template='product/manufacturer_form.tpl';
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function save()
	{
		$data = $this->request->post;
		
		if($this->validateForm($data))
		{
			if($data['manufacturerid']=="")
			{
				$this->model_product_manufacturer->insert($data);
					
			}
			else
			{
				$this->model_product_manufacturer->update($data);	
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
		$this->load->model("product/manufacturer");
		if (trim($data['name']) == "") 
		{
      		$this->error['name'] = $this->language->get('warning_manufacturer_name_null');
    	}
		
		$manufacturer = $this->model_product_manufacturer->getItem($data['manufacturerid']);
		
		if($data['manufacturerid'] == "" && $manufacturer['name'] = trim($data['name']))
		{
			$this->error['name'] = $this->language->get('warning_manufacturer_name_existed');
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