<?php
$this->load->model("core/media");
class ModelCoreSitemap extends Model 
{
	public function getItem($sitemapid, $where="")
	{
		$query = $this->db->query("Select sitemap.*, `layout`.layouttype, `layout`.sidebarleft, `layout`.sidebarright 
									from `sitemap` 
									LEFT JOIN `layout` ON (sitemap.layoutid = layout.layoutid)
									where sitemap.siteid='".SITEID."' AND sitemap.sitemapid='".$sitemapid."'
									");
									
		$query->row['sitemap_description'] = $this->getDescription($sitemapid, $this->config->get('config_languageid'));
		return $query->row;
	}
	
	public function getDescription($sitemapid, $languageid)
	{
		$query = $this->db->query("Select sitemap_description.*
									from `sitemap_description` 
									where sitemapid='".$sitemapid."' AND languageid = '".$languageid."'
									");
		return $query->row;	
	}

	
	public function getList($siteid, $where = "")
	{		
		//$cachedata = $this->cache->get('sitemap.' . $this->config->get('config_languageid') . '.' . (int)$siteid.$where);
		$cachedata = $this->cache->get('sitemap_smart_' . $this->config->get('config_languageid') . '.' . (int)$siteid.$where);
		if ($cachedata == "")
		{
			$siteid = $this->db->escape($siteid);
			
			$sql = "Select sitemap.*, sd.sitemapname, sd.description, sd.meta_description, sd.meta_keyword, sd.seo_url, m.modulename
										from `sitemap` 
										LEFT JOIN `sitemap_description` sd ON (sitemap.sitemapid = sd.sitemapid AND sd.languageid = '".$this->config->get('config_languageid')."')
										LEFT JOIN `module` m ON (sitemap.moduleid = m.moduleid)
										where sitemap.siteid = '".$siteid."' ".$where.
										" ORDER BY sitemap.sitemapparent, position, sitemapid";
			
			
			
			$query = $this->db->query($sql);
			$this->cache->set('sitemap_smart.' . $this->config->get('config_languageid') . '.' . (int)$siteid.$where,$query->rows);
			return $query->rows;
		} else {
			return $cachedata;
		
		}
	}
	
	public function getBreadcrumb($id, $siteid, $prefix='<span class="elife-space">/</span>', $end=0)
	{
		$data = $this->getPath($id, $siteid);

		$strBreadcrumb = "<a href='".HTTP_WEB."'>";
		$strBreadcrumb .= ($this->config->get('config_languageid') == 'vn') ? "Trang chủ" : "Home";
		$strBreadcrumb .= "</a>";
		
		for($i=count($data)-1;$i>=0;$i--)
		{
			$sitemapname = strip_tags(htmlspecialchars_decode($data[$i]['sitemapname']));
			switch($data[$i]['moduleid'])
			{				
				case "module/none":
				//case "module/group":
				case "module/groupfirst":
					$link = "".$sitemapname."";
				break;
				case "module/link":
					$link='<a href="'.$data[$i]['hyperlink'].'" title="[Detail]">'.$sitemapname.'</a>';
				break;
				default:
					/*if($data[$i]['sitemapid'] == $id)
					{
						$link = "".$data[$i]['sitemapname']."";
					}
					else*/
					{
						$link='<a href="'.$this->url->getURL($data[$i]['seo_url'], "sitemap", $data[$i]['sitemapid']).'" title="[Detail]">'.$sitemapname.'</a>';
					}
				break;	
			}
			if ($data[$i]['moduleid'] != "module/homepage") $strBreadcrumb .= $prefix.$link; 
		}
		return $strBreadcrumb;
	}
	
	public function getPath($id, $siteid)
	{
		$arr=array();

		$data_row = $this->common->search_array($this->smartweb->allsitemap, "sitemapid", $id);
		$row = $data_row[0];
		array_push($arr,$row);
		while($row['sitemapparent']!="")
		{
			$data_row = $this->common->search_array($this->smartweb->allsitemap, "sitemapid", $row['sitemapparent']);
			$row = $data_row[0];
			array_push($arr,$row);
		}

		return $arr;
	}
	
	public function getMediaBySitemap($sitemapid)
	{
		$sql = "select * from media where refersitemap = '[".$sitemapid."]' and languageid = '".$this->config->get("config_languageid")."'";	
		$query = $this->db->query($sql);
		//$query->row['media_file'] = $this->model_core_media->getMedia_Files($query->row['mediaid']);	
		return $query->row;
	}
	
	///////////////////////////////////////////////////////////////////////
	/////     ELIFE TUAN PHAM     //////
	///////////////////////////////////////////////////////////////////////
	
	public function renderTreeView($parentid, &$data, $class="", $indentwidth=15, $indenttext="", $prefix="&nbsp;")
	{
		$this->renderTreeLevel($parentid, $data, $class, $indentwidth, $indenttext, $prefix);
		$data = $this->common->array_sort($data, "treelevel");
	}
	
	private function renderTreeLevel($parentid, &$data, $class, $indentwidth, $indenttext, $prefix, $treelevel=0)
	{
		$index = 0;
		for($i=0;$i<count($data);$i++)
		{
			if($data[$i]['sitemapparent'] == $parentid)
			{
				$index++;
				$data[$i]['treelevel'] = $treelevel."-".$index;
				$data[$i]['treetext'] = $this->getTreePrefix($prefix, $indentwidth, $indenttext, $class, $data[$i]['treelevel']).$data[$i]['sitemapname'];
				
				$arrLevel = explode("-",$treelevel);
				$deep = count($arrLevel) - 2;
				$data[$i]['treedeep'] = $deep;
				
				$this->renderTreeLevel($data[$i]['sitemapid'], $data, $class, $indentwidth, $indenttext, $prefix, $data[$i]['treelevel']);
			}
			else
			{
				if($data[$i]['treelevel'] == "")
				{
					$data[$i]['treelevel'] = 9999;	
				}	
			}
		}
	}
	
	private function getTreePrefix($prefix, $indentwidth, $indenttext, $class, $treelevel)
	{
		$arrLevel = explode("-",$treelevel);
		$deep = count($arrLevel) - 2;

		$text = "";
		$indentwidth = (int)$indentwidth * $deep;
		$str_indenttext = "";
		for($i=0;$i<$deep;$i++)
		{
			$str_indenttext .=	$indenttext;
		}
		return $str_indenttext.'<span class="treeindent '.$class.'" style="margin-left:'.$indentwidth.'px">'.$prefix.'</span>';
	}
	
	///////////////////////////////////////////////////////////////////////
	/////     ELIFE TUAN PHAM     //////
	///////////////////////////////////////////////////////////////////////
	
	public function getSitemapTree($sitemapid, $siteid = "default", $status = "1")
	{
		$data_sitemapid_list = "";
		
		$sitemaps = $this->getListByParent($sitemapid, $siteid, $status);

		if(count($sitemaps) > 0){
			foreach($sitemaps as $item){

				$data_sitemapid_list .= $item['sitemapid'];
				$data_sitemapid_list .= ",";
				
				$sql = "Select * from `sitemap` where sitemapparent = '" . $item['sitemapid'] . "'";
				$query = $this->db->query($sql);
				
				if(count($query->rows))
				{
					$data_sitemapid_list .= $this->getSitemapTree($item['sitemapid'], $siteid, $status);
				}
			}
		}
		
		return $data_sitemapid_list;
	}
	
	public function getListByParent($parentid, $siteid = "default", $status = "1")
	{
		$where = " AND sitemapparent = '".$parentid."' ";
		
		if($status != "")
		{
			$where .= " AND `sitemap`.status = '".$status."' ";
		}
		
		return $this->getList($siteid, $where);
	}
	
	public function getListNoLang($siteid, $where = "")
	{
		//$cachedata = $this->cache->get('sitemap.' . $this->config->get('config_languageid') . '.' . (int)$siteid.$where);
		$cachedata = $this->cache->get('sitemap_smart.' . $this->config->get('config_languageid') . '.' . (int)$siteid.$where);
		if ($cachedata == "")
		{
			$siteid = $this->db->escape($siteid);
			
			$query = $this->db->query("Select sitemap.*, sd.sitemapname, sd.description, sd.meta_description, sd.meta_keyword, m.modulename
										from `sitemap` 
										LEFT JOIN `sitemap_description` sd ON (sitemap.sitemapid = sd.sitemapid)
										LEFT JOIN `module` m ON (sitemap.moduleid = m.moduleid)
										where sitemap.siteid = '".$siteid."' ".$where.
										" ORDER BY sitemap.sitemapparent, position, sitemapid"
										);
			$this->cache->set('sitemap_smart.' . $this->config->get('config_languageid') . '.' . (int)$siteid.$where,$query->rows);
			return $query->rows;
		} else {
			return $cachedata;
		
		}
	}
	
	public function getRoot($sitemapid, $siteid = "default")
	{
		if($sitemapid == "") return 'index';
		$row=$this->getItem($sitemapid);
		if($row['sitemapparent'] == "")
		{
			return $row['sitemapid'];
		}
		while($row['sitemapparent']!="")
		{
			$row=$this->getItem($row['sitemapparent'], $siteid);
		}
		return $row['sitemapid'];
	}
}
?>