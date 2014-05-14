<?php
class ControllerProductOption extends Controller
{
	private $error = array();
	
	function __construct()
	{
		$this->load->model("product/option");
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
				$this->model_product_option->delete($id);	
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
				$this->model_product_option->sortorder($key, $value);
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
			$this->model_product_option->linkdirect($data['optionid'], $data['linkdirect']);
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
		$this->data['insert'] = $this->url->http('product/option/insert');
		$this->data['delete'] = $this->url->http('product/option/delete');		
		
		$this->data['datas'] = array();
		$rows = $this->model_product_option->getList($data = array());
		
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
			//get option_description 
			/*$arrayOptionDescriptions = $this->model_product_option->getOptionDescriptions($this->data['datas'][$i]['optionid']);
			if(isset($arrayOptionDescriptions)){
				foreach($arrayOptionDescriptions as $key => $optiondescription){
					$optiondescription['languageid'] = $key;
					$language = $this->model_core_language->getLanguage($optiondescription['languageid']);
					$optiondescription['languagename'] = $language['name'];
					$this->data['datas'][$i]['option_description'][] = $optiondescription;
				}
			}*/
			
			$this->data['datas'][$i]['link_edit'] = $this->url->http('product/option/update&optionid='.$this->data['datas'][$i]['optionid']);
			$this->data['datas'][$i]['text_edit'] = $this->language->get('button_edit');
			
		}
		
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		

		$this->id='content';
		$this->template="product/option_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	
	private function getForm()
	{
		$this->load->model("core/language");
		$this->load->model("core/site");
		$this->load->model("product/option");
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
		
		if ((isset($this->request->get['optionid'])) ) 
		{
      		$this->data['option'] = $this->model_product_option->getItem($this->request->get['optionid']);

			if($this->data['option']['image'] != "")
			{
				$imagepreview = HelperImage::resizePNG($this->data['option']['image'],180,180);
			}
			$option_description = $this->model_product_option->getOptionDescriptions($this->request->get['optionid']);

			foreach($option_description as $key => $description){
				$this->data['option_description'][$description['languageid']]['name'] = $description['name'];
			}
			
			//$this->data['option']['imagepreview'] = $imagepreview;
			
    	}
		
		$this->data['optiontype'] = $this->model_product_option->getOptionType();
		
		$this->id='content';
		$this->template='product/option_form.tpl';
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function getOptionValueDescription(){
		$this->load->model("product/option");
		$this->load->model("core/language");
		$this->load->model("core/site");
		$optionid = $this->request->post['optionid'];
		if($optionid != ""){
			$arr_option_value = $this->model_product_option->getOptionValueDescriptions($optionid);
			
			//language base on member site
			$site = $this->model_core_site->getItem($this->member->getSiteId());
			$arr_site_language = explode(",", $site['language']);
						
			if(isset($arr_option_value)){		
				foreach($arr_option_value as $key_option_value => $value){
					if(isset($value['option_value_description'])){
						//add languagename, languageid to option_value_description array
						foreach($value['option_value_description'] as $key => $value_description){
							if(in_array($value_description['languageid'], $arr_site_language)){
								$language = $this->model_core_language->getLanguage($key);
								$value_description['languagename'] = $language['name'];
								$value_description['languageid'] = $language['languageid'];
								$option_value_description[] = $value_description;
							}
						}
					}
					//set the value of the option_value_description array
					$value['option_value_description'] = $option_value_description;
					//push into option_value array
					$arrOptionValue[] = $value;
					//assign empty array to the next run
					$option_value_description = array();
				}
			}
			
			$this->data['output'] = json_encode(array('option_value' => $arrOptionValue));
			
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
			if($data['optionid']=="")
			{
				$this->model_product_option->insert($data);		
			}
			else
			{
				$this->model_product_option->update($data);	
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
		$this->load->model("product/option");

		if(isset($data['option_description'])){
			foreach($data['option_description'] as $description){
				if(trim($description['name']) == ''){
					$this->error['name'] = $this->language->get('warning_option_name_null');
				}	
			}
		}
		
		/*$option = $this->model_product_option->getListOptionDescriptions();
		
		if($data['optionid'] == "" && $option['name'] = trim($data['name']))
		{
			$this->error['name'] = $this->language->get('warning_option_name_existed');
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