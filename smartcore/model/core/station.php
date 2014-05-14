<?php
class ModelCoreStation extends Model 
{
	public function getStations($where="")
	{
		$query = $this->db->query("Select * from `station` WHERE 1=1 ".$where . " ORDER BY name asc");
		return $query->rows;
	}
	
	public function getStation($stationid)
	{
		$query = $this->db->query("Select * from `station` where stationid = '".$stationid."'");
		return $query->row;
	}
	
}

?>