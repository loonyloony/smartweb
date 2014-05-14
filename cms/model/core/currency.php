<?php 
class ModelCoreCurrency extends Model{
	public function getItem($currencyid){
		$sql = "SELECT * FROM `currency` WHERE currencyid = '" . $currencyid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;		
	}
	
	public function getList($where = ''){
		$data_currency = array();
		
		$sql = "SELECT * FROM `currency`" . $where;
		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$item['link'] = $this->url->http("core/currency/update&currencyid=" . $item['currencyid']);
				$data_currency[] = $item;
			}
		}
		
		return $data_currency;
	}
	
	public function insert($data){
		$title = $this->db->escape(@$data['title']);	
		$code = $this->db->escape(@$data['code']);
		$symbol_left = $this->db->escape(@$data['symbol_left']);
		$symbol_right = $this->db->escape(@$data['symbol_right']);
		$decimal_place = $this->db->escape(@$data['decimal_place']);
		$value_currency = $this->string->toNumber($this->db->escape(@$data['value_currency']));
		$date_modified = $this->date->getToday();
		
		$field = array(
						'`title`',
						'`code`',
						'`symbol_left`',
						'`symbol_right`',
						'`decimal_place`',
						'`value_currency`',
						'`date_modified`'
					);
					
		$value = array(
						$title,
						$code,
						$symbol_left,
						$symbol_right,
						$decimal_place,
						$value_currency,
						$date_modified
					);
					
		$this->db->insertData("currency", $field, $value);
	}
	
	public function update($data){
		$currencyid = $this->db->escape(@$data['currencyid']);
		$title = $this->db->escape(@$data['title']);	
		$code = $this->db->escape(@$data['code']);
		$symbol_left = $this->db->escape(@$data['symbol_left']);
		$symbol_right = $this->db->escape(@$data['symbol_right']);
		$decimal_place = $this->db->escape(@$data['decimal_place']);
		$value_currency = $this->db->escape(@$data['value_currency']);
		$date_modified = $this->date->getToday();
		
		$field = array(
						'`title`',
						'`code`',
						'`symbol_left`',
						'`symbol_right`',
						'`decimal_place`',
						'`value_currency`',
						'`date_modified`'
					);
					
		$value = array(
						$title,
						$code,
						$symbol_left,
						$symbol_right,
						$decimal_place,
						$value_currency,
						$date_modified
					);
		
		$where = " currencyid = '" . $currencyid . "'";
				
		$this->db->updateData("currency", $field, $value, $where);	
	}
	
	public function delete($currencyid){
		$this->db->query("DELETE FROM `currency` WHERE currencyid = '" . $currencyid . "'");	
	}
}
?>