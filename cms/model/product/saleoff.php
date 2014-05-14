<?php
class ModelProductSaleoff extends Model
{ 							
	public function getItem($id, $where="")
	{
		$query = $this->db->query("Select `user_saleoff`.* 
									from `user_saleoff` 
									where id ='".$id."' ".$where);
		return $query->row;
	}
	
	public function getList($where="", $from=0, $to=0)
	{
		
		$sql = "Select `user_saleoff`.* 
									from `user_saleoff` 
									where 1=1 " . $where ;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function updateStatus($data)
	{
		$id = $this->db->escape(@$data['id']);
		$status=$this->db->escape(@$data['status']);
		
		
		$field=array(
						
						'status'
						
					);
		$value=array(
						
						$status
					);
		
		$where="id = '".$id."'";
		$this->db->updateData('user_saleoff',$field,$value,$where);
		return true;
	}
	
	public function delete($id)
	{
		$id =  $this->db->escape(@$id);
		$where="id = '".$id."'";
		$this->db->deleteData('user_saleoff',$where);
		
	}
	
}
?>