<?php
//status: 0=waiting, 1=approved, 2=hidden, 3=deleted
//waiting: product post by guest for admin approve
//approved: product was approved by admin or user

class ControllerPropertyProduct extends Controller
{
	private $error = array();
	
	function __construct()
	{
		
		$this->load->model("property/product");
		//$this->load->model("product/manufacturer");
		$this->load->helper('image');
		$this->load->model("core/country");
		$this->load->model("common/control");
		$this->load->model("core/sitemap");
		$this->data['dialog'] = $this->request->get['dialog'];
		
		/*
		$data_manufactrurer = $this->model_product_manufacturer->getList();
		$this->data['cbmanufacturer'] = $this->model_common_control->getDataCombobox($data_manufactrurer, "name", "id");
		$data_sitemap = $this->model_core_sitemap->getListByParent("", $this->member->getSiteId());
		$this->data['cbsitmap'] = $this->model_common_control->getDataCombobox($data_sitemap, "sitemapname", "sitemapid");
		*/
		$this->data['sotien'] = array(
										'100',
										'500',
										'1000',
										'1500',
										'2000',
										'2500',	
										'3000',
										'3500',
										'4000',
										'4500',
										'5000',
										'5500',	
										'6000',
										'7000',
										'8000',
										'9000',
										'10000',
										'11000',	
										'12000',
										'15000',
										'20000',
										'30000',
										'40000',
										'50000'
									);
	}
   	
