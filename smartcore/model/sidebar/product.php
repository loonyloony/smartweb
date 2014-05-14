<?php 
class ModelSidebarProduct extends Model{
	
	public function getProductAddonByAddonid($addonid){
		$data_product = array();
		
		$sql = "SELECT 	* FROM 	`product_addon` WHERE addonid = '" . $addonid . "'";
		$query = $this->db->query($sql);
		
		if(count($query->rows)){
			foreach($query->rows as $item){
				$sql = "SELECT 		* 
						FROM 		`product` p
									LEFT JOIN `product_description` pd ON(p.productid = pd.productid)
						WHERE 		p.productid = '" . $item['productid'] . "' AND pd.languageid = '" . $this->config->get('config_languageid') . "'";
				$query = $this->db->query($sql);	
				
				$query->row['link'] = $this->url->getURL($query->row['seo_url'], 'product', $query->row['productid']);
				
				$data_product[] = $query->row;
			}	
		}
		
		return $data_product;
	}
		
}
?>