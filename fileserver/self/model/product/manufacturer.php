<?php
class ModelProductManufacturer extends Model
{							
	public function getItem($manufacturerid, $where="")
	{
		$sql = "Select `product_manufacturer`.* from `product_manufacturer` where manufacturerid = '" . $manufacturerid . "'".$where;
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getDescriptions($manufacturerid, $where="")
	{
		$sql = "Select * from `product_manufacturer_description` where manufacturerid = '" . $manufacturerid . "'".$where;
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getList($where="", $from=0, $to=0)
	{
		
		$sql = "Select `product_manufacturer`.* from `product_manufacturer` where 1=1 " . $where ;
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function insert($data)
	{
		$siteid = $this->member->getSiteId();
		$name = $this->db->escape(@$data['name']);
		$seo_url = $this->db->escape(@$data['seo_url']);
		$link = $this->db->escape(@$data['link']);
		$image = $this->db->escape(@$data['image']);
		$link_direct = 0;
		$sortorder = 1;
		
		$field = array(
						'`siteid`',
						'`name`',
						'`seo_url`',
						'`link`',
						'`image`',
						'`link_direct`',
						'`sortorder`'
					);
					
		$value = array(
						$siteid,
						$name,
						$seo_url,
						$link,
						$image,
						$link_direct,
						$sortorder
					);
			
		$manufacturerid = $this->db->insertData("product_manufacturer",$field,$value);
		
		if(isset($data['product_manufacturer_description'])){
			foreach($data['product_manufacturer_description'] as $key => $manufacturer){
				$manufacturerid = (int)$manufacturerid;
				$languageid = (int)$key;
				$summary = $this->db->escape(@$manufacturer['summary']);
				$description = $this->db->escape(@$manufacturer['description']);
				$meta_keyword = $this->db->escape(@$manufacturer['meta_keyword']);
				$meta_description = $this->db->escape(@$manufacturer['meta_description']);
				
				$field = array(
								'`manufacturerid`',
								'`languageid`',
								'`summary`',
								'`description`',
								'`meta_keyword`',
								'`meta_description`'
							);
							
				$value = array(
								$manufacturerid,
								$languageid,
								$summary,
								$description,
								$meta_keyword,
								$meta_description
							);
						
				$this->db->insertData("product_manufacturer_description", $field, $value);
			}	
		}
	}
	
	public function update($data)
	{
		$manufacturerid = (int)$this->db->escape(@$data['manufacturerid']);
		$siteid = $this->member->getSiteId();
		$name = $this->db->escape(@$data['name']);
		$seo_url = $this->db->escape(@$data['seo_url']);
		$link = $this->db->escape(@$data['link']);
		$image = $this->db->escape(@$data['image']);
		
		$field = array(
						'`siteid`',
						'`name`',
						'`seo_url`',
						'`link`',
						'`image`'
					);
					
		$value = array(
						$siteid,
						$name,
						$seo_url,
						$link,
						$image
					);
		
		$where = " manufacturerid = '" . $manufacturerid . "'";
		$this->db->updateData("product_manufacturer", $field, $value, $where);
		
		$sql = "DELETE FROM `product_manufacturer_description` where manufacturerid = '" . $manufacturerid . "'";
		$this->db->escape($sql);
		
		if(isset($data['product_manufacturer_description'])){
			foreach($data['product_manufacturer_description'] as $key => $manufacturer){
				$manufacturerid = (int)$manufacturerid;
				$languageid = (int)$key;
				$summary = $this->db->escape(@$manufacturer['summary']);
				$description = $this->db->escape(@$manufacturer['description']);
				$meta_keyword = $this->db->escape(@$manufacturer['meta_keyword']);
				$meta_description = $this->db->escape(@$manufacturer['meta_description']);
				
				$field = array(
								'`manufacturerid`',
								'`languageid`',
								'`summary`',
								'`description`',
								'`meta_keyword`',
								'`meta_description`'
							);
							
				$value = array(
								$manufacturerid,
								$languageid,
								$summary,
								$description,
								$meta_keyword,
								$meta_description
							);
						
				$this->db->insertData("product_manufacturer_description", $field, $value);
			}	
		}
	}
	
	public function delete($manufacturerid)
	{
		$where = " manufacturerid = '" . $manufacturerid . "'";
		$this->db->deleteData('product_manufacturer', $where);
		$this->db->deleteData('product_manufacturer_description', $where);	
	}
	
	public function sortorder($manufacturerid, $sortorder){
		
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " manufacturerid = '" . $manufacturerid . "'";
		$this->db->updateData("product_manufacturer", $field, $value, $where);
	}
	
	public function linkdirect($manufacturerid, $linkdirect){
		
		$field = array(
						'`link_direct`'
					);
					
		$value = array(
						$linkdirect
					);
					
		$where = " manufacturerid = '" . $manufacturerid . "'";
		$this->db->updateData("product_manufacturer", $field, $value, $where);
	}
	
}
?>