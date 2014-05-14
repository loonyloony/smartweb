<?php
class ModelPropertyProductAdditional extends Model
{							
	public function getItem($productid, $additionalsourceid, $where="")
	{
		$sql = "Select * from `product_additional` where productid = " . $productid . " AND additionalsourceid = '" . $additionalsourceid . "'" . $where;
		$query = $this->db->query($sql);
		return $query->row;
	}
	
	public function getListByProductId($productid) {
		$sql = "Select * 
				from `product_additional`
				where productid = ". $productid;
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getAll($where = "") {
		
		$sql = "Select * 
				from `product_additional`
				where " . $where;
		$query = $this->db->query($sql);
		return $query->rows;
		
	}
	
	public function getList($where="", $from=0, $to=0)
	{
		$sql = "Select * from `product_additional` where 1=1 " . $where;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	
	public function insert($data)
	{
		$productid = (int)$this->db->escape(@$data['productid']);
		$additionalsourceid = $this->db->escape(@$data['additionalsourceid']);
		$value = $this->db->escape(@$data['value']);
		
		$field = array(
						'`productid`',
						'`additionalsourceid`',
						'`value`'
					);
					
		$value = array(
					   	$productid,
						$additionalsourceid,
						$value,
					);
			
		$this->db->insertData("product_additional", $field, $value);
	}
	
	public function update($data)
	{
		$productid = $this->db->escape(@$data['productid']);
		$additionalsourceid = $this->db->escape(@$data['additionalsourceid']);
		$value = $this->db->escape(@$data['value']);
		
		$field = array(
						'`value`'
					);
					
		$value = array(
						$value
					);
		
		$where = " productid = " . $productid . " and additionalsourceid = '" . $additionalsourceid . "'";
		$this->db->updateData("product_additional", $field, $value, $where);
	}
	
	public function delete($productid)
	{
		$where = " productid = " . $productid;
		$this->db->deleteData('product_additional', $where);
	}
	
}
?>