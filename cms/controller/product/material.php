<?php
class ControllerProductMaterial extends Controller
{
	private $error = array();
	
	function __construct()
	{
		$this->load->model("product/material");
		$this->load->helper('image');	
	}
   	
	public function index()
	{
		$this->load->model("product/material");
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
				$this->model_product_material->delete($id);	
			}
			$this->data['output'] = "true";
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
  	}
	
	private function getList() 
	{
		$data = $this->request->get;
		$this->data['insert'] = $this->url->http('product/material/insert');
		$this->data['delete'] = $this->url->http('product/material/delete');		
		
		$this->data['datas'] = array();
		$rows = $this->model_product_material->getList($where);
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
			if($this->data['datas'][$i]['imagepath'] != "")
			{
				$imagepreview = "<img width=100 src='".HelperImage::resizePNG($this->data['datas'][$i]['imagepath'], 180, 180)."' >";
			}
			$this->data['datas'][$i]['link_edit'] = $this->url->http('product/material/update&id='.$this->data['datas'][$i]['id']);
			$this->data['datas'][$i]['imagepreview'] = $imagepreview;
			$this->data['datas'][$i]['text_edit'] = "Sửa";
			
		}
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		$this->id='content';
		$this->template="product/material_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	
	private function getForm()
	{
		$this->data['DIR_UPLOADPHOTO'] = HTTP_SERVER."index.php?route=common/uploadpreview";
		$this->data['DIR_UPLOADATTACHMENT'] = HTTP_SERVER."index.php?route=common/uploadattachment";
			
		if ((isset($this->request->get['id'])) ) 
		{
      		$this->data['item'] = $this->model_product_material->getItem($this->request->get['id']);
			if($this->data['item']['imagepath'] != "")
			{
				//$imagepreview = "<img width=100 src='".HelperImage::resizePNG($this->data['item']['imagepath'],180,180)."' />";
				$imagepreview = HelperImage::resizePNG($this->data['item']['imagepath'],180,180);
			}
			$this->data['item']['imagepreview'] = $imagepreview;
    	}
		
		$this->id='content';
		$this->template='product/material_form.tpl';
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function save()
	{
		$data = $this->request->post;
			
		
		if($this->validateForm($data))
		{
			if($data['id']=="")
			{
				$this->model_product_material->insert($data);
					
			}
			else
			{				
				$this->model_product_material->update($data);	
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
		$this->load->model("product/material");
		if (trim($data['materialname']) == "") 
		{
      		$this->error['materialname'] = "Bạn chưa nhập tên chất liệu";
    	}
		else if($data['id'] != "")
		{
			$where = "AND materialname = '".$data['materialname']."' AND id <> '".$data['id']."'";
			$materials = $this->model_product_material->getList($where);
			
			if(count($materials) > 0)
			{
				$this->error['materialname'] = "Tên chất liệu đã tồn tại trong hệ thống";
			}
		}
		else
		{
			$where = "AND materialname = '".$data['materialname']."'";

			$materials = $this->model_product_material->getList($where);

			if(count($materials) > 0 && $data['id'] == "")
			{
				$this->error['name'] = "Tên chất liệu đã tồn tại trong hệ thống";	
			}
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