<?php 
class ModelCoreProduct extends Model{
	
	/*******************************************
	* insert product
	********************************************/
	public function insert($data){
		$model = $this->db->escape(@$data['model']);
		$seo_url  = $this->db->escape(@$data['seo_url']);
		$location = $this->db->escape(@$data['location']);
		$quantity = (int)$this->string->toNumber($this->db->escape(@$data['quantity']));
		$stock_status_id = (int)$this->db->escape(@$data['stock_status_id']);
		$image = $this->db->escape(@$data['image']);
		$manufacturerid = (int)$this->db->escape(@$data['manufacturerid']);
		$shipping = (int)$this->db->escape(@$data['shipping']);
		$price = $this->string->toNumber($this->db->escape(@$data['price']));
		$subtract_stock = (int)$this->db->escape(@$data['subtract_stock']);
		$points = (int)$this->string->toNumber($this->db->escape(@$data['points']));
		$tax_class_id = (int)$this->db->escape(@$data['tax_class_id']);
		$date_available_from = $this->date->formatViewDate($this->db->escape(@$data['date_available_from']));
		$date_available_to = $this->date->formatViewDate($this->db->escape(@$data['date_available_to']));
		$weight = $this->db->escape(@$data['weight']);
		$weight_class_id = (int)$this->db->escape(@$data['weight_class_id']);
		$length = $this->db->escape(@$data['length']);
		$width = $this->db->escape(@$data['width']);
		$height = $this->db->escape(@$data['height']);
		$length_class_id = (int)$this->db->escape(@$data['length_class_id']);
		$minimum = (int)$this->db->escape(@$data['minimum']);
		$sortorder = 1;
		$status = $this->db->escape(@$data['status']);
		$sitemapid = (int)$this->db->escape(@$data['sitemapid']);
		$date_added = $this->date->getToday();
		$date_modified = $this->date->getToday();
		$viewed = (int)$this->db->escape(@$data['viewed']);

		$field = array(
						'`model`',
						'`seo_url`',
						'`location`',
						'`quantity`',
						'`stock_status_id`',
						'`image`',
						'`manufacturerid`',
						'`shipping`',
						'`price`',
						'`subtract_stock`',
						'`points`',
						'`tax_class_id`',
						'`date_available_from`',
						'`date_available_to`',
						'`weight`',
						'`weight_class_id`',
						'`length`',
						'`width`',
						'`height`',
						'`length_class_id`',
						'`minimum`',
						'`sortorder`',
						'`status`',
						'`sitemapid`',
						'`date_added`',
						'`date_modified`',
						'`viewed`'
					);
					
		$value = array(
						$model,
						$seo_url,
						$location,
						$quantity,
						$stock_status_id,
						$image,
						$manufacturerid,
						$shipping,
						$price,
						$subtract_stock,
						$points,
						$tax_class_id,
						$date_available_from,
						$date_available_to,
						$weight,
						$weight_class_id,
						$length,
						$width,
						$height,
						$length_class_id,
						$minimum,
						$sortorder,
						$status,
						$sitemapid,
						$date_added,
						$date_modified,
						$viewed
					);
					
		$this->db->insertData("product", $field, $value);
		
		$productid = $this->db->getLastId();
		
		//product description
		if(isset($data['product_description'])){
			foreach($data['product_description'] as $languageid => $product_description){
				$productid = (int)$productid;
				$languageid = $languageid;
				$name = $this->db->escape(@$product_description['name']);
				$summary = $this->db->escape(@$product_description['summary']);
				$description = $this->db->escape(@$product_description['description']);
				$meta_description = $this->db->escape(@$product_description['meta_description']);
				$meta_keyword = $this->db->escape(@$product_description['meta_keyword']);
				$tag = $this->db->escape(@$product_description['tag']);
				
				$field = array(
								'`productid`',
								'`languageid`',
								'`name`',
								'`summary`',
								'`description`',
								'`meta_description`',
								'`meta_keyword`',
								'`tag`'
							);
							
				$value = array(
								$productid,
								$languageid,
								$name,
								$summary,
								$description,
								$meta_description,
								$meta_keyword,
								$tag
							);
				
				$this->db->insertData("product_description", $field, $value);	
			}
		}
		
		//product_site
		if(isset($data['product_site'])){
			foreach($data['product_site'] as $product_site){
				$productid = (int)$productid;
				$site_id = (int)$this->db->escape(@$product_site['site_id']);
				
				$field = array(
								'`productid`',
								'`site_id`'
							);
							
				$value = array(
								$productid,
								$site_id
							);
				
				$this->db->insertData("product_site", $field, $value);
				
			}	
		}
		
		//product_attribute
		if(isset($data['product_attribute'])){
			foreach($data['product_attribute'] as $product_attribute){
				$productid = (int)$productid;
				$name = $this->db->escape(@$product_attribute['name']);
				
				$field = array(
								'`productid`',
								'`name`'
							);
							
				$value = array(
								$productid,
								$name
							);
							
				$this->db->insertData("product_attribute", $field, $value);
		
				$product_attribute_id = $this->db->getLastId();
				//product_attribute_description
				foreach($product_attribute['product_attribute_description'] as $languageid => $product_attribute_description) {
					$productid = (int)$productid;
					$product_attribute_id = (int)$product_attribute_id;
					$languageid = $languageid;
					$description = $this->db->escape(@$product_attribute['description']);
					
					$field = array(
									'`productid`',
									'`product_attribute_id`',
									'`languageid`',
									'`description`'
								);
					
					$value = array(
									$productid,
									$product_attribute_id,
									$languageid,
									$description
								);
								
					$this->db->insertData("product_attribute_description", $field, $value);
				}
			}
		}
			
		//product_image
		if(isset($data['product_image'])){
			foreach($data['product_image'] as $product_image){
				$productid = (int)$productid;
				$image = $this->db->escape(html_entity_decode(@$product_image['image'], ENT_QUOTES, 'UTF-8'));
				$sortorder = (int)$this->db->escape($product_image['sortorder']);
				
				$field = array(
								'`productid`',
								'`image`',
								'`sortorder`'
							);	
							
				$value = array(
								$productid,
								$image,
								$sortorder
							);
							
				$this->db->insertData("product_image", $field, $value);
			}	
		}
			
		//url_alias
		if(trim($data['seo_url']) != ""){
			$value = (int)$productid;
			$object = "product";
			$keyword = $this->db->escape(@$data['seo_url']);
			
			$field = array(
							'`value`',
							'`object`',
							'`keyword`'
						);
						
			$arrValue = array(
							$value,
							$object,
							$keyword
						);
						
			$this->db->insertData("url_alias", $field, $arrValue);
		}
	}
	
