<?php
class ControllerCoreProduct extends Controller
{
	private $error = array();
	
	function __construct()
	{
		$this->load->model("core/product");
		$this->load->model("product/manufacturer");
		$this->load->helper('image');
		$this->load->model("core/country");
		$this->load->model("common/control");
		$this->load->model("core/sitemap");
		$this->data['dialog'] = $this->request->get['dialog'];
		
		$data_manufactrurer = $this->model_product_manufacturer->getList();
		$this->data['cbmanufacturer'] = $this->model_common_control->getDataCombobox($data_manufactrurer, "name", "id");
		$data_sitemap = $this->model_core_sitemap->getListByParent("", $this->member->getSiteId());
		$this->data['cbsitmap'] = $this->model_common_control->getDataCombobox($data_sitemap, "sitemapname", "sitemapid");
		$this->data['sotien'] = array(
										'500000',
										'1000000',
										'2000000',
										'4000000',
										'5000000',
										'10000000',
										'200000000'
									);
	}
   	
	public function index()
	{
		$this->load->model("core/product");
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
				$this->model_core_product->delete($id);	
			}
			$this->data['output'] = "true";
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
  	}
	
	private function getList() 
	{
		$this->load->model("core/product");
		
		$sitemapid = $this->request->get['sitemapid'];
		$data = $this->request->get;
		//$this->data['cancel'] = $this->url->http('module/product&sitemapid='.$this->request->get['sitemapid']);
		$this->data['insert'] = $this->url->http('module/product/insert&sitemapid='.$this->request->get['sitemapid']);
		$this->data['delete'] = $this->url->http('product/delete');
		
		$this->data['datas'] = array();

		//refer sitemap
		/*$data_sitemap = array();
		$this->model_core_sitemap->getTreeSitemap($refersitemap, &$data_sitemap, $this->user->getSiteId());
	
		foreach($data_sitemap as $item)
		{
			$arr[] = " refersitemap like '%[".$item['sitemapid']."]%'";
		}
		$where .= "AND (". implode($arr," OR ").")";*/
		$where = " AND sitemapid = '" . $sitemapid . "'";
		$para = $_GET;
		if(count($para))
		foreach($para as $key => $val)
		{
			$para[$key]	= urldecode($val);
		}
		if(trim($para['productname']))
		{
			$where .= " AND productname like '%".$para['productname']."%'";
		}
		if(trim($para['manufacturer']))
		{
			$where .= " AND manufacturerid = '".$para['manufacturer']."'";
		}
		if($para['giatu'])
		{
			$where .= " AND price >='".$para['giatu']."'";	
		}
		
		if($para['giaden'])
		{
			$where .= " AND price <='".$para['giaden']."'";	
		}	
		
		$rows = $this->model_core_product->getList($where);
		
		//Page
		$page = $this->request->get['page'];		
		$x=$page;		
		$limit = 20;
		$total = count($rows); 
		// work out the pager values 
		$this->data['pager']  = $this->pager->pageLayout($total, $limit, $page); 
		$_SESSION['return']= $_SERVER['QUERY_STRING'];
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
			$this->data['datas'][$i]['link_edit'] = $this->url->http('module/product/update&productid='.$this->data['datas'][$i]['productid'].'&sitemapid='.$this->request->get['sitemapid']);
			$this->data['datas'][$i]['imagepreview'] = $imagepreview;
			
		}
		
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		$this->id='content';
		$this->template="core/product_list.tpl";
		

		$this->render();
	}
	
	
	private function getForm()
	{
		$this->data['DIR_UPLOADPHOTO'] = HTTP_SERVER."index.php?route=common/uploadpreview";
		$this->data['DIR_UPLOADATTACHMENT'] = HTTP_SERVER."index.php?route=common/uploadattachment";
		
		//load libraries
		$this->load->model("core/language");
		$this->load->model("core/site");
		$this->load->model("core/usertype");
		$this->load->model("common/control");
		$this->load->model("core/sitemap");
		
		//language base on member site
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arr_site_language = explode(",", $site['language']);
		foreach($arr_site_language as $site_language){
			$language = $this->model_core_language->getLanguage(trim($site_language));
			if(isset($language)){
				$this->data['language'][$language['languageid']] = $language['name'];
			}
		}
		
		if ((isset($this->request->get['productid'])) ) 
		{
      		$this->data['product'] = $this->model_core_product->getItem($this->request->get['productid']);	
			
			//date
			$this->data['product']['date_available_from'] = $this->date->formatMySQLDate($this->data['product']['date_available_from']);
			$this->data['product']['date_available_to'] = $this->date->formatMySQLDate($this->data['product']['date_available_to']);
			
			//product image
			$this->data['product_image'] = $this->model_core_product->getSubImageByProductId($this->data['product']['productid']);
			
			//load attribute
			$this->data['product_attribute'] = $this->model_core_product->getProductAttributes($this->data['product']['productid']);

			//load product descriptions
			$arrayOfProductDescriptions = $this->model_core_product->getProductDescriptions($this->data['product']['productid']);
			
			$this->data['product_description'] = $arrayOfProductDescriptions;
    	}
		
		if($this->data['product']['imagepreview'] == "")
		{
			$this->data['product']['imagepreview'] = "view/skin1/image/selectimage.png";
		}
		
		//get sitemap list
		$arrayOfSitemap = $this->model_core_sitemap->getList($this->member->getSiteId(), " AND sitemap.moduleid = 'module/product'");
		$this->data['sitemap'] = $this->model_common_control->getDataCombobox($arrayOfSitemap, "sitemapname", "sitemapid", $this->request->get['sitemapid']);
		
		$this->id='content';
		$this->template='core/product_form.tpl';
		
		$this->render();
	}
	
	public function getOptionValue(){
		$this->load->model("product/option");
		$this->load->model("core/site");
		$this->load->model("core/language");
		
		$optionid = $this->request->post['optionid'];
		
		//get language default
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arraySiteLanguageCode = explode(",", $site['language']);
		$language_default = $this->model_core_language->getLanguageByCode($arraySiteLanguageCode[0]);

		$arrayOptionValue = $this->model_product_option->getOptionValues($optionid, $language_default['languageid']);
		
		$this->data['output'] = json_encode(array("optionvalue" => $arrayOptionValue));
		$this->id='optionvalue';
		$this->template='common/output.tpl';
		
		$this->render();
	}
	
	private function getListSiteMapCheckBox($product)
	{
		$strReferSitemap = $product['refersitemap'];
		$sitemapid = $this->request->get['sitemapid'];
		if($strReferSitemap == "")
		{
			$strReferSitemap = "[".$sitemapid."]";
		}
		$route = $this->getRoute();

		$list = $this->model_core_sitemap->getListByModule("module/product",$this->user->getSiteId());
		
		
		$html = "";
		foreach($list as $item)
		{
			$html .= '<tr>';
			$html .= '<td>';
			
			$sitemapid = "[".$item['sitemapid']."]";
			
			$pos = strrpos($strReferSitemap, $sitemapid);
			if ($pos === false) {
				$checked = "";
			}else{
				$checked = "checked=checked";
			}
			$html .= '<label><input name="listrefersitemap['.$item['sitemapid'].']" type="checkbox" value="'.$item['sitemapid'].'" '.$checked.'/> '.$item['sitemapname'].'</label>';
			$path = $this->model_core_sitemap->getBreadcrumb($item['sitemapid'], $this->user->getSiteId());
			$path = strip_tags($path);
			$html .= '</td><td>'.$path.'</td> </tr>';
		}
		
		return $html;
	}
	
	public function sortorder()
	{
		$arr_pos = $this->request->post['sortorder'];

		if(count($arr_pos))
		{
			foreach($arr_pos as $id =>$pos)
			{
				$this->model_core_product->updateCol($id,'sortorder',$pos);
			}
		}
		$this->data['output'] = "true";
		$this->id='postlist';
		$this->template='common/output.tpl';	
		$this->render();
	}
	public function save()
	{
		$data = $this->request->post;
		
		$this->load->model("core/product");
				
		if($this->validateForm($data))
		{
			if($data['productid']=="")
			{
				if($this->smartweb->checkSEOURL($data['seo_url'], "product", $data['productid'])){
					//insert product
					$this->model_core_product->insert($data);
					
					$this->data['output'] = "true";
				}else{
					$this->data['output'] = $this->language->get('warning_seo_url_existed');	
				}
			}
			else
			{
				if($this->smartweb->checkSEOURL($data['seo_url'], "product", $data['productid'])){
					$this->model_core_product->update($data);
					
					$this->data['output'] = "true";
				}else{
					$this->data['output'] = $this->language->get('warning_seo_url_existed');
				}
			}
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
	
	private function getProperties($data)
	{
		$groupkeys = $this->string->arrayToString($data);
		return $groupkeys;	
	}
	
	private function validateForm($data)
	{
		$this->load->model("core/product");
		
		if(trim($data['model']) == ""){
			$this->error['model'] = $this->language->get('warning_product_model_null');
		}else{
			if($data['productid'] == ""){
				$where = " AND model = '" . $data['model'] . "'";
				$arrayOfProduct = $this->model_core_product->getList($where);
				if(count($arrayOfProduct) > 0){
					$this->error['model'] = $this->language->get('warning_product_model_existed');	
				}
			}else{
				$where = " AND model = '" . $data['model'] . "' AND productid <> '" . $data['productid'] . "'";
				$arrayOfProduct = $this->model_core_product->getList($where);
				if(count($arrayOfProduct) > 0){
					$this->error['model'] = $this->language->get('warning_product_model_existed');	
				}
			}			
		}
		
		if(isset($data['product_description'])){
			foreach($data['product_description'] as $description){
				if(trim($description['name']) == ''){
					$this->error['name'] = $this->language->get('warning_product_name_null');
				}	
			}
		}
		
		if (count($this->error)==0) {
	  		return TRUE;
		} else {
	  		return FALSE;
		}
	}
	
	//Cac ham xu ly tren form
	public function getProduct()
	{
		$col = $this->request->get['col'];
		$val = $this->request->get['val'];
		$operator = $this->request->get['operator'];
		if($operator == "")
			$operator = "equal";
		
		$where = "";
		switch($operator)
		{
			case "equal":
				$where = " AND ".$col." = '".$val."'";
				break;
			case "like":
				$where = " AND ".$col." like '%".$val."%'";
				break;
			case "other":
				$where = " AND ".$col." <> '".$val."'";
				break;
			case "in":
				$where = " AND ".$col." in  (".$val.")";
				break;	
		}
		
			
		
		$datas = $this->model_core_product->getList($where);
		foreach($datas as $key => $item)
		{
			$product = $this->model_core_product->getItem($item['id']);
			$datas[$key]['productname'] = $product['productname'];
			$imagepreview = HelperImage::resizePNG($product['imagepath'],180,180);
			$datas[$key]['imagepreview'] = $imagepreview;
			$datas[$key]['manufacturername'] = $product['manufacturername'];
			$country = $this->model_core_country->getCountry($product['countryid']);
			$datas[$key]['countryname'] = $country['countryname'];
			$datas[$key]['materialname'] = $product['materialname'];
			$datas[$key]['price'] = $product['price'];
		}
			
		
		$this->data['output'] = json_encode(array('products' => $datas));
		$this->id="product";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	//Sale off
	
	public function loadPrice()
	{
		$this->load->model("core/media");
		$this->load->helper('image');
		$mediaid = $this->request->get['mediaid'];
		
		//load price
		$this->data['child']=$this->model_core_product->getListByParent($mediaid," AND mediatype = 'price' Order by position");
		
		$this->id='post';
		$this->template='product/saleoff.tpl';	
		$this->render();
	}
	
	public function getPrice()
	{
		$this->load->model("core/product");
		$this->load->helper('image');
		$id = $this->request->get['mediaid'];
		$media=$this->model_core_product->getItem($id);
		
		$this->data['output'] = json_encode(array('price' => $media));
		$this->id='post';
		$this->template="common/output.tpl";
		$this->render();
	}
	
	public function deleteProduct()
	{
		$this->load->model("core/product");
		$this->load->helper('image');
		$id = $this->request->get['mediaid'];
		$this->model_core_product->deleteProduct($id);
		
		$this->id='post';
		$this->template="common/output.tpl";
		$this->render();
	}
	
	public function updatePosChild()
	{
		$this->load->model("core/product");
		$data = $this->request->post;
		
		$this->model_core_product->updatePosChild($data);
		
		$this->data['output'] = "true";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	function _checkUrl_alias_update($object , $value, $keyword ){
		$sql="SELECT * FROM url_alias WHERE keyword = '" .$keyword . "' AND value <> '" . $value . "' AND object = '" . $object . "'";
		$query = $this->db->query($sql);

		if(count($query->rows) > 0){
			return false;
		}else{
			return true;
		}
	}
}
?>