	public function index()
	{
		$this->load->model("property/product");
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
		$this->load->model("property/product");
		$listid=$this->request->post['delete'];
		if(count($listid))
		{
			foreach($listid as $id)
			{
				$this->model_property_product->delete($id);	
			}
			$this->data['output'] = "true";
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
  	}
	
	private function getList() 
	{
		$this->load->model("property/product");
		
		$sitemapid = $this->request->get['sitemapid'];
		$data = $this->request->get;
		//$this->data['cancel'] = $this->url->http('module/product&sitemapid='.$this->request->get['sitemapid']);
		$this->data['insert'] = $this->url->http('module/propertyproduct/insert&sitemapid='.$this->request->get['sitemapid']);
		//$this->data['delete'] = $this->url->http('product/delete');
		$this->data['editinfo'] =  $this->url->http('module/information&sitemapid='.$this->request->get['sitemapid']);
		$this->data['datas'] = array();

		//refer sitemap
		$where = " AND sitemapid = '" . $sitemapid . "'";
		
		//check if admin -> load all, if mod -> load which belong to him
		//if ($this->user->getUserTypeId() != "admin")
		//	$where .= " AND userid = '". $this->user->getUserName() ."'";
			
		$para = $_GET;
		if(count($para))
		foreach($para as $key => $val)
		{
			$para[$key]	= urldecode($val);
		}
		if(trim($para['productname']))
		{
			$where .= " AND pd.name like '%".$para['productname']."%'";
		}
		
		if($para['giatu'])
		{
			$where .= " AND price >='".$para['giatu']."'";	
		}
		if($para['giaden'])
		{
			$where .= " AND price <='".$para['giaden']."'";	
		}
		if($para['status'] != "")
		{
			$where .= " AND status = ".$para['status'];	
		}
		if($para['feature'] != "")
		{
			$where .= " AND feature = '".$para['feature']."'";	
		}
		if($para['tag'])
		{
			$where .= " AND pd.tag like '%".$para['tag']."%'";	
		}	
		
		if($para['postby'] != "") {
			if($para['postby'] == "guest") {
				$where .= " AND customerid <> '' AND guestinfo <> ''";	
			} elseif ($para['postby'] == "customer") {
				$where .= " AND customerid <> '' AND guestinfo = ''";
			} elseif ($para['postby'] == "admin") {
				$where .= " AND userid <> ''";
			}
		}
		
		$where .= " order by status asc, date_modified desc, customer_date_modified";
		$rows = $this->model_property_product->getList($where);
		
		//load all tags
		$this->data['tags']=$this->model_property_product->getAllTagsProduct();
		
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
		
		
		//source status
		if(SKINID == 'singapore') {
			$text_status_waiting = $this->language->get('text_status_waiting');
			$text_status_approved = $this->language->get('text_status_approved');
			$text_status_hidden = $this->language->get('text_status_hidden');
			$text_status_deleted = $this->language->get('text_status_deleted');
			$arrStatus = array($text_status_waiting, $text_status_approved, $text_status_hidden, $text_status_deleted);
			$this->data['arrStatus'] = $this->common->combobox($arrStatus, "", "", "");
			
			$arrFeature = array('rent' => 'rent', 'sale' => 'sale');
			$this->data['arrFeature'] = $this->common->combobox($arrFeature, "", "", "");
		}
		
		for($i=$offset;$i < $offset + $limit && count($rows[$i])>0;$i++)
		{
			$this->data['datas'][$i] = $rows[$i];		
			if($this->data['datas'][$i]['image'] != "")
			{
				$imagepreview = "<img width=100 src='".HelperImage::resizePNG($this->data['datas'][$i]['image'], 180, 180)."' >";
			}
			$this->data['datas'][$i]['link_edit'] = $this->url->http('module/propertyproduct/update&productid='.$this->data['datas'][$i]['productid'].'&sitemapid='.$this->request->get['sitemapid']);
			$this->data['datas'][$i]['imagepreview'] = $imagepreview;
			
			if(SKINID == 'singapore') {
				$this->data['datas'][$i]['cboStatus'] = $this->common->combobox($arrStatus, "", "", $this->data['datas'][$i]['status']);
			}
		}
		
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		$this->id='content';
		$this->template="property/product_list.tpl";

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
		$this->load->model("core/country");
		$this->load->model("core/station");
		$this->load->model("property/propertytype");
		$this->load->model("property/roomtype");
		$this->load->model("property/additionalsource");
		$this->load->model("property/productadditional");
		//$this->load->model("product/manufacturer");
		//$this->load->model("product/filter");
		//$this->load->model("product/filteroption");
		
		
		//language base on member site
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arr_site_language = explode(",", $site['language']);
		foreach($arr_site_language as $site_language){
			$language = $this->model_core_language->getLanguage(trim($site_language));
			if(isset($language)){
				$this->data['language'][$language['languageid']] = $language['name'];
			}
		}
		
		
		//$this->data['product_addon'] = array();
		if ((isset($this->request->get['productid'])) ) 
		{
      		$this->data['product'] = $this->model_property_product->getItem($this->request->get['productid']);	
			//load zone
			//coutryid singapore = 188
			$arrZone = $this->model_core_country->getZones(" AND countryid = 188");
			$this->data['cboZone'] = $this->common->combobox($arrZone, "zonename", "zoneid", $this->data['product']['zoneid']);		
			
			//load station
			/*
			if($this->data['product']['zoneid'] != '') {
				$arrStation = $this->model_core_station->getStations(" AND zoneid = ". $this->data['product']['zoneid']);	
			} else {
				if(count($arrZone) > 0) {
					$arrStation = $this->model_core_station->getStations(" AND zoneid = ". $arrZone[0]['zoneid']);	
				}
			}
			$this->data['cboStation'] = $this->common->combobox($arrStation, "name", "stationid", $this->data['product']['stationid']);
			*/
			$arrStation = $this->model_core_station->getStations();
			$this->data['cboStation'] = $this->common->combobox($arrStation, "name", "stationid", $this->data['product']['stationid']);
			
			//load property type
			$arrPropertyType = $this->model_property_propertytype->getPropertyTypes();
			$this->data['cboPropertyType'] = $this->common->combobox($arrPropertyType, "name", "propertytypeid", $this->data['product']['propertytypeid']);
			
			//load room type
			$arrRoomType = $this->model_property_roomtype->getRoomTypes();
			$this->data['cboRoomType'] = $this->common->combobox($arrRoomType, "name", "roomtypeid", $this->data['product']['roomtypeid']);
			
			//date
			$this->data['product']['date_available_from'] = $this->date->formatMySQLDate($this->data['product']['date_available_from'], 'DMY', "/");
			//$this->data['product']['date_available_to'] = $this->date->formatMySQLDate($this->data['product']['date_available_to']);
			
			//product image
			$this->data['product_image'] = $this->model_property_product->getSubImageByProductId($this->data['product']['productid']);
			
			//load attribute
			//$this->data['product_attribute'] = $this->model_property_product->getProductAttributes($this->data['product']['productid']);
			
			//load additional source
			$this->data['additional_source'] = $this->model_property_additionalsource->getAll();
			
			//load product additional
			//$this->data['product_additional'] = $this->model_property_productadditional->getListByProductId($this->data['product']['productid']);
			$product_additionals= $this->model_property_productadditional->getListByProductId($this->data['product']['productid']);
			foreach($product_additionals as $product_additional) {
				$this->data['product_additional'][$product_additional['additionalsourceid']] = $product_additional['value'];
			}
			
			//load product descriptions
			$arrayOfProductDescriptions = $this->model_property_product->getProductDescriptions($this->data['product']['productid']);
			$this->data['product_description'] = $arrayOfProductDescriptions;
			
			
			//$languageid = $this->config->get('config_languageid');
			//$filterProductID = 1;
			//$arrfilter = $this->model_product_filteroption->getOptionValues($filterProductID, $languageid);
			//$this->data['boxfilter'] = $this->model_common_control->getDataCombobox($arrfilter, 'name', 'filter_value_id', $this->data['product']['filter']);
			
			//$this->data['product_addon'] = $this->string->matrixToArray($this->model_core_product->getProductAddonByProductId($this->request->get['productid']), "addonid");
			
			
			//default location is VietNam
			if(SKINID == 'singapore') {
				$this->data['locationmap']['zoom'] = 11;
				$this->data['locationmap']['x']=1.3563407932818987;
				$this->data['locationmap']['y']=103.82155629980468;
			} else {
				$this->data['locationmap']['zoom'] = 5;
				$this->data['locationmap']['x'] = 14.058324;
				$this->data['locationmap']['y'] = 108.277199;	
			}
			
			$locationMap = $this->data['product']['locationmap'];
			$arrLocation = explode("##", $locationMap);
			if(isset($arrLocation[0]) && $arrLocation[0] != "") {
				$this->data['locationmap']['zoom'] = $arrLocation[0];
			}
			if(isset($arrLocation[1]) && $arrLocation[1] != "") {
				$this->data['locationmap']['x'] = $arrLocation[1];
			}
			if(isset($arrLocation[2]) && $arrLocation[2] != "") {
				$this->data['locationmap']['y'] = $arrLocation[2];
			}
			
			/*
			$this->data['location']['zoom'] = $this->model_core_media->getInformation($mediaid, 'zoom');
			if($this->data['location']['zoom']=="")
				$this->data['location']['zoom'] = 5;
			$this->data['location']['x'] = $this->model_core_media->getInformation($mediaid, 'x');
				if($this->data['location']['x']=="")
			$this->data['location']['x']=14.058324;
			$this->data['location']['y'] = $this->model_core_media->getInformation($mediaid, 'y');
			if($this->data['location']['y']=="")
				$this->data['location']['y']=108.277199;
			*/
			
    } else {
			
			if(SKINID == 'singapore') {
				$this->data['locationmap']['zoom'] = 11;
				$this->data['locationmap']['x']=1.3563407932818987;
				$this->data['locationmap']['y']=103.82155629980468;
			} else {
				//default location VietNam
				$this->data['locationmap']['zoom'] = 5;
				$this->data['locationmap']['x']=14.058324;
				$this->data['locationmap']['y']=108.277199;
			}
			
			//load zone
			//coutryid singapore = 188
			$arrZone = $this->model_core_country->getZones(" AND countryid = 188");
			$this->data['cboZone'] = $this->common->combobox($arrZone, "zonename", "zoneid");
			//load station
			/*
			if(count($arrZone) > 0) {
				$firstZone = $arrZone[0];
				$arrStation = $this->model_core_station->getStations(" AND zoneid = ". $firstZone['zoneid']);
				$this->data['cboStation'] = $this->common->combobox($arrStation, "name", "stationid");	
			}
			*/
			$arrStation = $this->model_core_station->getStations();
			$this->data['cboStation'] = $this->common->combobox($arrStation, "name", "stationid");	
			
			//load property type
			$arrPropertyType = $this->model_property_propertytype->getPropertyTypes();
			$this->data['cboPropertyType'] = $this->common->combobox($arrPropertyType, "name", "propertytypeid");
			
			//load room type
			$arrRoomType = $this->model_property_roomtype->getRoomTypes();
			$this->data['cboRoomType'] = $this->common->combobox($arrRoomType, "name", "roomtypeid");
			
			//load additional source
			$this->data['additional_source'] = $this->model_property_additionalsource->getAll();
			
			// load manufacturer
			//$arrmanu = $this->model_product_manufacturer->getList(" ORDER BY name ASC");
			//$this->data['boxmanu'] = $this->model_common_control->getDataCombobox($arrmanu, 'name', 'manufacturerid');
			
			// load filter type of product 
			//$filters = $this->model_product_filter->getOptionList();
			//$this->data['boxfilter'] = $this->model_common_control->getDataCombobox($filters, 'name', 'filterid');
			//if(count($filters) > 0) {
			//	$firstFilter = $filters[0];
			//	$languageid = $this->config->get('config_languageid');
			//	$arrFilterOption = $this->model_product_filteroption->getOptionValues($firstFilter['filterid'], $languageid);
			//	$this->data['boxfilteroption'] = $this->model_common_control->getDataCombobox($arrFilterOption, 'name', 'filter_value_id');
			//}
			
			//$languageid = $this->config->get('config_languageid');
			//$filterProductID = 1;
			//$arrfilter = $this->model_product_filteroption->getOptionValues($filterProductID, $languageid);
			//$this->data['boxfilter'] = $this->model_common_control->getDataCombobox($arrfilter, 'name', 'filter_value_id');	
			
			
		}
		
		if($this->data['product']['imagepreview'] == "")
		{
			$this->data['product']['imagepreview'] = "view/skin1/image/noimage.jpg";
		}
				
		
		//get sitemap list
		//$arrayOfSitemap = $this->model_core_sitemap->getList($this->member->getSiteId(), " AND sitemap.moduleid = 'module/product'");
		//Combobox Sitemap Parent
		$this->data['sitemaps'] = $this->model_core_sitemap->getList(SITEID);
		$this->model_core_sitemap->renderTreeView("",$this->data['sitemaps'], "treeicon", 15, "---");
		$this->data['sitemap'] = $this->common->combobox($this->data['sitemaps'], "treetext", "sitemapid",$this->request->get['sitemapid'], "----", "");
		//$this->data['sitemap'] = $this->model_common_control->getDataCombobox($sitemaps, "sitemapname", "sitemapid", $this->request->get['sitemapid']);
		//get addon category
		//$this->data['addoncategories'] = $this->model_core_product->getProductAddonCategories();
		$this->id='content';
		$this->template='property/product_form.tpl';
		
		$this->render();
	}
	
	public function updatePos()
	{
		$this->load->model("property/product");
		$data = $this->request->post;
		$arr_pos = $data['position'];
		
		if(count($arr_pos))
		{
			foreach($arr_pos as $id =>$pos)
			{
				$this->model_property_product->updateCol($id,'position',$pos);
			}
		}
		$this->data['output'] = "true";
		$this->id='postlist';
		$this->template='common/output.tpl';	
		$this->render();
	}
	
	/*
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
	*/
	
	/*
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
	*/
	
	public function getCboStationByZoneId() {
		$zoneid = $_GET['zoneid'];
		if(isset($zoneid)) {
			
			$this->load->model("core/station");
			$arrStation = $this->model_core_station->getStations(" AND zoneid = ". $zoneid);
			$this->data['output'] = $this->common->combobox($arrStation, "name", "stationid");		
		}
		$this->template='common/output.tpl';	
		$this->render();
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
			$data['locationmap'] = $data['zoom'] . "##" . $data['x'] . "##" . $data['y'];	
			// if admin -> publish, if not -> pending
			//$data['status'] = $this->user->getUserTypeId() == "admin" ? 0 : 1; 
			$data['status'] = 1; // status = 1 => approved
			if($data['productid']=="")
			{		
					//insert product
					$this->model_property_product->insert($data);
					$this->data['output'] = "true";
			}
			else
			{
					$this->model_property_product->update($data);				
					$this->data['output'] = "true";
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
	
	/*
	private function getProperties($data)
	{
		$groupkeys = $this->string->arrayToString($data);
		return $groupkeys;	
	}
	*/
	
	private function validateForm($data)
	{
		$this->load->model("property/product");
		
		if(SKINID == 'singapore') {
			if($data['zoom'] == "") {
				$data['zoom'] = 11;
			}
			if($data['x'] == "" || $data["y"] == "") {
				$data['x']=1.3563407932818987;
				$data['y']=103.82155629980468;		
			}
		} else {
			if($data['zoom'] == "") {
				$data['zoom'] = 5;
			}
			if($data['x'] == "" || $data["y"] == "") {
				$data['x']=14.058324;
				$data['y']=108.277199;
			}
		}
			
		/*
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
				$where = " AND model = '" . $data['model'] . "' AND p.productid <> '" . $data['productid'] . "'";
				$arrayOfProduct = $this->model_core_product->getList($where);
				if(count($arrayOfProduct) > 0){
					$this->error['model'] = $this->language->get('warning_product_model_existed');	
				}
			}			
		}
		*/
		
		if(isset($data['product_description'])){
			foreach($data['product_description'] as $key => $description){
				if(trim($description['name']) == ''){
					$this->error['name'] = $this->language->get('warning_product_name_null');
				}	
				if(!$this->smartweb->checkSEOURL($description['seo_url'], "propertyproduct", $data['productid'], $key)) {
					$this->error['seo_url'] = $this->language->get('warning_seo_url_existed');
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
	/*
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
	*/
	
	//Sale off
	/*
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
	*/
	
	/*
	public function getPrice()
	{
		$this->load->model("property/product");
		$this->load->helper('image');
		$id = $this->request->get['mediaid'];
		$media=$this->model_core_product->getItem($id);
		
		$this->data['output'] = json_encode(array('price' => $media));
		$this->id='post';
		$this->template="common/output.tpl";
		$this->render();
	}
	*/
	
	public function updateStatus() {
		
		$this->load->model("property/product");
		$data = $this->request->post;
		$this->model_property_product->updateStatus($data);
		$this->data[output] = "true";
		$this->template = "common/output.tpl";
		$this->render();
	}
	
	public function deleteProduct()
	{
		$this->load->model("property/product");
		$this->load->helper('image');
		$id = $this->request->get['mediaid'];
		$this->model_property_product->delete($id);
		
		$this->id='post';
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