	/*******************************************
	* update product
	********************************************/
	public function update($data){
		$productid = (int)$this->db->escape(@$data['productid']);
		$model = $this->db->escape(@$data['model']);
		$seo_url  = $this->db->escape(@$data['seo_url']);
		$location = $this->db->escape(@$data['location']);
		$quantity = (int)$this->string->toNumber($this->db->escape(@$data['quantity']));
		$stock_status_id = (int)$this->db->escape(@$data['stock_status_id']);
		$image = $this->db->escape(@$data['image']);
		$manufacturerid = (int)$this->db->escape(@$data['manufacturerid']);
		$shipping = (int)$this->db->escape(@$data['shipping']);
		$price = $this->string->toNumber($this->db->escape(@$data['price']));
		$subtract_stock = (int)$this->db->escape(@$data['subtract_stock']);
		$points = (int)$this->string->toNumber($this->db->escape(@$data['points']));
		$tax_class_id = (int)$this->db->escape(@$data['tax_class_id']);
		$date_available_from = $this->date->formatViewDate($this->db->escape(@$data['date_available_from']));
		$date_available_to = $this->date->formatViewDate($this->db->escape(@$data['date_available_to']));
		$weight = $this->db->escape(@$data['weight']);
		$weight_class_id = (int)$this->db->escape(@$data['weight_class_id']);
		$length = $this->db->escape(@$data['length']);
		$width = $this->db->escape(@$data['width']);
		$height = $this->db->escape(@$data['height']);
		$length_class_id = (int)$this->db->escape(@$data['length_class_id']);
		$minimum = (int)$this->db->escape(@$data['minimum']);
		$status = $this->db->escape(@$data['status']);
		$sitemapid = (int)$this->db->escape(@$data['sitemapid']);
		$date_modified = $this->date->getToday();


		$field = array(
						'`model`',
						'`seo_url`',
						'`location`',
						'`quantity`',
						'`stock_status_id`',
						'`image`',
						'`manufacturerid`',
						'`shipping`',
						'`price`',
						'`subtract_stock`',
						'`points`',
						'`tax_class_id`',
						'`date_available_from`',
						'`date_available_to`',
						'`weight`',
						'`weight_class_id`',
						'`length`',
						'`width`',
						'`height`',
						'`length_class_id`',
						'`minimum`',
						'`status`',
						'`sitemapid`',
						'`date_modified`'
					);
					
		$value = array(
						$model,
						$seo_url,
						$location,
						$quantity,
						$stock_status_id,
						$image,
						$manufacturerid,
						$shipping,
						$price,
						$subtract_stock,
						$points,
						$tax_class_id,
						$date_available_from,
						$date_available_to,
						$weight,
						$weight_class_id,
						$length,
						$width,
						$height,
						$length_class_id,
						$minimum,
						$status,
						$sitemapid,
						$date_modified
					);
		
		$where = " productid = '" . $productid . "'";
		
		$this->db->updateData("product", $field, $value, $where);
		
		$this->db->query("DELETE FROM `product_description` WHERE productid = '" . $productid . "'");
		
		if(isset($data['product_description'])){
			foreach($data['product_description'] as $languageid => $item){
				$productid = (int)$productid;
				$languageid = $languageid;
				$name = $this->db->escape(@$item['name']);
				$summary = $this->db->escape(@$item['summary']);
				$description = $this->db->escape(@$item['description']);
				$meta_description = $this->db->escape(@$item['meta_description']);
				$meta_keyword = $this->db->escape(@$item['meta_keyword']);
				$tag = $this->db->escape(@$item['tag']);
				
				$field = array(
								'`productid`',
								'`languageid`',
								'`name`',
								'`summary`',
								'`description`',
								'`meta_description`',
								'`meta_keyword`',
								'`tag`'
							);
							
				$value = array(
								$productid,
								$languageid,
								$name,
								$summary,
								$description,
								$meta_description,
								$meta_keyword,
								$tag
							);
				
				$this->db->insertData("product_description", $field, $value);	
			}
		}
				
		//delete product attribute
		$this->db->query("DELETE FROM product_attribute WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM product_attribute_description WHERE productid = '" . (int)$productid . "'");
		
		//insert product attribute
		if(isset($data['product_attribute'])){
			foreach($data['product_attribute'] as $product_attribute){
				$productid = (int)$productid;
				$name = $this->db->escape(@$product_attribute['name']);
				
				$field = array(
								'`productid`',
								'`name`'
							);
							
				$value = array(
								$productid,
								$name
							);
							
				$this->db->insertData("product_attribute", $field, $value);
		
				$product_attribute_id = $this->db->getLastId();
				//product_attribute_description
				foreach($product_attribute['product_attribute_description'] as $languageid => $product_attribute_description) {
					$productid = (int)$productid;
					$product_attribute_id = (int)$product_attribute_id;
					$languageid = $languageid;
					$description = $this->db->escape(@$product_attribute_description['description']);
					
					$field = array(
									'`productid`',
									'`product_attribute_id`',
									'`languageid`',
									'`description`'
								);
					
					$value = array(
									$productid,
									$product_attribute_id,
									$languageid,
									$description
								);
								
					$this->db->insertData("product_attribute_description", $field, $value);
				}
			}
		}
			
		//delete product_image
		$this->db->query("DELETE FROM `product_image` WHERE productid = '" . $productid . "'");
		
		//product_image
		if(isset($data['product_image'])){
			foreach($data['product_image'] as $product_image){
				$productid = (int)$productid;
				$image = $this->db->escape(html_entity_decode(@$product_image['image'], ENT_QUOTES, 'UTF-8'));
				$sortorder = (int)$this->db->escape(@$product_image['sortorder']);
				
				$field = array(
								'`productid`',
								'`image`',
								'`sortorder`'
							);	
							
				$value = array(
								$productid,
								$image,
								$sortorder
							);
							
				$this->db->insertData("product_image", $field, $value);
			}	
		}
		
		//delete url_alias
		$this->db->query("DELETE FROM url_alias WHERE value = '" . (int)$productid . "' AND object = 'product'");
		
		//url_alias
		if(trim($data['seo_url']) != ""){
			$value = (int)$productid;
			$object = "product";
			$keyword = $this->db->escape(@$data['seo_url']);
			
			$field = array(
							'`value`',
							'`object`',
							'`keyword`'
						);
						
			$arrValue = array(
							$value,
							$object,
							$keyword
						);
						
			$this->db->insertData("url_alias", $field, $arrValue);
		}
	}
	
