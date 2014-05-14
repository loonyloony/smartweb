<?php
class ControllerPageSmartweb extends Controller
{
	public $moduleroute = "";
	public $sitemapid = "";
	public $objectid = "";
	
	function __construct() 
	{	
		//$this->iscache = true;
		$this->load->model("core/sitemap");
		$this->load->model("core/media");
		$this->load->model("core/product");
		$this->load->model("core/propertyproduct");
		
		$sitemaps = $this->model_core_sitemap->getList(SITEID);
		//$this->model_core_sitemap->renderTreeView("",$sitemaps, "treeicon", 15, "---");
		$this->smartweb->allsitemap = $sitemaps;
		
		$this->smartweb->allmainmenus = $this->common->search_array($sitemaps, "top_mainmenu", "1");
		$this->smartweb->allfootermenus = $this->common->search_array($sitemaps, "top_footermenu", "1");
		
		$root_sitemaps = $this->common->search_array($sitemaps, "moduleid", "module/homepage");
		$this->smartweb->rootsitemapid = $root_sitemaps[0]['sitemapid'];
   	}
	
	public function index()
	{
		// login if has token
		if($_COOKIE['token'] != "" && !$this->member->isLogged()) {
			if($this->member->loginToken(@$_COOKIE['token'], @$_COOKIE['password'],$this->config->get['siteid']))
			{
				setcookie("token", $_COOKIE['token'],time() + 3600*24*30,'/');
				setcookie("password", $_COOKIE['password'], time() + 3600*24*30,'/');
			} else {
				setcookie("token", '',1,'/');
				setcookie("password", '', 1,'/');
			}
		}
		
		print_r($this->getURLInfor());
		//Sau khi lay getURLInfor(); => minh co moduleroute, sitemapid, objectid
		
		switch($this->smartweb->moduleroute)
		{
			case "module/homepage":
				$this->data['pagecontent'] = $this->loadmodule($this->smartweb->moduleroute);
				$this->layout="layout/home";
			break;
			case "none":
			break;
			case "group":
			break;
			default:
				$this->data['pagecontent'] = $this->loadmodule($this->smartweb->moduleroute); //module/news, module/information
				$this->layout="layout/detail";
			break;	
		}
		
		if($this->request->get['print'] != "true")
		{
			//Load cai dat cho 1 web page design (layout, sidebar..
			$this->data['breadcrumb'] = $this->smartweb->breadcrumbs;
			$this->data['layouttype'] = $this->smartweb->layouttype;
		
		
			$this->children=array(
				'common/header',
				'common/footer',
				'common/top',
				'common/mainmenu',
				'common/sidebarleft',
				'common/sidebarright',
				'common/splash',
				'common/dashboard'
			);
		}
		
		$this->id="content";
		if($this->request->get['print'] != "true")
			$this->template="page/smartweb.tpl";
		else
		{
			$this->layout="layout/print";
			$this->template="page/smartweb_print.tpl";
		}
		$this->render();
	}
	
	private function getURLInfor()
	{
		$object = "";
		$id = "";
		$seo_url = "";
		
		//Nhan object, id, seo_url(__seourl__) hoac khong co
		if($this->request->get['obj'])
			$object = $this->request->get['obj'];
		if($this->request->get['id'])
			$id = $this->request->get['id'];
		if($this->request->get['__seourl__'])
			$seo_url = $this->request->get['__seourl__'];
		//Neu khong co thi load page/home
		$this->smartweb->weburl = $this->url->getURL($seo_url, $object, $id);
		if($object == "" && $id == "" && $seo_url == "")
		{
			$this->moduleroute = "module/homepage";
			$object = "sitemap";
			$id = $this->smartweb->rootsitemapid;
		}
		//Neu co __seourl___, thi load ban url_alias de lay object & id
		elseif($seo_url != "")
		{
			$seodata = $this->smartweb->getSEOURL($seo_url);	
			if(count($seodata) > 0)
			{
				$object = $seodata["object"];
				$id = $seodata["value"];	
			}
		}

		//==========>Ket qua ta co $object va $id
		if($object != "" && $id != ""){
			//Neu object la sitemap, load sitemap lay sitemapid, moduleroute, objectid
			//Neu object la media, load media, lay media_type, va sitemapid, moduleroute, objectid
			//Net object khac, load object va lay sitemapid, moduleroute, objectid
			switch($object)
			{
				case "sitemap":
					$this->getBySitemap($id);
				break;
				case "media":
					$this->getByMedia($id);
				break; 
				case "product":
					$this->getByProduct($id);
				break;
				case "productoption":
					$this->getByProductOption($id);
				case "manufacturer":
					$this->getByManufacturer($id);
				case "propertyproduct":
					$this->getByPropertyProduct($id);
				break;
			}
		}
		
		//Ketqua ta co moduleroute, sitemapid, objectid
		$this->smartweb->moduleroute = $this->moduleroute;
		$this->smartweb->sitemapid = $this->sitemapid;
		$this->smartweb->objectid = $this->objectid;	
	}
	
