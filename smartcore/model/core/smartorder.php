<?php
$this->load->model("customer/customer");
class ModelCoreSmartorder extends Model 
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
		$customerid = $this->member->getID();
		$customername = $this->db->escape(@$data['name']);
		$address = $this->db->escape(@$data['address']);
		$email = $this->db->escape(@$data['email']);
		$phone = $this->db->escape(@$data['telephone']);
		$status = "pending";
		$total = $this->db->escape(@$data['carttotal']);
		$point = $this->db->escape(@$data['point']);		
		
		$promotion = $this->db->escape($data['promotion']['discount']);
		$promotionamount = $this->db->escape($data['promotion']['amount']);
		
		$field = array(
			'orderid',
			'orderdate',
			'customerid',
			'customername',
			'address',
			'email',
			'phone',
			'status',
			'total',
			'point',
			'promotion',
			'promotionamount'
		);
		
		$value = array(
			$orderid,
			$orderdate,
			$customerid,
			$customername,
			$address,
			$email,
			$phone,
			$status,
			$total,
			$point,
			$promotion,
			$promotionamount
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
				$mediaid = $this->db->escape(@$item['productid']);
				$quantity = $this->db->escape(@$item['qtyincart']);
				$discount = 0;
				$description = '';
				if($item['saleoff'] > 0 && $item['saleoff'] < $item['price'])
				{
					$price = $this->db->escape(@$item['saleoff']);
					$subtotal = $item['qtyincart'] * $price;
				} else {
					$price = $this->db->escape(@$item['price']);
					$customerid = $this->member->getId();
					if($customerid != "")
					{
						//load customer
						$customer = $this->model_customer_customer->getItem($customerid);
						//load customer's point
						$sql = "Select * from `bonus_group` where `point` <= " . $customer['point'] . " ORDER BY `point` DESC";
						$query = $this->db->query($sql);
						$discount = $query->row['discount'];
						$description = "Giảm " . $query->row['discount'] . " % cho " . $query->row['name'];
						$subtotal = $item['qtyincart'] * ($price - round(($price * $query->row['discount'])/100,2));
					} else {
						$subtotal = $item['qtyincart'] * $price;
					}
					
				}
				$subtract_stock = $item['subtract_stock'];
				$name = "[" . $item['model'] . "] " . $this->db->escape(@$item['name']);
				
				if(isset($item['colorproduct']) && trim($item['colorproduct']) != ""){
					$name .= "<br />";
					$name .= "- Màu: " . $item['colorproduct'];
				}
				
				if(isset($item['sizeproduct']) && trim($item['sizeproduct']) != ""){
					$name .= "<br />";
					$name .= "- Kích thước: " . $item['sizeproduct'];
				}
				
				$fields = array(
					'orderid',
					'mediaid',
					'quantity',
					'price',
					'subtotal',
					'image',
					'name',
					'discount',
					'description',
				);
				
				$values = array(
					$ordid,
					$mediaid,
					$quantity,
					$price,
					$subtotal,
					$image,
					$name,
					$discount,
					$description
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
	
	public function count_total($where)
	{
		$sql = "SELECT COUNT(*) AS cnt FROM `order` o WHERE 1 = 1 ".$where;
		$order_query = $this->db->query($sql);
		$result = $order_query->row;
		return $result;
	}
	
	public function getListFull($where, $order, $limit)
	{
		$sql = "SELECT	* FROM `order` o WHERE 1 = 1 ".$where." ORDER BY ".$order." ".$limit;
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getProductsByOrderid($orderid)
	{
		$sql = "SELECT			o.*,p.name, mp.image, o.name as title, o.image as poimage 
				FROM 			`order_product` o 
								INNER JOIN `product_description` p ON o.mediaid = p.productid  
								LEFT JOIN `product` mp ON o.mediaid = mp.productid 
				WHERE 			o.orderid = '".$orderid."'";	
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getPromotionByOrderTotal($ordertotal){
		$sql = "SELECT * FROM `promotion` WHERE `amount` <= '" . $ordertotal . "' ORDER BY amount DESC";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
}

?>