	/*******************************************
	* copy product
	********************************************/
	public function copyProduct($productid){
		$sql = "SELECT 		DISTINCT * 
				FROM 		product p 
							LEFT JOIN product_description pd ON (p.productid = pd.productid) 
				WHERE 		p.productid = '" . (int)$productid . "' 
							AND pd.languageid = '" . $this->config->get('config_languageid') . "'";
		
		$query = $this->db->query($sql);
		
		if ($query->num_rows) {
			$data = array();
			
			$data = $query->row;
			
			$data['sku'] = '';
			$data['upc'] = '';
			$data['viewed'] = '0';
			$data['keyword'] = '';
			$data['status'] = '0';
						
			$data = array_merge($data, array('product_attribute' => $this->getProductAttributes($productid)));
			$data = array_merge($data, array('product_description' => $this->getProductDescriptions($productid)));			
			$data = array_merge($data, array('product_discount' => $this->getProductDiscounts($productid)));
			$data = array_merge($data, array('product_image' => $this->getProductImages($productid)));		
			$data = array_merge($data, array('product_option' => $this->getProductOptions($productid)));
			$data = array_merge($data, array('product_related' => $this->getProductRelated($productid)));
			$data = array_merge($data, array('product_reward' => $this->getProductRewards($productid)));
			$data = array_merge($data, array('product_special' => $this->getProductSpecials($productid)));
			$data = array_merge($data, array('product_category' => $this->getProductCategories($productid)));
			$data = array_merge($data, array('product_download' => $this->getProductDownloads($productid)));
			$data = array_merge($data, array('product_layout' => $this->getProductLayouts($productid)));
			$data = array_merge($data, array('product_store' => $this->getProductStores($productid)));
			
			$this->insertProduct($data);
		}
	}
	
