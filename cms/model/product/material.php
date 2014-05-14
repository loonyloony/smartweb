<?php
class ModelProductMaterial extends Model
{ 
	private $columns = array(	
								'materialname',
								'description',
								'imageid',
								'imagepath'
							);
							
	public function getItem($id, $where="")
	{
		$query = $this->db->query("Select `product_material`.* 
									from `product_material` 
									where id ='".$id."' ".$where);
		return $query->row;
	}
	
	public function getList($where="", $from=0, $to=0)
	{
		
		$sql = "Select `product_material`.* 
									from `product_material` 
									where 1=1 " . $where ;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function insert($data)
	{	
		foreach($this->columns as $val)
		{
			//if($val!="")
			{
				$field[] = $val;
				$value[] = $this->db->escape($data[$val]);	
			}
		}		
		$getLastId = $this->db->insertData("product_material",$field,$value);
		$this->updateFileTemp($data['imageid']);
		return $getLastId;
	}
	
	public function update($data)
	{
		
		$id = @$this->db->escape($data['id']);
		foreach($this->columns as $val)
		{
			//if($val!="")
			{
				$field[] = $val;
				$value[] = $this->db->escape($data[$val]);	
			}
		}
		
		$where = " id = '".$id."'";

		$this->db->updateData('product_material',$field,$value,$where);
		$this->updateFileTemp($data['imageid']);
		return true;
	}
	
	public function delete($id)
	{
		$id =  $this->db->escape(@$id);
		$where="id = '".$id."'";
		$this->db->deleteData('product_material',$where);
		
	}
	
}
?>