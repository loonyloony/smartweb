<?php
class ModelPropertyPropertyType extends Model 
{
	public function getPropertyTypes($where="")
	{
		$query = $this->db->query("Select * from `propertytype` WHERE 1=1 ".$where);
		return $query->rows;
	}
	
	public function getPropertyType($propertytypeid)
	{
		$query = $this->db->query("Select * from `propertytype` where propertytypeid = '".$propertytypeid."'");
		return $query->row;
	}
	
}

?>