	/*******************************************
	* get item
	********************************************/
	public function getItem($productid){
		$sql = "SELECT 		DISTINCT * 
				FROM 		product p LEFT JOIN product_description pd 
							ON (p.productid = pd.productid) 
				WHERE 		p.productid = '" . (int)$productid . "'";
		
		$query = $this->db->query($sql);
		
		return $query->row;

	}
	
	/*******************************************
	* get list
	********************************************/
	public function getList($where = ''){
		$product_data = array();
		$sql = "SELECT	* FROM `product` p WHERE 1=1 " . $where . " ORDER BY sortorder";	
		$product_query = $this->db->query($sql);
		
		if(isset($product_query->rows)){
			foreach($product_query->rows as $product){
				$sql = "SELECT * FROM `product_description` WHERE productid = '" . $product['productid'] . "' AND languageid = '" . $this->config->get('config_languageid') . "'";
				
				$product_description_data = $this->db->query($sql);
				$product = array_merge($product, $product_description_data->row);
				
				$product_data[] = $product;
			}
		}
		
		return $product_data;
	}
	
	/*******************************************
	* delete product
	********************************************/
	public function deleteProduct($productid){
		$this->db->query("DELETE FROM `product` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_attribute` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_description` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_discount` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_image` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_option` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_option_value` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_related` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_related` WHERE related_id = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_reward` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_category` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_download` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_layout` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_site` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `url_alias` WHERE productid = '" . (int)$productid . "'");
	}
	
	/*******************************************
	* get product by category_id
	********************************************/
	public function getProductsByCategoryId($category_id){
		$sql = "SELECT 		* 
				FROM 		product p 
							LEFT JOIN product_description pd ON (p.productid = pd.productid) 
							LEFT JOIN product_category p2c ON (p.productid = p2c.productid) 
				WHERE 		pd.languageid = '" . (int)$this->config->get('config_languageid') . "' 
							AND p2c.category_id = '" . (int)$category_id . "' 
				ORDER BY 	pd.name ASC";
		
		$query = $this->db->query($sql);
								  
		return $query->rows;
	} 
	
