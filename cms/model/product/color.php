<?php
class ModelProductColor extends Model
{ 
	/*private $root = "product_color";
	function __construct() 
	{
		
		$data = $this->getItem($this->root);
		if(count($data)==0)
		{
			$data['id'] = $this->root;
			$data['colorname'] = "product_color";
			$data['parent'] = "";
			$data['position'] = 0;
			$this->insert($data);
		}
   	}*/
	
	public function getItem($id, $where="")
	{
		$query = $this->db->query("Select `product_color`.* 
									from `product_color` 
									where id ='".$id."' ".$where);
		return $query->row;
	}
	
	public function getList($where="", $from=0, $to=0)
	{
		
		$sql = "Select `product_color`.* 
									from `product_color` 
									where 1=1 " . $where;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getChild($id,$order = " Order by position")
	{
		$where = " AND parent = '".$id."'";
		return $this->getList($where);
	}
	
	protected function getnextid($prefix)
	{
		$id=$this->db->getNextIdVarChar("product_color","id",$prefix);
		return $id;
	}
	
	public function nextposition($parent)
	{
		$sql = "Select max(position) as max From color where parent='".$parent."'";
		$query = $this->db->query($sql);
		return $query->rows[0]['max'] +1 ;
	}
	
	public function insert($data)
	{
		$id= $this->db->escape(@$data['id']);
		$colorname=$this->db->escape(@$data['colorname']);
		$parent=$this->db->escape(@$data['parent']);
		$position= (int)@$this->nextposition($parent);
		
		
		
		$field=array(
						'id',
						'colorname',
						'parent',
						'position'
					);
		$value=array(
						$id,
						$colorname,
						$parent,
						$position
					);
		$this->db->insertData("product_color",$field,$value);
		
		return $id;
	}
	
	public function update($data)
	{
		$id= $this->db->escape(@$data['id']);
		$colorname=$this->db->escape(@$data['colorname']);
		$parent=$this->db->escape(@$data['parent']);
		
		
		
		
		$field=array(
						'id',
						'colorname',
						'parent'
					);
		$value=array(
						$id,
						$colorname,
						$parent
					);
		
		$where="id = '".$id."'";
		$this->db->updateData("product_color",$field,$value,$where);
		
		
		
		return true;
	}
	
	public function updateposition($data)
	{
		$id= $this->db->escape(@$data['id']);
		$position= (int)@$data['position'];
		
		$field=array(
						
						'position'
					);
		$value=array(
		
						$position
					);
		
		$where="id = '".$id."'";
		$this->db->updateData("product_color",$field,$value,$where);
		
		
		
		return true;
	}
	
	public function save($data)
	{
		$item = $this->getItem($data['id']);
		if(count($item) == 0)
		{
			$this->insert($data);
		}
		else
		{
			$this->update($data);
		}
	}
	
	public function delete($id)
	{
		$data = $this->getChild($id);
		if(count($data)==0)
		{
			$where="id = '".$id."'";
			$this->db->deleteData("product_color",$where);
			
		}
	}
	
	public function deletedatas($data)
	{
		if(count($data)>0)
		{
			foreach($data as $item)	
				$this->delete($item);
		}
	}
	
	//Tree
	function getTree($id, &$data, $level=-1, $path="", $parentpath="")
	{
		$arr=$this->getItem($id);
		
		$rows = $this->getChild($id);
		
		$arr['countchild'] = count(rows);
		
		if($arr['parent'] != "") 
			$parentpath .= "-".$arr['parent'];
		
		if($id!="" )
		{
			$level += 1;
			$path .= "-".$id;
			
			$arr['level'] = $level;
			$arr['path'] = $path;
			$arr['parentpath'] = $parentpath;
			
			array_push($data,$arr);
		}
		
		
		if(count($rows))
			foreach($rows as $row)
			{
				$this->getTree($row['id'], $data, $level, $path, $parentpath);
			}
	}
	
	public function getDanhMucPhanLoai()
	{
		$data = array();
		$this->getTree($this->root,$data);
		foreach($data as $key =>$item)
		{
			$data[$key]['parentpath'] = str_replace("-".$this->root,"",$data[$key]['parentpath']);
			$data[$key]['path'] = str_replace("-".$this->root,"",$data[$key]['path']);
		}
		return $data;
	}
}
?>