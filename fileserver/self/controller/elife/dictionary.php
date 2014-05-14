<?php
class ControllerElifeDictionary extends Controller
{
	function __construct() 
	{
       $this->data['heading_title'] = "Multi_Lanuage Dictionary";
	   $this->data['route'] = $this->getRoute();
	   $this->load->model("elife/dictionary");
	   //$this->autoGetFileLanguage();
	 
   	}
	public function index()
	{
		$languagekey = $this->request->get['languagekey'];
		if($languagekey=="")
			$this->getList();
		else
			$this->getForm();
	}
	
	private function getList() 
	{
		$this->data['insert'] = $this->url->http('elife/dictionary/insert');
		$this->data['delete'] = $this->url->http('elife/dictionary/delete');		
		
		
		$this->data['rows'] = $this->model_elife_dictionary->getList();
		$this->data['rows'] = $this->common->array_sort($this->data['rows'], "languagekey");
		
		$this->id='content';
		$this->template="elife/dictionary_list.tpl";
		$this->layout="layout/center";
		$this->render();
	}
	
	
	
	public function insert()
	{
		$this->getForm();
	}
	
	public function delete() 
	{		
    	if (isset($this->request->post['delete'])) 
		{
			foreach($this->request->post['delete'] as $item) {
				$this->model_elife_dictionary->delete($item);
			}
			$this->data['output'] = "Delete success";
    	}
	
    	//$this->getList();
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
  	}
	
	private function getForm()
	{
		$languagekey = $this->request->get['languagekey'];
		 $this->data['DIR_UPLOADPHOTO'] = HTTP_SERVER."index.php?route=common/uploadpreview";
		if($languagekey)
		{
			$this->data['item']=$this->model_elife_dictionary->getItem($languagekey);	
		}
		
		$this->id='content';
		$this->template="elife/dictionary_form.tpl";
		$this->layout="layout/center";
		$this->render();
	}
	
	public function save()
	{
		$data = $this->request->post;
		$err = $this->validate($data);
		if(count($err)==0)
		{
			
			
				$languagekey = $this->model_elife_dictionary->save($data);
			
			$this->data['output'] ="true";
		}
		else
		{
			foreach($err as $item)
				$this->data['output'] .= $item."<br>";
		}
			
		$this->id='skin';
		$this->template='common/output.tpl';	
		$this->render();
		
	}
	
	function validate($data)
	{
		$err = array();
		if($data['languagekey']=="")
			$err['languagekey'] ="Key not null!";
		if($data['vn']=="")
			$err['vn'] ="Tiếng Việt not null!";
		if($data['en']=="")
			$err['en'] ="English not null!";
		
		return $err;
	}
	
	private function autoGetFileLanguage()
	{
		$datavn = $this->language->loaddata("vietnam/vietnam");	
		$dataen = $this->language->loaddata("english/english");
		
		foreach($datavn as $key=>$value)
		{
			$row = array();
			$row['languagekey'] = $key;
			$row['vn'] = $value;
			$row['en'] = $dataen[$key];	
			unset($dataen[$key]);
			$languagekey = $this->model_elife_dictionary->save($row);
		}
		
		foreach($dataen as $key=>$value)
		{
			$row = array();
			$row['languagekey'] = $key;
			$row['vn'] = $datavn[$key];	
			$row['en'] = $value;	
			$languagekey = $this->model_elife_dictionary->save($row);
		}
			
	}
}
?>