	/*******************************************
	* get product descriptions
	********************************************/
	public function getProductDescriptions($productid) {
		$download_description_data = array();
		
		$sql = "SELECT * FROM product_description WHERE productid = '" . (int)$productid . "'";
		
		$query = $this->db->query($sql);
		
		foreach ($query->rows as $result) {
			$product_description_data[$result['languageid']] = array(
				'name'             	=> $result['name'],
				'summary'			=> $result['summary'],
				'description'      	=> $result['description'],
				'meta_keyword'     	=> $result['meta_keyword'],
				'meta_description' 	=> $result['meta_description'],
				'languageid'		=> $result['languageid'],
				'tag'              	=> $result['tag']
			);
		}
		
		return $product_description_data;
	}
	
	/*******************************************
	* get product attributes
	********************************************/
	public function getProductAttributes($productid){
		$product_attribute_data = array();
		
		$sql = "SELECT 		pa.product_attribute_id, pa.name
				FROM 		product_attribute pa 
				WHERE 		pa.productid = '" . (int)$productid . "'";
		
		$product_attribute_query = $this->db->query($sql);
		
		foreach ($product_attribute_query->rows as $product_attribute){
			$product_attribute_description_data = array();
			
			$sql = "SELECT 		* 
					FROM 		product_attribute_description
					WHERE 		productid = '" . (int)$productid . "' 
								AND product_attribute_id = '" . (int)$product_attribute['product_attribute_id'] . "'";
			
			$product_attribute_description_query = $this->db->query($sql);
			
			foreach ($product_attribute_description_query->rows as $product_attribute_description) {
				$product_attribute_description_data[$product_attribute_description['languageid']] = array('description' => $product_attribute_description['description'], 'languageid' => $product_attribute_description['languageid']);
			}
			
			$product_attribute_data[] = array(
				'product_attribute_id'          => $product_attribute['product_attribute_id'],
				'name'                          => $product_attribute['name'],
				'product_attribute_description' => $product_attribute_description_data
			);
		}
		
		return $product_attribute_data;	
	}
	
	/*******************************************
	* get product options
	********************************************/
	public function getProductOptions($productid){
		$product_option_data = array();
		
		$sql = "SELECT 		* 
				FROM 		product_option po 
							LEFT JOIN `option` o ON (po.option_id = o.option_id) 
							LEFT JOIN `option_description` od ON (o.option_id = od.option_id) 
				WHERE 		po.productid = '" . (int)$productid . "' 
							AND od.languageid = '" . (int)$this->config->get('config_languageid') . "' 
				ORDER BY 	o.sortorder";
		
		$product_option_query = $this->db->query($sql);
		
		foreach ($product_option_query->rows as $product_option) {
			if ($product_option['type'] == 'select' || $product_option['type'] == 'radio' || $product_option['type'] == 'checkbox' || $product_option['type'] == 'image') {
				$product_option_value_data = array();	
				
				$sql = "SELECT 		* 
						FROM 		product_option_value pov 
									LEFT JOIN option_value ov ON (pov.option_value_id = ov.option_value_id) 
									LEFT JOIN option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) 
						WHERE 		pov.product_option_id = '" . (int)$product_option['product_option_id'] . "' 
									AND ovd.languageid = '" . (int)$this->config->get('config_languageid') . "' 
						ORDER BY 	ov.sortorder";
				
				$product_option_value_query = $this->db->query($sql);
				
				foreach ($product_option_value_query->rows as $product_option_value) {
					$product_option_value_data[] = array(
						'product_option_value_id' => $product_option_value['product_option_value_id'],
						'option_value_id'         => $product_option_value['option_value_id'],
						'name'                    => $product_option_value['name'],
						'image'                   => $product_option_value['image'],
						'quantity'                => $product_option_value['quantity'],
						'subtract'                => $product_option_value['subtract'],
						'price'                   => $product_option_value['price'],
						'price_prefix'            => $product_option_value['price_prefix'],
						'points'                  => $product_option_value['points'],
						'points_prefix'           => $product_option_value['points_prefix'],						
						'weight'                  => $product_option_value['weight'],
						'weight_prefix'           => $product_option_value['weight_prefix']					
					);
				}
				
				$product_option_data[] = array(
					'product_option_id'    => $product_option['product_option_id'],
					'option_id'            => $product_option['option_id'],
					'name'                 => $product_option['name'],
					'type'                 => $product_option['type'],
					'product_option_value' => $product_option_value_data,
					'required'             => $product_option['required']
				);				
			} else {
				$product_option_data[] = array(
					'product_option_id' => $product_option['product_option_id'],
					'option_id'         => $product_option['option_id'],
					'name'              => $product_option['name'],
					'type'              => $product_option['type'],
					'option_value'      => $product_option['option_value'],
					'required'          => $product_option['required']
				);				
			}
		}	
		
