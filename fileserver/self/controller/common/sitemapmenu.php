<?php
class ControllerCommonSitemapmenu extends Controller
{
	function index()
	{	
		$this->load->model("core/sitemap");
		$this->load->model("core/module");	
		
		$this->data['safemode'] = $this->session->data['safemode'];
		
		$sitemaps = $this->model_core_sitemap->getList(SITEID);
		$this->model_core_sitemap->renderTreeView("",$sitemaps, "treetoggle", 15, "");
		$this->smartweb->allsitemap = $sitemaps;
		$this->smartweb->allmainmenus = $this->common->search_array($sitemaps, "top_mainmenu", "1");
		$this->smartweb->allfootermenus = $this->common->search_array($sitemaps, "top_footermenu", "1");
		
		$this->data['menu'] = $this->getMenu("");
		
		$this->id='sitemapmenu';
		$this->template='common/sitemapmenu.tpl';
		$this->render();
	}
	
	public function getMenu($parentid)
		{
			$allsitemaps = $this->smartweb->allmainmenus;
			$rootid = $this->smartweb->objectid;
			
			$sitemaps = $this->common->search_array($allsitemaps, "sitemapparent", $parentid);
			
			foreach($sitemaps as $item)
			{
				$childs = $this->common->search_array($allsitemaps, "sitemapparent", $item['sitemapid']);
				
				$currenttab = "";
				if($item['sitemapid'] == $rootid) 
					$currenttab = "class='active'";
				
				$link = "<a ".$currenttab." href='#'>".$item['treetext']."</a>";
				if($item['moduleid'] == "module/homepage"){
					//$link = "<a ".$currenttab." href='".HTTP_SERVER."'>".$item['treetext']."</a>";
					$link = "<a ".$currenttab." href='#'>".$item['treetext']."</a>";
				}
				elseif($item['moduleid'] != "module/none")
				{
					switch($item['moduleid'])
					{
						case "module/none":
						case "module/group":
						case "module/groupfirst":
						break;
						default:
							$href = "index.php?route=".$item['moduleid']."&sitemapid=".$item['sitemapid'];
							$link = "<a ".$currenttab." href='".$href."'>".$item['treetext']."</a>";
						break;
					}
					//$link = "<a ".$currenttab." href='".$this->url->getURL($item['seo_url'],"sitemap",$item['sitemapid'])."'>".$item['treetext']."</a>";
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
	
	/*public function getMenu($parentid)
	{
		$siteid = $this->user->getSiteId();
		$str = "";
		
		$sitemaps = $this->model_core_sitemap->getListByParent($parentid, $siteid, "Active");
		
		foreach($sitemaps as $item)
		{
			$childs = $this->model_core_sitemap->getListByParent($item['sitemapid'], $siteid, "Active");
			
			$link = "<a class='left'>".$item['sitemapname']."</a>";
			
			if(substr($item['moduleid'],0,6) == "group/")
			{
				$item['moduleid'] = "module/information";
			}
			
			
			if($item['moduleid'] != "group" && $item['moduleid'] != "homepage")
			{
				$link='<a class="left" href="?route='.$item['moduleid']."&sitemapid=".$item['sitemapid'].'" title="[Detail]">'.$item['sitemapname'].'</a>';
			}
			
			if($item['moduleid'] == 'homepage')
			{
				$link='<a class="left" href="?route=common/dashboard">'.$item['sitemapname'].'</a>';	
			}
			
			$str .= "<li>";
			$str .= "<div class='collape'>";
			$str .= $link;
			
			if(count($childs) > 0)
			{
				$str .= "<span class='collape right'>[+]</span>";
				$str .= '<div class="clearer">&nbsp;</div>';
				$str .= "</div>";
				
				$str .= "<ul>";
				$str .= $this->getMenu($item['sitemapid']);
				$str .= "</ul>";
			}
			else
			{
				$str .= '<div class="clearer">^&nbsp;</div>';
				$str .= "</div>";
				
			}
			$str .= "</li>";
		}
		
		return $str;
		
	}*/
	
	public function getAddOnMenu($parentid)
	{
		$siteid = $this->user->getSiteId();
		$str = "";
		
		$sitemaps = $this->model_core_sitemap->getListByParent($parentid, $siteid, "Addon");
		
		foreach($sitemaps as $item)
		{
			$childs = $this->model_core_sitemap->getListByParent($item['sitemapid'], $siteid, "Addon");
			
			$link = "<a>".$item['sitemapname']."</a>";
			
			if(substr($item['moduleid'],0,6) == "group/")
			{
				$item['moduleid'] = "module/information";
			}
			
			
			if($item['moduleid'] != "group" && $item['moduleid'] != "homepage")
			{
				$link='<a href="?route='.$item['moduleid']."&sitemapid=".$item['sitemapid'].'" title="[Detail]">'.$item['sitemapname'].'</a>';
			}
			
			$str .= "<li>";
			$str .= "<div class='collape'>";
			$str .= $link;
			
			if(count($childs) > 0)
			{
				$str .= "<span class='collape right'>[+]</span>";
				$str .= '<div class="clearer">&nbsp;</div>';
				$str .= "</div>";
				
				$str .= "<ul>";
				$str .= $this->getAddOnMenu($item['sitemapid']);
				$str .= "</ul>";
			}
			else
			{
				$str .= '<div class="clearer">^&nbsp;</div>';
				$str .= "</div>";
				
			}
			$str .= "</li>";
		}
		
		return $str;
		
	}
	

}
?>