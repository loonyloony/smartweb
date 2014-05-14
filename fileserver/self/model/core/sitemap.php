<?php
class ModelCoreSitemap extends Model 
{
	public function getItem($sitemapid, $siteid, $where="")
	{
		$query = $this->db->query("Select sitemap.*
									from `sitemap` 
									where sitemap.siteid='".$siteid."' AND sitemap.sitemapid='".$sitemapid."'
									");
		return $query->row;
	}
	
	public function getDescription($sitemapid, $languageid)
	{
		$query = $this->db->query("Select sitemap_description.*
									from `sitemap_description` 
									where sitemapid='".$sitemapid."' AND languageid = '".$languageid."'
									");
		return $query->rows;	
	}

	
	public function getList($siteid, $where = "")
	{
		$cachedata = $this->cache->get('sitemap.' . $this->config->get('config_languageid') . '.' . (int)$siteid.$where);

		$siteid = $this->db->escape($siteid);
		
		$query = $this->db->query("Select sitemap.*, sd.sitemapname, sd.description, sd.meta_description, sd.meta_keyword, m.modulename
									from `sitemap` 
									LEFT JOIN `sitemap_description` sd ON (sitemap.sitemapid = sd.sitemapid AND sd.languageid = '".$this->config->get('config_languageid')."')
									LEFT JOIN `module` m ON (sitemap.moduleid = m.moduleid)
									where sitemap.siteid = '".$siteid."' ".$where.
									" ORDER BY sitemap.sitemapparent, position ASC, sitemapid"
									);
		
		return $query->rows;
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
				$data[$i]['treetext'] = $this->getTreePrefix($prefix, $indentwidth, $indenttext, $class, $data[$i]['treelevel']).'<span class="sitemaptext">'.$data[$i]['sitemapname'].'</span>';
				
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
	
	
	
	
	
	
	
	public function getPath($id, $siteid)
	{
		$arr=array();
		$row=$this->getItem($id, $siteid);
		array_push($arr,$row);
		while($row['sitemapparent']!="")
		{
			$row=$this->getItem($row['sitemapparent'], $siteid);
			array_push($arr,$row);
		}
		return $arr;
	}
	
	public function getBreadcrumb($id, $siteid, $end=0)
	{
		$data = $this->getPath($id, $siteid);
		$strBreadcrumb = "<a href='?route=common/dashboard'>Trang chủ</a>";
		for($i=count($data)-1;$i>$end;$i--)
		{
			$link = "".$data[$i]['sitemapname']."";
			if($data[$i]['modulepath'] != "")
				$link='<a target="_blank" href="'.$data[$i]['modulepath']."&sitemapid=".$data[$i]['sitemapid'].'" title="[Detail]">'.$data[$i]['sitemapname'].'</a>';
			$strBreadcrumb .= " >> ".$link; 
		}
		return $strBreadcrumb;
	}
	
	public function nextID()
	{
		return $this->db->getNextIdVarChar("sitemap","sitemapid","site");
	}
	
	public function nextPosition($parentid)
	{
		$sql = "Select max(position) as max From sitemap where sitemapparent='".$parentid."' AND siteid='".SITEID."' Order By position";
		$query = $this->db->query($sql);
		return $query->rows[0]['max'] +1 ;
	}
	
	public function listStatus()
	{
		return array(
				"Active"=>"Active",
				"Hide"=>"Hide"
				);
	}
	
	//Cac dang lat list khac nhau
	public function getListByParent($parentid, $siteid, $status = "")
	{
		$where = " AND sitemapparent = '".$parentid."' ";
		if($status != "")
		{
			$where .= " AND `sitemap`.status = '".$status."' ";
		}
		return $this->getList($siteid, $where);
	}
	
	public function getListByModule($moduleid, $siteid)
	{
		$where = " AND `sitemap`.moduleid = '".$moduleid."'";
		return $this->getList($siteid, $where);
	}
	
	///////////////////////////////////////////////////////////////////////
	/////     ELIFE TUAN PHAM     //////
	///////////////////////////////////////////////////////////////////////
	
	
	public function save($data)
	{
		$row = $data['sitemap'];
		$sitemapid=$this->db->escape(@$row['sitemapid']);
		$siteid=SITEID;
		$sitemapparent = $this->db->escape(@$row['sitemapparent']);
		$seo_url = $this->db->escape(@$row['seo_url']);
		$position=(int)@$row['position'];
		if($position == "") $position = $this->nextPosition($sitemapparent);
		$moduleid=$this->db->escape(@$row['moduleid']);
		$imageid=(int)@$row['imageid'];
		$imagepath = $this->db->escape(@$row['imagepath']);
		$hyperlink = $this->db->escape(@$row['hyperlink']);
		$top_mainmenu = (int)$row['top_mainmenu'];
		$top_footermenu = (int)$row['top_footermenu'];
		$layoutid = $this->db->escape(@$row['layoutid']);
		$status=(int)$row['status'];
		
		$field=array(
						"sitemapid",
						"siteid",
						"sitemapparent",
						"seo_url",
						"position",
						"moduleid",
						"imageid",
						"imagepath",
						"hyperlink",
						"top_mainmenu",
						"top_footermenu",
						"layoutid",
						"status"
					);
		$value=array(
						$sitemapid,
						$siteid,
						$sitemapparent,
						$seo_url,
						$position,
						$moduleid,
						$imageid,
						$imagepath,
						$hyperlink,
						$top_mainmenu,
						$top_footermenu,
						$layoutid,
						$status
					);
		if($sitemapid == "")
		{
			$sitemapid = $this->db->insertData("sitemap",$field,$value);
		}
		else
		{
			$where=" sitemapid = '".$sitemapid."'";
			$this->db->updateData('sitemap',$field,$value,$where);
		}
		//Save description
		foreach($this->document->getLanguage() as $key => $value)
		{
			$row = $data['sitemap'][$key];
			$languageid = $key;
			$sitemapname = $this->db->escape(@$row['sitemapname']);
			$description = $this->db->escape(@$row['description']);
			$meta_description = $this->db->escape(@$row['meta_description']);
			$meta_keyword = $this->db->escape(@$row['meta_keyword']);
			
			$field=array(
						"sitemapid",
						"languageid",
						"sitemapname",
						"description",
						"meta_description",
						"meta_keyword"
					);
			$value=array(
						$sitemapid,
						$languageid,
						$sitemapname,
						$description,
						$meta_description,
						$meta_keyword
					);
			
			$this->db->query("DELETE FROM sitemap_description where sitemapid = '".$sitemapid."' AND languageid = '".$key."'");
			$this->db->insertData("sitemap_description",$field,$value);
		}
		return $sitemapid;
	}
		
	public function updateSiteMapPosition($sitemapid,$position, $siteid)
	{
		$field=array(
						"position"
					);
		$value=array(
						$position
					);
		$where="sitemapid = '".$sitemapid."' AND siteid = '".$siteid."'";
		$this->db->updateData('sitemap',$field,$value,$where);
	}
	
	public function deleteSiteMap($id, $siteid)
	{
		if(count($this->getListByParent($id, $siteid))==0)
		{
			$sitemapid=$id;
			$where="sitemapid = '".$sitemapid."' AND siteid = '".$siteid."'";
			$this->db->deleteData('sitemap',$where);
			
			$where="sitemapid = '".$sitemapid."'";
			$this->db->deleteData('sitemap_description',$where);
			
			$this->smartweb->deleteSEOURL("sitemap", $id);
			return true;
		}
		else return false;			
	}
	
}
?>