		return $product_option_data;
	}
	
	/*******************************************
	* get product images
	********************************************/
	public function getProductImages($productid){
		$sql = "SELECT 		* 
				FROM 		product_image 
				WHERE 		productid = '" . (int)$productid . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	/*******************************************
	* get product discounts
	********************************************/
	public function getProductDiscounts($productid){
		$sql = "SELECT 		* 
				FROM 		product_discount 
				WHERE 		productid = '" . (int)$productid . "' 
				ORDER BY 	quantity, priority, price";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	/*******************************************
	* get product rewards
	********************************************/
	public function getProductRewards($productid){
		$product_reward_data = array();
		
		$sql = "SELECT * FROM product_reward WHERE productid = '" . (int)$productid . "'";
		

		$query = $this->db->query($sql);
		
		foreach ($query->rows as $result){
			$product_reward_data[$result['usertypeid']] = array('points' => $result['points']);
		}
		
		return $product_reward_data;
	}
	
	/*******************************************
	* get product downloads
	********************************************/
	public function getProductDownloads($productid){
		$product_download_data = array();
		
		$sql = "SELECT * FROM product_download WHERE productid = '" . (int)$productid . "'";
		
		$query = $this->db->query($sql);
		
		foreach ($query->rows as $result) {
			$product_download_data[] = $result['download_id'];
		}
		
		return $product_download_data;
	}
	
	/*******************************************
	* get product sites
	********************************************/
	public function getProductSites($productid){
		$product_store_data = array();
		
		$sql = "SELECT * FROM product_site WHERE productid = '" . (int)$productid . "'";
		
		$query = $this->db->query($sql);

		foreach ($query->rows as $result) {
			$product_store_data[] = $result['site_id'];
		}
		
		return $product_store_data;
	}
	
	/*******************************************
	* get product layouts
	********************************************/
	public function getProductLayouts($productid){
		$product_layout_data = array();
		
		$sql = "SELECT * FROM product_layout WHERE productid = '" . (int)$productid . "'";
		
		$query = $this->db->query($sql);
		
		foreach ($query->rows as $result) {
			$product_layout_data[$result['site_id']] = $result['layout_id'];
		}
		
		return $product_layout_data;
	}
	
	/*******************************************
	* get product categories
	********************************************/	
	public function getProductCategories($productid){
		$product_category_data = array();
		
		$sql = "SELECT * FROM product_category WHERE productid = '" . (int)$productid . "'";
		
		$query = $this->db->query($sql);
		
		foreach ($query->rows as $result) {
			$product_category_data[] = $result['category_id'];
		}

		return $product_category_data;
	}
	
	/*******************************************
	* get product related
	********************************************/
	public function getProductRelated($productid){
		$product_related_data = array();
		
		$sql = "SELECT * FROM product_related WHERE productid = '" . (int)$productid . "'";
		
		$query = $this->db->query($sql);
		
		foreach ($query->rows as $result) {
			$product_related_data[] = $result['related_id'];
		}
		
		return $product_related_data;
	}
	
	/*******************************************
	* get total products by tax_class_id
	********************************************/
	public function getTotalProductsByTaxClassId($tax_class_id){
		$sql = "SELECT COUNT(*) AS total FROM product WHERE tax_class_id = '" . (int)$tax_class_id . "'";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
	
	/*******************************************
	* get total products by stock_status_id
	********************************************/	
	public function getTotalProductsByStockStatusId($stock_status_id){
		$sql = "SELECT COUNT(*) AS total FROM product WHERE stock_status_id = '" . (int)$stock_status_id . "'";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
	
	/*******************************************
	* get total products by weight_class_id
	********************************************/
	public function getTotalProductsByWeightClassId($weight_class_id){
		$sql = "SELECT COUNT(*) AS total FROM product WHERE weight_class_id = '" . (int)$weight_class_id . "'";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
	
	/*******************************************
	* get total products by length_class_id
	********************************************/
	public function getTotalProductsByLengthClassId($length_class_id){
		$sql = "SELECT COUNT(*) AS total FROM product WHERE length_class_id = '" . (int)$length_class_id . "'";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
	
	/*******************************************
	* get total products by download_id
	********************************************/
	public function getTotalProductsByDownloadId($download_id){
		$sql = "SELECT COUNT(*) AS total FROM product_download WHERE download_id = '" . (int)$download_id . "'";
		$query = $this->db->query($sql);
		
		return $query->row['total'];
	}
	
	/*******************************************
	* get total products by manufacturerid
	********************************************/
	public function getTotalProductsByManufacturerId($manufacturerid){
		$sql = "SELECT COUNT(*) AS total FROM product WHERE manufacturerid = '" . (int)$manufacturerid . "'";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
	
	/*******************************************
	* get total products by attribute_id
	********************************************/
	public function getTotalProductsByAttributeId($attribute_id){
		$sql = "SELECT COUNT(*) AS total FROM product_attribute WHERE attribute_id = '" . (int)$attribute_id . "'";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}	
	
	/*******************************************
	* get total products by option_id
	********************************************/
	public function getTotalProductsByOptionId($option_id){
		$sql = "SELECT COUNT(*) AS total FROM product_option WHERE option_id = '" . (int)$option_id . "'";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}	
	
	/*******************************************
	* get total products by layout_id
	********************************************/
	public function getTotalProductsByLayoutId($layout_id){
		$sql = "SELECT COUNT(*) AS total FROM product_layout WHERE layout_id = '" . (int)$layout_id . "'";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
	
	/*******************************************
	* get total products
	********************************************/
	public function getTotalProducts($data = array()) {
		$sql = "SELECT 		COUNT(DISTINCT p.productid) AS total 
				FROM 		product p 
							LEFT JOIN product_description pd ON (p.productid = pd.productid)";

		if (!empty($data['filter_category_id'])) {
			$sql .= " LEFT JOIN product_category p2c ON (p.productid = p2c.productid)";			
		}
		 
		$sql .= " WHERE pd.languageid = '" . (int)$this->config->get('config_languageid') . "'";
		 			
		if (!empty($data['filter_name'])) {
			$sql .= " AND LCASE(pd.name) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
		}

		if (!empty($data['filter_model'])) {
			$sql .= " AND LCASE(p.model) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_model'])) . "%'";
		}
		
		if (!empty($data['filter_price'])) {
			$sql .= " AND p.price LIKE '" . $this->db->escape($data['filter_price']) . "%'";
		}
		
		if (isset($data['filter_quantity']) && !is_null($data['filter_quantity'])) {
			$sql .= " AND p.quantity = '" . $this->db->escape($data['filter_quantity']) . "'";
		}
		
		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$sql .= " AND p.status = '" . (int)$data['filter_status'] . "'";
		}

		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$implode_data = array();
				
				$implode_data[] = "p2c.category_id = '" . (int)$data['filter_category_id'] . "'";
				
				//$this->load->model('catalog/category');
				
				/*$categories = $this->model_catalog_category->getCategories($data['filter_category_id']);
				
				foreach ($categories as $category) {
					$implode_data[] = "p2c.category_id = '" . (int)$category['category_id'] . "'";
				}*/
				
				$sql .= " AND (" . implode(' OR ', $implode_data) . ")";			
			} else {
				$sql .= " AND p2c.category_id = '" . (int)$data['filter_category_id'] . "'";
			}
		}
		
		$query = $this->db->query($sql);
		
		return $query->row['total'];
	}
	
	public function getSubImageByProductId($productid){
		$sql = "SELECT * FROM `product_image` WHERE productid = '" . $productid . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getImageIdByImageName($imagename){
		$sql = "SELECT * FROM `file` WHERE filepath = '" . $imagename . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function updateCol($productid,$col,$val)
	{
		$productid = $productid;
		$col = $col;
		$val = $val;
		
		
		$field=array(
						$col
					);
		$value=array(
						$val
					);
		
		$where=" productid = '" . $productid . "'";
		$this->db->updateData('product',$field,$value,$where);
	}
}
?>