<?php
class ModelCoreUrlAlias extends Model
{ 
	public function getItem($where="")
	{
		$query = $this->db->query("Select `url_alias`.* 
									from `url_alias` 
									where 1 = 1 ".$where);
		return $query->row;
	}
	
	public function count($where="")
	{
		$query = $this->db->query("Select COUNT(*) count 
									from `url_alias` 
									where 1 = 1 ".$where);
		return $query->row['count'];
	}
	
	public function getList($where="", $from=0, $to=0, $order = " Order by url_alias_id")
	{
		$sql = "Select `url_alias`.* 
									from `url_alias` 
									where 1=1 " . $where . $order;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
		
}
?>