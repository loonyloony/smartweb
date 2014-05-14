<?php
class ModelCoreTag extends Model
{ 
	public function getItem($where="")
	{
		$query = $this->db->query("Select `tag`.* 
									from `tag` 
									where 1 = 1 ".$where);
		return $query->row;
	}
	
	public function count($where="")
	{
		$query = $this->db->query("Select COUNT(*) count 
									from `tag` 
									where 1 = 1 ".$where);
		return $query->row['count'];
	}
	
	public function getList($where="", $from=0, $to=0,$order = " Order by count")
	{
		
		$sql = "Select `tag`.* 
									from `tag` 
									where 1=1 " . $where . $order;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function save($data)
	{
		$sitemapid=$this->db->escape(@$data['sitemapid']);
		$key= $this->db->escape(@$data['key']);
		$lang= $this->db->escape(@$data['language']);
			
		$count = $this->count(" AND `sitemapid` = '".$sitemapid."' AND `key` = '".$key."' AND `language` = '".$lang."' ");
		
		
		if($count  == 0) {			
			$field=array (
				'`sitemapid`',
				'`key`',
				'`count`',
				'language'
			);
			$value = array (
				$sitemapid,
				$key,
				1,
				$lang
			);
			$this->db->insertData("tag",$field,$value);	
		} else {	
			$this->db->query("UPDATE `tag` SET `count` = count + 1 WHERE `sitemapid` = '".$sitemapid."' AND `key` = '".$key."' AND `language` = '".$lang."'");
		}		
	}
	
	public function decrease_count($data)
	{
		$sitemapid = $this->db->escape(@$data['sitemapid']);
		$key = $this->db->escape(@$data['key']);
		$lang = $this->db->escape(@$data['language']);
		$this->db->query("UPDATE `tag` SET `count` = count - 1 WHERE `sitemapid` = '".$sitemapid."' AND `key` = '".$key."' AND `language` = '".$lang."'");
	}
		
}
?>