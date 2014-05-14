<?php
class ModelModuleHtmlmodule extends Model
{ 
	public function getItem($where="")
	{
		$query = $this->db->query("Select * 
									from `html_module` 
									where 1 = 1 ".$where);
		return $query->row;
	}
}
?>