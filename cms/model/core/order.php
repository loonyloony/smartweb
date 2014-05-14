<?php
class ModelCoreOrder extends Model 
{
	public function getItem($where)
	{
		$sql = "SELECT * FROM `order` o WHERE 1 = 1 ".$where;
		$order_query = $this->db->query($sql);
		return $order_query->row;
	}
	
	
	public function update($id,$status)
	{
		$id = $this->db->escape(@$id);
		$status = $this->db->escape(@$status);
		
		
		$field=array(
						'status'
					);
		$value=array(
						$status
					);
		
		$where="orderid = '".$id."'";
		$this->db->updateData('order',$field,$value,$where);
	}
	
	public function getListFull($where, $order, $limit)
	{
		$sql = "SELECT	* FROM `order` o WHERE 1 = 1 ".$where." ORDER BY ".$order." ".$limit;
		$order_query = $this->db->query($sql);
		$result = $order_query->rows;
		foreach ($result as $key => $item) {
			//poimage means image column in tbl order_product
			$sql = "SELECT	o.*,p.name, mp.image, o.name as title, o.image as poimage FROM `order_product` o INNER JOIN `product_description` p ON o.mediaid = p.productid  LEFT JOIN `product` mp ON o.mediaid = mp.productid WHERE o.orderid = '".$item['orderid']."'";	
			$query = $this->db->query($sql);
			$result[$key]['order_product'] = $query->rows;
		}
		return $result;
	}
	
	public function count_total($where)
	{
		$sql = "SELECT COUNT(*) AS cnt FROM `order` o WHERE 1 = 1 ".$where;
		$order_query = $this->db->query($sql);
		$result = $order_query->row;
		return $result;
	}
	
	public function save($data)
	{
		// order
		$orderid = time();
		$orderdate = $this->date->getToday();
		$userid = $this->session->data['account'];
		$customername = $this->db->escape(@$data['name']);
		$address = $this->db->escape(@$data['address']);
		$email = $this->db->escape(@$data['email']);
		$phone = $this->db->escape(@$data['telephone']);
		$status = "pending";
		$cart_total = $this->db->escape(@$data['cart_total']);
		
		$field = array(
			'orderid',
			'orderdate',
			'userid',
			'customername',
			'address',
			'email',
			'phone',
			'status',
			'total'
		);
		
		$value = array(
			$orderid,
			$orderdate,
			$userid,
			$customername,
			$address,
			$email,
			$phone,
			$status,
			$total
		);
		
		$this->db->insertData("order", $field, $value);
		
		//order product
		$cart = $data['cart'];
		foreach($cart as $item) {
			$ordid = $orderid;
			$mediaid = $this->db->escape(@$item['product-id']);
			$quantity = $this->db->escape(@$item['product-qty']);
			$price = $this->db->escape(@$item['price']);
			$subtotal = $item['product-qty']*$item['price'];
			$subtract_stock = $item['subtract_stock'];
			
			$fields = array(
				'orderid',
				'mediaid',
				'quantity',
				'price',
				'subtotal',
			);
			
			$values = array(
				$ordid,
				$mediaid,
				$quantity,
				$price,
				$subtotal,
			);
		
			$this->db->insertData("order_product", $fields, $values);
			
			//adjust stock
			if($subtract_stock == 1) {				
				$this->db->query("UPDATE `product` SET  quantity =  quantity-".$quantity." WHERE  `productid` = '".$mediaid."' ");
			}
			
		}
		
	}
}

?>