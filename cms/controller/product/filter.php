<?php
class ControllerProductFilter extends Controller
{
	private $error = array();
	
	function __construct()
	{
		$this->load->model("product/filter");
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
		
		$this->load->model("product/filter");
		
		if(count($listid))
		{
			foreach($listid as $id)
			{
				$this->model_product_filter->delete($id);	
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
				$this->model_product_filter->sortorder($key, $value);
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
			$this->model_product_filter->linkdirect($data['filterid'], $data['linkdirect']);
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	private function getList() 
	{
		$this->load->model("core/language");
		$data = $this->request->get;
		$this->data['insert'] = $this->url->http('product/filter/insert');
		$this->data['delete'] = $this->url->http('product/filter/delete');		
		
		$this->data['datas'] = array();
		$rows = $this->model_product_filter->getList($data = array());
		
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
			//get filter_description 
			/*$arrayOptionDescriptions = $this->model_product_filter->getOptionDescriptions($this->data['datas'][$i]['filterid']);
			if(isset($arrayOptionDescriptions)){
				foreach($arrayOptionDescriptions as $key => $filterdescription){
					$filterdescription['languageid'] = $key;
					$language = $this->model_core_language->getLanguage($filterdescription['languageid']);
					$filterdescription['languagename'] = $language['name'];
					$this->data['datas'][$i]['filter_description'][] = $filterdescription;
				}
			}*/
			
			$this->data['datas'][$i]['link_edit'] = $this->url->http('product/filter/update&filterid='.$this->data['datas'][$i]['filterid']);
			$this->data['datas'][$i]['text_edit'] = $this->language->get('button_edit');
			
		}
		
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		

		$this->id='content';
		$this->template="product/filter_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	
	private function getForm()
	{
		$this->load->model("core/language");
		$this->load->model("core/site");
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
		
		if ((isset($this->request->get['filterid'])) ) 
		{
      		$this->data['filter'] = $this->model_product_filter->getItem($this->request->get['filterid']);

			if($this->data['filter']['image'] != "")
			{
				$imagepreview = HelperImage::resizePNG($this->data['filter']['image'],180,180);
			}
			$filter_description = $this->model_product_filter->getOptionDescriptions($this->request->get['filterid']);

			foreach($filter_description as $key => $description){
				$this->data['filter_description'][$description['languageid']]['name'] = $description['name'];
			}
			
			//$this->data['filter']['imagepreview'] = $imagepreview;
			
    	}
		
		$this->data['filtertype'] = $this->model_product_filter->getOptionType();
		
		$this->id='content';
		$this->template='product/filter_form.tpl';
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function getOptionValueDescription(){
		$this->load->model("product/filter");
		$this->load->model("core/language");
		$this->load->model("core/site");
		$filterid = $this->request->post['filterid'];
		if($filterid != ""){
			$arr_filter_value = $this->model_product_filter->getOptionValueDescriptions($filterid);
			
			//language base on member site
			$site = $this->model_core_site->getItem($this->member->getSiteId());
			$arr_site_language = explode(",", $site['language']);
						
			if(isset($arr_filter_value)){		
				foreach($arr_filter_value as $key_filter_value => $value){
					if(isset($value['filter_value_description'])){
						//add languagename, languageid to filter_value_description array
						foreach($value['filter_value_description'] as $key => $value_description){
							if(in_array($value_description['languageid'], $arr_site_language)){
								$language = $this->model_core_language->getLanguage($key);
								$value_description['languagename'] = $language['name'];
								$value_description['languageid'] = $language['languageid'];
								$filter_value_description[] = $value_description;
							}
						}
					}
					//set the value of the filter_value_description array
					$value['filter_value_description'] = $filter_value_description;
					//push into filter_value array
					$arrOptionValue[] = $value;
					//assign empty array to the next run
					$filter_value_description = array();
				}
			}
			
			$this->data['output'] = json_encode(array('filter_value' => $arrOptionValue));
			
		}
		
		$this->id="addon";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	public function save()
	{
		$data = $this->request->post;

		if($this->validateForm($data))
		{
			if($data['filterid']=="")
			{
				$this->model_product_filter->insert($data);		
			}
			else
			{
				$this->model_product_filter->update($data);	
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
		$this->load->model("product/filter");

		if(isset($data['filter_description'])){
			foreach($data['filter_description'] as $description){
				if(trim($description['name']) == ''){
					$this->error['name'] = $this->language->get('warning_filter_name_null');
				}	
			}
		}
		
		/*$filter = $this->model_product_filter->getListOptionDescriptions();
		
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