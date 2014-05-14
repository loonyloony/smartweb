<?php
class ModelPropertyRoomType extends Model 
{
	public function getRoomTypes($where="")
	{
		$query = $this->db->query("Select * from `roomtype` WHERE 1=1 ".$where);
		return $query->rows;
	}
	
	public function getRoomType($roomtypeid)
	{
		$query = $this->db->query("Select * from `roomtype` where roomtypeid = '".$roomtypeid."'");
		return $query->row;
	}
	
}

?>