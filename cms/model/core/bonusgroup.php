<?php
class ModelCoreBonusgroup extends Model 
{ 
	public function getItem($where)
	{
		$query = $this->db->query("Select * from `bonus_group` where 1 = 1 ".$where);
		return $query->row;
	}
	
	public function getList($where="")
	{
		$sql = "Select * from `bonus_group` WHERE 1=1 ".$where." ORDER BY point";	
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function save($data)
	{
		$bonus_group_id=(int)@$data['bonus_group_id'];
		$name=$this->db->escape(@$data['name']);
		$point=$this->string->toNumber($this->db->escape(@$data['point']));
		$discount=$this->string->toNumber($this->db->escape(@$data['discount']));
		$type=$this->db->escape(@$data['type']);

		$field=array(
						"name",
						"point",
						"discount",
						"type"
					);
		$value=array(
						$name,
						$point,
						$discount,
						$type
					);
					
		if ($bonus_group_id == '') {
			$this->db->insertData("bonus_group",$field,$value);
		} else {
			$where=" `bonus_group_id` = '".$bonus_group_id."'";
			$this->db->updateData('bonus_group',$field,$value,$where);
		}
		
	}
	
	public function deletes($data)
	{
		foreach($data as $bonus_group_id)
		{
			$bonus_group_id=(int)@$bonus_group_id;
			$where="bonus_group_id = ".$bonus_group_id;
			$this->db->deleteData('bonus_group',$where);
		}	
	}
	
}
?>