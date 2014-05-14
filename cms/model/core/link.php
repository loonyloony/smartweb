<?php
class ModelCoreLink extends Model 
{
	public function save($data)
	{
		
		$sitemapid=$this->db->escape(@$data['sitemapid']);
		$hyperlink = $this->db->escape(@$data['hyperlink']);

		
		$field=array(
						"hyperlink"
					);
		$value=array(
						$hyperlink
					);

		$where=" sitemapid = '".$sitemapid."'";
		$this->db->updateData('sitemap',$field,$value,$where);
		
		//Save description
		foreach($this->document->getLanguage() as $key => $value)
		{
			$row = $data['link'][$key];
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
		

	
}
?>