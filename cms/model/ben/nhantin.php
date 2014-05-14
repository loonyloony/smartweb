<?php
class ModelelifeNhantin extends Model
{ 
	
	public function getItem($id, $where="")
	{
		$query = $this->db->query("Select `elife_nhantin`.* 
									from `elife_nhantin` 
									where id ='".$id."' ".$where);
		return $query->row;
	}
	
	public function getList($where="")
	{
		
		$sql = "Select `elife_nhantin`.* 
									from `elife_nhantin` 
									where 1=1 " . $where . $order;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	
	
	protected function getnextid()
	{
		$id=$this->db->getNextId("elife_nhantin","id");
		return $id;
	}
	
	
	
	public function insert($data)
	{
		$id=$this->getnextid();
		$hoten=$this->db->escape(@$data['hoten']);
		$email=$this->db->escape(@$data['email']);
		$ngaydangky = $this->date->getToday();
	
		$field=array(
						'id',
						'hoten',
						'email',
						'ngaydangky'
					);
		$value=array(
						$id,
						$hoten,
						$email,
						$ngaydangky
					);
		
		$this->db->insertData("elife_nhantin",$field,$value);
		
		return $id;
	}
	
	public function updateCol($id,$col,$val)
	{
		$id= $this->db->escape(@$id);
		$col= $this->db->escape(@$col);
		$val= $this->db->escape(@$val);
		
		
		
		$field=array(
						$col
					);
		$value=array(
						$val
					);
		
		$where="id = '".$id."'";
		$this->db->updateData("elife_nhantin",$field,$value,$where);
		
		
		
		return true;
	}
	
	public function delete($id)
	{
		
		$where="id = '".$id."'";
		$this->db->deleteData("elife_nhantin",$where);
			
		
	}
		
}
?>