	private function getBySitemap($id)
	{
		$sitemapdata = $this->model_core_sitemap->getItem($id);
		if(count($sitemapdata) > 0)
		{
			$this->smartweb->sitemap = $sitemapdata;
			$this->setLayoutSetting();
			$this->moduleroute = $sitemapdata['moduleid'];	
			$this->sitemapid = $sitemapdata['sitemapid'];	
			$this->objectid = "";
			
			switch($this->moduleroute)
			{
				case "module/information":
				case "module/visainformation":
				case "module/video":
				case "module/gallery":	
				case "module/contact":
				case "module/contactmap":
				case "module/googlemap":
				case "module/brochure":
				case "module/download":
					$mediadata = $this->model_core_sitemap->getMediaBySitemap($id);
					if(count($mediadata) > 0)
					{
						$this->smartweb->media = $mediadata;
						$this->objectid = $mediadata['mediaid'];
					}
				break;					
			}
		}
	}
	
	private function getByMedia($id)
	{
		$mediadata = $this->model_core_media->getItem($id);
		
		if(count($mediadata) > 0)
		{
			$this->smartweb->media = $mediadata;
			$this->objectid = $id;
			
			$refersitemapdata = $this->smartweb->explodeReferSitemap($mediadata['refersitemap']);
			if(count($refersitemapdata) > 0)
			{
				$sitemapdata = $this->model_core_sitemap->getItem($refersitemapdata[0]);
				if(count($sitemapdata) > 0)
				{
					$this->smartweb->sitemap = $sitemapdata;
					$this->setLayoutSetting();
					$this->moduleroute = $sitemapdata['moduleid'];	
					$this->sitemapid = $sitemapdata['sitemapid'];	
				}	
			}
			else{
				$this->sitemapid = "";
				$this->moduleroute = str_replace("media_","module/",$mediadata['mediatype']);
			}
		}
	}
	
	private function getByProduct($id)
	{
		$mediadata = $this->model_core_product->getItem($id);

		if(count($mediadata) > 0)
		{
			//$this->smartweb->media = $mediadata;
			$this->objectid = $id;
			
			$sitemapdata = $this->model_core_sitemap->getItem($mediadata["sitemapid"]);
			if(count($sitemapdata) > 0)
			{
				$this->smartweb->sitemap = $sitemapdata;
				$this->setLayoutSetting();
				$this->moduleroute = "module/product";
				$this->sitemapid = $sitemapdata['sitemapid'];	
			}	
			else{
				$this->sitemapid = "";
				$this->moduleroute = "module/product";
			}
		}
	}
	
	
	private function getByProductOption($id)
	{
		$mediadata = $this->model_core_product->getItem($id);
		
		if(count($mediadata) > 0)
		{
			//$this->smartweb->media = $mediadata;
			$this->objectid = $id;
			
			$sitemapdata = $this->model_core_sitemap->getItem($mediadata["sitemapid"]);
			if(count($sitemapdata) > 0)
			{
				$this->smartweb->sitemap = $sitemapdata;
				$this->setLayoutSetting();
				$this->moduleroute = "module/productoption";
				$this->sitemapid = $sitemapdata['sitemapid'];	
			}	
			else{
				$this->sitemapid = "";
				$this->moduleroute = "module/productoption";
			}
		}
	}
	
	private function getByPropertyProduct($id)
	{
		$mediadata = $this->model_core_propertyproduct->getItem($id);

		if(count($mediadata) > 0)
		{
			//$this->smartweb->media = $mediadata;
			$this->objectid = $id;
			$sitemapdata = $this->model_core_sitemap->getItem($mediadata["sitemapid"]);
			if(count($sitemapdata) > 0)
			{
				$this->smartweb->sitemap = $sitemapdata;
				$this->setLayoutSetting();
				$this->moduleroute = "module/propertyproduct";
				$this->sitemapid = $sitemapdata['sitemapid'];	
			}	
			else{
				$this->sitemapid = "";
				$this->moduleroute = "module/propertyproduct";
			}
		}
	}
	
	private function getByManufacturer($id)
	{
		$manufacturerdata = $this->model_core_product->getManu($id);

		if(count($manufacturerdata) > 0)
		{
			$this->objectid = $id;
			
			$sitemapdata = $this->model_core_sitemap->getItem($manufacturerdata["sitemapid"]);
			if(count($sitemapdata) > 0)
			{
				$this->smartweb->sitemap = $sitemapdata;
				$this->setLayoutSetting();
				$this->moduleroute = "product/manufacturer";
				$this->sitemapid = $sitemapdata['sitemapid'];	
			}	
			else{
				$this->sitemapid = "";
				$this->moduleroute = "product/manufacturer";
			}
		}
	}

	
	private function setLayoutSetting()
	{
		$sitemapdata = $this->smartweb->sitemap;
		$this->smartweb->sitemapid = $sitemapdata['sitemapid'];
		$this->smartweb->breadcrumbs = $this->model_core_sitemap->getBreadcrumb($sitemapdata['sitemapid'], SITEID);
		$this->smartweb->layoutid = $sitemapdata['layoutid'];
		$this->smartweb->layouttype = $sitemapdata['layouttype'];
		if($this->smartweb->layouttype == "") $this->smartweb->layouttype = "nosidebar";
		$this->smartweb->sidebar_left = $sitemapdata['sidebarleft'];
		$this->smartweb->sidebar_right = $sitemapdata['sidebarright'];
	}
}
?>