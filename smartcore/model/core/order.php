<?php
class ModelCoreOrder extends Model 
{
	public function getItem($where)
	{
		$sql = "SELECT * FROM `order` o WHERE 1 = 1 ".$where;
		$order_query = $this->db->query($sql);
		$result = $order_query->row;
	}
	
	public function getList($where, $order)
	{
		$sql = "SELECT	* FROM `order` o WHERE 1 = 1 ".$where." ORDER BY ".$order;
		$order_query = $this->db->query($sql);
		$result = $order_query->rows;
		foreach ($result as $key => $item) {
			$sql = "SELECT	o.*,p.name FROM `order_product` o INNER JOIN `product_description` p ON o.mediaid = p.productid WHERE o.orderid = '".$item['orderid']."'";	
			$query = $this->db->query($sql);
			$result[$key]['order_product'] = $query->rows;
		}
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
		
		if($this->config->get('config_exchange_point') != 0) {
			$point = $cart_total/$this->config->get('config_exchange_point');
		} else {
			$point = 0;
		}
		
		
		$field = array(
			'orderid',
			'orderdate',
			'userid',
			'customername',
			'address',
			'email',
			'phone',
			'status',
			'total',
			'point'
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
			$cart_total,
			$point
		);
		
		$this->db->insertData("order", $field, $value);
		
		//order product
		$cart = $data['cart'];
		if(count($cart) > 0){
			foreach($cart as $item) {
				if(count($item['image']) > 1){
					$image = implode("," ,$item['image']);
				}
				else
				{
					$image = $item['image'];	
				}
				$ordid = $orderid;
				$mediaid = $this->db->escape(@$item['product-id']);
				$quantity = $this->db->escape(@$item['product-qty']);
				$price = $this->db->escape(@$item['price']);
				$subtotal = $item['product-qty']*$item['price'];
				$subtract_stock = $item['subtract_stock'];
				$name = $this->db->escape(@$item['name']);
				
				$fields = array(
					'orderid',
					'mediaid',
					'quantity',
					'price',
					'subtotal',
					'image',
					'name'
				);
				
				$values = array(
					$ordid,
					$mediaid,
					$quantity,
					$price,
					$subtotal,
					$image,
					$name
				);
			
				$this->db->insertData("order_product", $fields, $values);
				
				//adjust stock
				if($subtract_stock == 1) {				
					$this->db->query("UPDATE `product` SET  quantity =  quantity-".$quantity." WHERE  `productid` = '".$mediaid."' ");
				}
			}
			
		}
		
		return $orderid;
		
	}
	
	public function getPromotion($where){
		$sql = "SELECT	* FROM `promotion` p WHERE 1 = 1 ".$where;
		$query = $this->db->query($sql);
		return $query->row;
	}
}

?>