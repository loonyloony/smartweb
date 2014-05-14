<?php
	class ControllerCommonMainmenu extends Controller
	{
		public function index()
		{
			$this->document->addScript("menu.js");
			$this->document->addStyle("menu_default.css");
			$this->data['mainmenu'] = $this->getMenu("");
			$this->id="mainmenu";
			$this->template="common/mainmenu.tpl";
			$this->render();
		}
		
		public function getMenu($parentid)
		{
			$allsitemaps = $this->smartweb->allmainmenus;
			$rootid = $this->smartweb->rootsitemapid;
			
			$sitemaps = $this->common->search_array($allsitemaps, "sitemapparent", $parentid);
			
			foreach($sitemaps as $item)
			{
				$childs = $this->common->search_array($allsitemaps, "sitemapparent", $item['sitemapid']);
				$item['sitemapname'] = htmlspecialchars_decode($item['sitemapname']);
				$currenttab = "";
				if($item['sitemapid'] == $this->smartweb->sitemapid) 
					$currenttab = "class='active'";
				
				$link = "<a ".$currenttab." >".$item['sitemapname']."</a>";
				if($item['moduleid'] == "module/homepage"){
					$link = "<a ".$currenttab." href='".HTTP_SERVER."' >".$item['sitemapname']."</a>";
				}
				elseif($item['moduleid'] == "module/link"){
					$link = "<a href='".$item['hyperlink']."' >".$item['sitemapname']."</a>";
				}
				elseif($item['moduleid'] != "module/none")
				{
					$link = "<a ".$currenttab." href='".$this->url->getURL($item['seo_url'],"sitemap",$item['sitemapid'])."'>".$item['sitemapname']."</a>";
				}
				
				$str .= "<li>";
				$str .= $link;
				
				if(count($childs) > 0)
				{
					$str .= "<ul>";
					$str .= $this->getMenu($item['sitemapid']);
					$str .= "</ul>";
				}
	
				$str .= "</li>";
			}
			return $str;
		}
	}
?>