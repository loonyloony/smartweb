<?php 
//$this->load->model("customer/customer");

//status: 0=waiting, 1=approved, 2=hidden, 3=deleted
//waiting: product post by guest for admin approve
//approved: product was approved by admin or user

class ModelPropertyProduct extends Model{
	
	/*******************************************
	* insert property's product
	********************************************/
	public function insert($data){
		//$model = $this->db->escape(@$data['model']);
		$location = $this->db->escape(@$data['location']);
		//$quantity = (int)$this->string->toNumber($this->db->escape(@$data['quantity']));
		//$stock_status_id = (int)$this->db->escape(@$data['stock_status_id']);
		$image = $this->db->escape(@$data['image']);
		//$manufacturerid = (int)$this->db->escape(@$data['manufacturerid']);
		//$shipping = (int)$this->db->escape(@$data['shipping']);
		$price = $this->string->toNumber($this->db->escape(@$data['price']));
		//$subtract_stock = (int)$this->db->escape(@$data['subtract_stock']);
		//$points = (int)$this->string->toNumber($this->db->escape(@$data['points']));
		//$tax_class_id = (int)$this->db->escape(@$data['tax_class_id']);
		$date_available_from = $this->date->formatViewDate($this->db->escape(@$data['date_available_from']));
		//$date_available_to = $this->date->formatViewDate($this->db->escape(@$data['date_available_to']));
		//$weight = $this->db->escape(@$data['weight']);
		//$weight_class_id = (int)$this->db->escape(@$data['weight_class_id']);
		$length = $this->string->toNumber($this->db->escape(@$data['length']));
		//$width = $this->db->escape(@$data['width']);
		//$height = $this->db->escape(@$data['height']);
		//$length_class_id = (int)$this->db->escape(@$data['length_class_id']);
		//$minimum = (int)$this->db->escape(@$data['minimum']);
		$sortorder = (int)$this->db->escape(@$data['sortorder']);
		$status = $this->db->escape(@$data['status']);
		$date_added = $this->date->getToday();
		$date_modified = $this->date->getToday();
		//$viewed = (int)$this->db->escape(@$data['viewed']);
		$sitemapid = (int)$this->db->escape(@$data['sitemapid']);
		//$filter = (int)$this->db->escape(@$data['filter']); 
		$postalcode = $this->db->escape(@$data['postalcode']); 
		$locationmap = $this->db->escape(@$data['locationmap']); 
		$zoneid = (int)$this->db->escape(@$data['zoneid']); 
		$stationid = (int)$this->db->escape(@$data['stationid']); 
		$propertytypeid = (int)$this->db->escape(@$data['propertytypeid']); 
		$roomtypeid = (int)$this->db->escape(@$data['roomtypeid']);
		$userid = $this->user->getId();
		$feature = $this->db->escape(@$data['feature']);

        if(SKINID == 'singapore') {
            $this->load->model("customer/customer");
            $customer = $this->model_customer_customer->getItemByEmail("admincustomer@sgp.com");
            $customerid = $customer['customerid'];
        }

		$field = array(
						'`location`',			 
						'`image`',
						'`price`',
						'`date_available_from`',
						'`length`',
						'`sortorder`',
						'`status`',
						'`date_added`',
						'`date_modified`',
						'`sitemapid`',
						'`postalcode`',
						'`locationmap`',
						'`zoneid`',
						'`stationid`',
						'`propertytypeid`',
						'`roomtypeid`',
						'`userid`',
						'`feature`',
                        '`customerid`'
					);
					
		$value = array(
						$location,
						$image,
						$price,
						$date_available_from,
						$length,
						$sortorder,
						$status,
						$date_added,
						$date_modified,
						$sitemapid,
						$postalcode,
						$locationmap,
						$zoneid,
						$stationid,
						$propertytypeid,
						$roomtypeid,
						$userid,
						$feature,
                        $customerid
					);

		$this->db->insertData("product", $field, $value);
		
		//collection info for advance search
		$rootcontent_search = "";
		
		$productid = $this->db->getLastId();
		
		//product description
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
				$seo_content = $this->db->escape(@$item['seo_content']);
				$seo_url = $this->db->escape(@$item['seo_url']);
				
				$field = array(
								'`productid`',
								'`languageid`',
								'`name`',
								'`summary`',
								'`description`',
								'`meta_description`',
								'`meta_keyword`',
								'`tag`',
								'`seo_content`',
								'`seo_url`'
							);
							
				$value = array(
								$productid,
								$languageid,
								$name,
								$summary,
								$description,
								$meta_description,
								$meta_keyword,
								$tag,
								$seo_content,
								$seo_url								
							);
				
				$this->db->insertData("product_description", $field, $value);	
				
				//url_alias
				if($seo_url != ""){
					$this->smartweb->saveSEOURL($seo_url,"propertyproduct",$productid,$languageid);
				}
				
				//collect infos for advancesearch
				$content_search = $rootcontent_search;
				$content_search .= "[".$name."##".
									$seo_url."##".
									$summary."##".
									$description."##".
									$meta_title."##".
									$meta_description."##".
									$meta_keyword."##".
									$seo_content."##".
									$tag."##]";
				
				
				//--------------------------------------------------------------------------------
				//update or insert data into advance_search 6/11 anh dung
				$data_advance_search = array ();
				$data_advance_search['objtype'] = 'productoption';
				$data_advance_search['objid'] = $productid;
				$data_advance_search['rootcontent'] = $content_search;
				
				$data_advance_search['languageid'] = $languageid;
				$data_advance_search['title'] = $name;
				$data_advance_search['imagepath'] = $image;
				$data_advance_search['summary'] = $summary;
				$data_advance_search['updateddate'] = $date_modified;
				$data_advance_search['seo_url'] = $seo_url;
		
				$this->load->model('core/advancesearch');
				$this->model_core_advancesearch->insert($data_advance_search);		
				
				//--------------------------------------------------------------------------------
				$this->load->model("core/tag");
				// save tags
				// decrease count in tag
				$oldtags = $product_description['oldtag'];
				$arr_old = explode(",",$oldtags);
				
				if(count($arr_old) != 0) {
					foreach ($arr_old as $item) {
						$item = trim($item);
						if ($item != "") {
							$tag_data = array (
								'sitemapid' => 	$data['sitemapid'],
								'key' => $item,
								'language' => $languageid
							);
							$this->model_core_tag->decrease_count($tag_data);
						}
					}
				}
				
				$tags = $product_description['tag'];
				$arr_tags = explode(",",$tags);
				if(count($arr_tags) != 0) {
					foreach ($arr_tags as $item) {
						$item = trim($item);
						if ($item != "") {
							$tag_data = array (
								'sitemapid' => 	$data['sitemapid'],
								'key' => $item,
								'language' => $languageid,
							);
							$this->model_core_tag->save($tag_data);
						}
					}
				}
				
				
			}
		}
		
		//product additional
		$this->load->model("property/productadditional");
		if(isset($data['additional']) && count($data['additional']) > 0) {
			foreach($data['additional'] as $additionalsourceid => $value) {
				$productadditional['productid'] = $productid;
				$productadditional['additionalsourceid'] = $additionalsourceid;
				$productadditional['value'] = $value;
				$this->model_property_productadditional->insert($productadditional);
			}	
		}
		
		/*
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
		*/
		
		/*
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
		*/
		
		/*
		//product_option
		if(isset($data['product_option'])){
			foreach($data['product_option'] as $key => $product_option){
				$productid = (int)$productid;
				$optionid = (int)$key;
				$required = (int)$this->db->escape(@$product_option['required']);
				
				$field = array(
								'`productid`',
								'`optionid`',
								'`required`'
							);
				
				$value = array(
								$productid,
								$optionid,
								$required
							);
				
				$this->db->insertData("product_option", $field, $value);
				
				$product_option_id = $this->db->getLastId();
				
				//product_option_value
				if(isset($product_option['product_option_value'])){
					foreach($product_option['product_option_value'] as $key => $product_option_value){
						$product_option_id = (int)$product_option_id;
						$productid = (int)$productid;
						$optionid = (int)$optionid;
						$option_value_id = (int)$key;
						$option_value_name = $this->db->escape(@$product_option_value['option_value_name']);
						$quantity = (int)$this->db->escape(@$product_option_value['quantity']);
						$subtract = (int)$this->db->escape(@$product_option_value['subtract']);
						$price = $this->db->escape($this->string->toNumber(@$product_option_value['price']));
						$price_prefix = $this->db->escape(@$product_option_value['price_prefix']);
						$points = (int)$this->db->escape(@$product_option_value['points']);
						$points_prefix = $this->db->escape(@$product_option_value['points_prefix']);
						$weight = $this->db->escape(@$product_option_value['weight']);
						$weight_prefix = $this->db->escape(@$product_option_value['weight_prefix']);
						$image = $this->db->escape(html_entity_decode(@$product_option_value['image'], ENT_QUOTES, 'UTF-8'));
						
						$field = array(
										'`product_option_id`',
										'`productid`',
										'`optionid`',
										'`option_value_id`',
										'`option_value_name`',
										'`quantity`',
										'`subtract`',
										'`price`',
										'`price_prefix`',
										'`points`',
										'`points_prefix`',
										'`weight`',
										'`weight_prefix`',
										'`image`'
									);
									
						$value = array(
										$product_option_id,
										$productid,
										$optionid,
										$option_value_id,
										$option_value_name,
										$quantity,
										$subtract,
										$price,
										$price_prefix,
										$points,
										$points_prefix,
										$weight,
										$weight_prefix,
										$image
									);
						
						$this->db->insertData("product_option_value", $field, $value);
					}
				}	
			}	
		}
		*/
		
		/*
		//product_discount
		if(isset($data['product_discount'])){
			foreach($data['product_discount'] as $product_discount){
				$productid = (int)$productid;
				$customer_group_id = (int)$this->db->escape($product_discount['customer_group_id']);
				$quantity = (int)$this->db->escape($product_discount['quantity']);
				$priority = (int)$this->db->escape($product_discount['priority']);
				$price = $this->string->toNumber($this->db->escpae($product_discount['price']));
				$date_start = $this->date->formatViewDate($this->db->escape($product_discount['date_start']));
				$date_end = $this->date->formatViewDate($this->db->escape($product_discount['date_end']));
				
				$field = array(
								'`productid`',
								'`customer_group_id`',
								'`quantity`',
								'`priority`',
								'`price`',
								'`date_start`',
								'`date_end`'
							);
							
				$value = array(
								$productid,
								$customer_group_id,
								$quantity,
								$priority,
								$price,
								$date_start,
								$date_end
							);
							
				$this->db->insertData("product_discount", $field, $value);
			}
		}
		*/
		
		/*
		//product special
		if(isset($data['product_special'])){
			foreach($data['product_special'] as $product_special){
				$productid = (int)$productid;
				$customer_group_id = (int)$this->db->escape($product_special['customer_group_id']);
				$quantity = (int)$this->string->toNumber($this->db->escape($product_special['quantity']));
				$priority = (int)$this->db->escape($product_special['priority']);
				$price = $this->string->toNumber($this->db->escpae($product_special['price']));
				$date_start = $this->date->formatViewDate($this->db->escape($product_special['date_start']));
				$date_end = $this->date->formatViewDate($this->db->escape($product_special['date_end']));
				
				$field = array(
								'`productid`',
								'`customer_group_id`',
								'`quantity`',
								'`priority`',
								'`price`',
								'`date_start`',
								'`date_end`'
							);
							
				$value = array(
								$productid,
								$customer_group_id,
								$quantity,
								$priority,
								$price,
								$date_start,
								$date_end
							);
							
				$this->db->insertData("product_special", $field, $value);
			}
		}
		*/
		
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
		
		/*
		//product download
		if(isset($data['product_download'])){
			foreach($data['product_download'] as $download_id){
				$productid = (int)$productid;
				$download_id = (int)$download_id;
				
				$field = array(
								'`productid`',
								'`download_id`'
							);
							
				$value = array(
								$productid,
								$download_id
							);
							
				$this->db->insertData("product_download", $field, $value);
			}
		}
		*/
		
		//product category
		if(isset($data['product_category'])){
			foreach($data['product_category'] as $category_id){
				$productid = (int)$productid;
				$category_id = (int)$category_id;
				
				$field = array(
								'`productid`',
								'`category_id`'
							);
							
				$value = array(
								$productid,
								$category_id
							);
				
				$this->db->insertData("product_category", $field, $value);
			}
		}
		
		/*
		//product_related
		if(isset($data['product_related'])){
			foreach($data['product_related'] as $related_id){
				$productid = (int)$productid;
				$related_id = (int)$related_id;
				
				$this->db->query("DELETE FROM product_related WHERE productid = '" . (int)$productid . "' AND related_id = '" . (int)$related_id . "'");
				$this->db->query("DELETE FROM product_related WHERE productid = '" . (int)$related_id . "' AND related_id = '" . (int)$productid . "'");
				
				$field = array(
								'productid',
								'related_id'
							);
							
				$value = array(
								$productid,
								$related_id
							);
							

				$this->db->insertData("product_related", $field, $value);
				
				$field = array(
								'productid',
								'related_id'
							);
							
				$value = array(
								$related_id,
								$productid
							);
							
				$this->db->insertData("product_related", $field, $value);
			}
		}
		*/
		
		/*
		//product_reward
		if(isset($data['product_reward'])){
			foreach($data['product_reward'] as $product_reward){
				$productid = (int)$productid;
				$customer_group_id = (int)$this->db->escape(@$product_reward['customer_group_id']);
				$points = (int)$this->db->escape(@$product_reward['points']);
				
				$field = array(
								'`productid`',
								'`customer_group_id`',
								'`points`'
							);
				
				$value = array(
								$productid,
								$customer_group_id,
								$points
							);
							
				$this->db->insertData("product_reward", $field, $value);
			}
		}
		*/
		
		/*
		//product_layout
		if(isset($data['product_layout'])){
			foreach($data['product_layout'] as $site_id => $product_layout){
				$productid = (int)$productid;
				$site_id = (int)$site_id;
				$layout_id = (int)$this->db->escape(@$product_layout['layout_id']);	
				
				$field = array(
								'`productid`',
								'`site_id`',
								'`layout_id`'
							);
							
				$value = array(
								$productid,
								$site_id,
								$layout_id
							);
							
				$this->db->insertData("product_layout", $field, $value);
			}
		}
		*/
	}
	
	/*******************************************
	* update product
	********************************************/
	public function update($data){
		$productid = (int)$this->db->escape(@$data['productid']);
		//$model = $this->db->escape(@$data['model']);
		$location = $this->db->escape(@$data['location']);
		//$quantity = (int)$this->string->toNumber($this->db->escape(@$data['quantity']));
		//$stock_status_id = (int)$this->db->escape(@$data['stock_status_id']);
		$image = $this->db->escape(@$data['image']);
		//$manufacturerid = (int)$this->db->escape(@$data['manufacturerid']);
		//$shipping = (int)$this->db->escape(@$data['shipping']);
		$price = $this->string->toNumber($this->db->escape(@$data['price']));
		//$subtract_stock = (int)$this->db->escape(@$data['subtract_stock']);
		//$points = (int)$this->string->toNumber($this->db->escape(@$data['points']));
		//$tax_class_id = (int)$this->db->escape(@$data['tax_class_id']);
		$date_available_from = $this->date->formatViewDate($this->db->escape(@$data['date_available_from']));
		//$date_available_to = $this->date->formatViewDate($this->db->escape(@$data['date_available_to']));
		//$weight = $this->db->escape(@$data['weight']);
		//$weight_class_id = (int)$this->db->escape(@$data['weight_class_id']);
		$length = $this->db->escape(@$data['length']);
		//$width = $this->db->escape(@$data['width']);
		//$height = $this->db->escape(@$data['height']);
		//$length_class_id = (int)$this->db->escape(@$data['length_class_id']);
		//$minimum = (int)$this->db->escape(@$data['minimum']);
		$sortorder = 1;
		$status = $this->db->escape(@$data['status']);
		$sitemapid = (int)$this->db->escape(@$data['sitemapid']);
		$date_modified = $this->date->getToday();
		//$filter = (int)$this->db->escape(@$data['filter']);
		$postalcode = $this->db->escape(@$data['postalcode']); 
		$locationmap = $this->db->escape(@$data['locationmap']); 
		$zoneid = (int)$this->db->escape(@$data['zoneid']); 
		$stationid = (int)$this->db->escape(@$data['stationid']); 
		$propertytypeid = (int)$this->db->escape(@$data['propertytypeid']); 
		$roomtypeid = (int)$this->db->escape(@$data['roomtypeid']); 
		$userid = $this->user->getId();
		$feature = $this->db->escape(@$data['feature']); 
		
		$field = array(
						'`location`',
						'`image`',
						'`price`',
						'`date_available_from`',						
						'`length`',
						'`sortorder`',
						'`status`',
						'`sitemapid`',
						'`date_modified`',
						'`postalcode`',
						'`locationmap`',
						'`zoneid`',
						'`stationid`',
						'`propertytypeid`',
						'`roomtypeid`',
						'`userid`',
						'`feature`'
					);
					
		$value = array(
						$location,
						$image,
						$price,
						$date_available_from,						
						$length,
						$sortorder,
						$status,
						$sitemapid,
						$date_modified,
						$postalcode,
						$locationmap,
						$zoneid,
						$stationid,
						$propertytypeid,
						$roomtypeid,
						$userid,
						$feature
					);
		
		$where = " productid = '" . $productid . "'";
		
		//collection info for advance search
		$rootcontent_search = ""; 
		
		$this->db->updateData("product", $field, $value, $where);
		
		$this->db->query("DELETE FROM `product_description` WHERE productid = '" . $productid . "'");
		if(isset($data['product_description'])){
			foreach($data['product_description'] as $languageid => $item){
				$productid = (int)$productid;
				$languageid = $languageid;
				$name = $this->db->escape(@$item['name']);
				$summary = $this->db->escape(@$item['summary']);
				$description = $this->db->escape(@$item['description']);
				$meta_title = $this->db->escape(@$item['meta_title']);
				$meta_description = $this->db->escape(@$item['meta_description']);
				$meta_keyword = $this->db->escape(@$item['meta_keyword']);
				$seo_content = $this->db->escape(@$item['seo_content']);
				$tag = $this->db->escape(@$item['tag']);
				$seo_url = $this->db->escape(@$item['seo_url']);
				
				$field = array(
								'`productid`',
								'`languageid`',
								'`name`',
								'`summary`',
								'`description`',
								'`meta_title`',
								'`meta_description`',
								'`meta_keyword`',
								'`tag`',
								'`seo_content`',
								'`seo_url`'
							);
							
				$value = array(
								$productid,
								$languageid,
								$name,
								$summary,
								$description,
								$meta_title,
								$meta_description,
								$meta_keyword,
								$tag,
								$seo_content,
								$seo_url
							);
				
				$this->db->insertData("product_description", $field, $value);
				
				//url_alias
				if($seo_url != ""){
					$this->smartweb->saveSEOURL($seo_url,"propertyproduct",$productid,$languageid);
				}	
				
				//collect infos for advancesearch
				$content_search = $rootcontent_search;
				$content_search .= "[".$name."##".
									$seo_url."##".
									$summary."##".
									$description."##".
									$meta_title."##".
									$meta_description."##".
									$meta_keyword."##".
									$seo_content."##".
									$tag."##]";
				
				
				//--------------------------------------------------------------------------------
				//update or insert data into advance_search 6/11 anh dung
				$data_advance_search = array ();
				$data_advance_search['objtype'] = 'productoption';
				$data_advance_search['objid'] = $productid;
				$data_advance_search['rootcontent'] = $content_search;
				
				$data_advance_search['languageid'] = $languageid;
				$data_advance_search['title'] = $name;
				$data_advance_search['imagepath'] = $image;
				$data_advance_search['summary'] = $summary;
				$data_advance_search['updateddate'] = $date_modified;
				$data_advance_search['seo_url'] = $seo_url;
				
				$this->load->model('core/advancesearch');
				$this->model_core_advancesearch->updateOrInsert($data_advance_search);			
				//--------------------------------------------------------------------------------
				
				$this->load->model("core/tag");
				// save tags
				// decrease count in tag
				$oldtags = $item['oldtag'];
				$arr_old = explode(",",$oldtags);
				
				if(count($arr_old) != 0) {
					foreach ($arr_old as $t) {
						$t = trim($t);
						if ($t != "") {
							$tag_data = array (
								'sitemapid' => 	$data['sitemapid'],
								'key' => $t,
								'language' => $languageid
							);
							$this->model_core_tag->decrease_count($tag_data);
						}
					}
				}
				
				$tags = $item['tag'];
				$arr_tags = explode(",",$tags);
				if(count($arr_tags) != 0) {
					foreach ($arr_tags as $t) {
						$t = trim($t);
						if ($t != "") {
							$tag_data = array (
								'sitemapid' => 	$data['sitemapid'],
								'key' => $t,
								'language' => $languageid,
							);
							$this->model_core_tag->save($tag_data);
						}
					}
				}
			}
		}
		
		//product additional
		$this->load->model("property/productadditional");
		$this->model_property_productadditional->delete($productid);
		if(isset($data['additional']) && count($data['additional']) > 0) {
			foreach($data['additional'] as $additionalsourceid => $value) {
				$productadditional['productid'] = $productid;
				$productadditional['additionalsourceid'] = $additionalsourceid;
				$productadditional['value'] = $value;
				$this->model_property_productadditional->insert($productadditional);
			}	
		}
		
		/*
		$this->db->query("DELETE FROM product_special WHERE productid = '" . (int)$productid . "'");
		//product special
		if(isset($data['product_special'])){
			foreach($data['product_special'] as $product_special){
				$productid = (int)$productid;
				$customer_group_id = (int)$this->db->escape($product_special['customer_group_id']);
				$quantity = (int)$this->string->toNumber($this->db->escape($product_special['quantity']));
				$priority = (int)$this->db->escape($product_special['priority']);
				$price = $this->string->toNumber($this->db->escape($product_special['price']));
				$date_start = $this->date->formatViewDate($this->db->escape($product_special['date_start']));
				$date_end = $this->date->formatViewDate($this->db->escape($product_special['date_end']));
				
				$field = array(
								'`productid`',
								'`customer_group_id`',
								'`quantity`',
								'`priority`',
								'`price`',
								'`date_start`',
								'`date_end`'
							);
							
				$value = array(
								$productid,
								$customer_group_id,
								$quantity,
								$priority,
								$price,
								$date_start,
								$date_end
							);
							
				$this->db->insertData("product_special", $field, $value);
			}
		}
		*/
		
		/*
		//delete product_site
		$this->db->query("DELETE FROM product_site WHERE productid = '" . (int)$productid . "'");
		//insert product_site
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
		*/
		
		/*
		//delete product attribute
		$this->db->query("DELETE FROM product_attribute WHERE productid = '" . (int)$productid . "'");
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
		*/
		
		/*
		//delete product_option
		$this->db->query("DELETE FROM product_option WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM product_option_value WHERE productid = '" . (int)$productid . "'");
		
		//insert product_option
		if(isset($data['product_option'])){
			foreach($data['product_option'] as $key => $product_option){

				$productid = (int)$productid;
				$optionid = (int)$key;
				$required = (int)$this->db->escape(@$product_option['required']);
					
				$field = array(
								'`productid`',
								'`optionid`',
								'`required`'
							);
				
				$value = array(
								$productid,
								$optionid,
								$required
							);
				
				$this->db->insertData("product_option", $field, $value);
				
				$product_option_id = $this->db->getLastId();
					
					//product_option_value
					if(isset($product_option['product_option_value'])){
						foreach($product_option['product_option_value'] as $product_option_value){
							$product_option_id = (int)$product_option_id;
							$productid = (int)$productid;
							$optionid = (int)$optionid;
							$option_value_id = (int)$this->db->escape(@$product_option_value['option_value_id']);
							$quantity = (int)$this->db->escape(@$product_option_value['quantity']);
							$subtract = (int)$this->db->escape(@$product_option_value['subtract']);
							$price = $this->db->escape($this->string->toNumber(@$product_option_value['price']));
							$price_prefix = $this->db->escape(@$product_option_value['price_prefix']);
							$points = (int)$this->db->escape(@$product_option_value['points']);
							$points_prefix = $this->db->escape(@$product_option_value['points_prefix']);
							$weight = $this->db->escape(@$product_option_value['weight']);
							$weight_prefix = $this->db->escape(@$product_option_value['weight_prefix']);
							$image = $this->db->escape(html_entity_decode(@$product_option_value['image'], ENT_QUOTES, 'UTF-8'));
							
							$field = array(
											'`product_option_id`',
											'`productid`',
											'`optionid`',
											'`option_value_id`',
											'`quantity`',
											'`subtract`',
											'`price`',
											'`price_prefix`',
											'`points`',
											'`points_prefix`',
											'`weight`',
											'`weight_prefix`',
											'`image`'
										);
										
							$value = array(
											$product_option_id,
											$productid,
											$optionid,
											$option_value_id,
											$quantity,
											$subtract,
											$price,
											$price_prefix,
											$points,
											$points_prefix,
											$weight,
											$weight_prefix,
											$image
										);
							
							$this->db->insertData("product_option_value", $field, $value);
						}
					}	
			}	
		}
		*/
		
		
		/*
		//delete product_discount
		$this->db->query("DELETE FROM `product_discount` WHERE productid = '" . $productid . "'");
		//product_discount
		if(isset($data['product_discount'])){
			foreach($data['product_discount'] as $product_discount){
				$productid = (int)$productid;
				$customer_group_id = (int)$this->db->escape($product_discount['customer_group_id']);
				$quantity = (int)$this->db->escape($product_discount['quantity']);
				$priority = (int)$this->db->escape($product_discount['priority']);
				$price = $this->string->toNumber($this->db->escape($product_discount['price']));
				$date_start = $this->date->formatViewDate($this->db->escape($product_discount['date_start']));
				$date_end = $this->date->formatViewDate($this->db->escape($product_discount['date_end']));
				
				$field = array(
								'`productid`',
								'`customer_group_id`',
								'`quantity`',
								'`priority`',
								'`price`',
								'`date_start`',
								'`date_end`'
							);
							
				$value = array(
								$productid,
								$customer_group_id,
								$quantity,
								$priority,
								$price,
								$date_start,
								$date_end
							);
							
				$this->db->insertData("product_discount", $field, $value);
			}
		}
		*/
		
		
		//delete product_imge
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
		
		/*
		//delete product_reward
		$this->db->query("DELETE FROM product_reward WHERE productid = '" . (int)$productid . "'");
		//insert product_reward
		if(isset($data['product_reward'])){
			foreach($data['product_reward'] as $product_reward){
				$productid = (int)$productid;
				$customer_group_id = (int)$this->db->escape(@$product_reward['customer_group_id']);
				$points = (int)$this->db->escape(@$product_reward['points']);
				
				$field = array(
								'`productid`',
								'`customer_group_id`',
								'`points`'
							);
				
				$value = array(
								$productid,
								$customer_group_id,
								$points
							);
							
				$this->db->insertData("product_reward", $field, $value);
			}
		}
		*/
	}
	
	public function updateStatus($data){
		$productid = (int)$this->db->escape(@$data['productid']);
		$status = $this->db->escape(@$data['status']);
		
		$field = array(
						'`status`',
						'`date_modified`'
					);
					
		$value = array(
						$status,
						$this->date->getToday()
					);
		
		$where = " productid = '" . $productid . "'";
		
		$this->db->updateData("product", $field, $value, $where);
	}
	
	public function getAllTagsProduct()
	{		
		$sql = "SELECT DISTINCT `key` AS `tag`
				FROM 		`tag` 
				ORDER BY	`key` ASC ";
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	/*******************************************
	* copy product
	********************************************/
	public function copyProduct($productid){
		$sql = "SELECT 		DISTINCT * 
				FROM 		product p 
							LEFT JOIN product_description pd ON (p.productid = pd.productid) 
				WHERE 		p.productid = '" . (int)$productid . "' 
							AND pd.languageid = '" . (int)$this->config->get('config_languageid') . "'";
		
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
				WHERE 		p.productid = '" . (int)$productid . "' 
							AND pd.languageid = '" . $this->config->get('config_languageid') . "'";
		
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	/*******************************************
	* get list
	********************************************/
	public function getList($where){

		$sql = "SELECT 		* 
				FROM 		product p 
							LEFT JOIN product_description pd ON (p.productid = pd.productid) 
				WHERE 		pd.languageid = '" . $this->config->get('config_languageid') . "'" . $where;
		
		$query = $this->db->query($sql);

		$product_data = $query->rows;	

		return $product_data;

	}
	
	/*******************************************
	* delete product
	********************************************/
	public function deleteProduct($productid){
		$this->db->query("DELETE FROM `product` WHERE productid = '" . $productid . "'");
		$this->db->query("DELETE FROM `product_attribute` WHERE productid = '" . (int)$productid . "'");
		$this->db->query("DELETE FROM `product_description` WHERE productid = '" . $productid . "'");
		$this->db->query("DELETE FROM `product_discount` WHERE productid = '" . $productid . "'");
		$this->db->query("DELETE FROM `product_image` WHERE productid = '" . $productid . "'");
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
	/*
	public function getProductsByCategoryId($category_id){
		$sql = "SELECT 		* 
				FROM 		product p 
							LEFT JOIN product_description pd ON (p.productid = pd.productid) 
							LEFT JOIN product_category p2c ON (p.productid = p2c.productid) 
				WHERE 		pd.languageid = '" . $this->config->get('config_languageid') . "' 
							AND p2c.category_id = '" . (int)$category_id . "' 
				ORDER BY 	pd.name ASC";
		
		$query = $this->db->query($sql);
								  
		return $query->rows;
	} 
	*/
	
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
				'tag'              	=> $result['tag'],
				'seo_content' 	=> $result['seo_content'],
				'seo_url'              	=> $result['seo_url']
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
				WHERE 		pa.productid = '" . (int)$productid . "' ORDER BY pa.name ASC";
		
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
							LEFT JOIN `option` o ON (po.optionid = o.optionid) 
							LEFT JOIN `option_description` od ON (o.optionid = od.optionid) 
				WHERE 		po.productid = '" . (int)$productid . "' 
							AND od.languageid = '" . $this->config->get('config_languageid') . "' 
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
									AND ovd.languageid = '" . $this->config->get('config_languageid') . "' 
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
					'optionid'            => $product_option['optionid'],
					'name'                 => $product_option['name'],
					'type'                 => $product_option['type'],
					'product_option_value' => $product_option_value_data,
					'required'             => $product_option['required']
				);				
			} else {
				$product_option_data[] = array(
					'product_option_id' => $product_option['product_option_id'],
					'optionid'         => $product_option['optionid'],
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
	* get total products by optionid
	********************************************/
	public function getTotalProductsByOptionId($optionid){
		$sql = "SELECT COUNT(*) AS total FROM product_option WHERE optionid = '" . (int)$optionid . "'";
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
		 
		$sql .= " WHERE pd.languageid = '" . $this->config->get('config_languageid') . "'";
		 			
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
	
	public function getSubImageByProductId($productid){
		$sql = "SELECT * FROM `product_image` WHERE productid = '" . (int)$productid . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getProductCustomerGroupList(){
		
		$sql = "SELECT 		* 
				FROM		customer_group cg
							LEFT JOIN customer_group_description cgd ON (cg.customer_group_id = cgd.customer_group_id)
				WHERE		languageid = '" . $this->config->get('config_languageid') . "' AND approval <> 0 " . $where ;
		
		$sql .= " ORDER BY sortorder";
		
		$query = $this->db->query($sql);
		return $query->rows;	
	}
	
	public function getProductRewardByProductId($productid){
		$data_product_reward = array();
		
		$sql = "SELECT * FROM `product_reward` WHERE productid = '" . $productid . "'";
		
		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$customer = $this->model_customer_customergroup->getDescriptions($item['customer_group_id']);
				$item['name'] = $customer[$this->config->get('config_languageid')]['name'];
				$data_product_reward[] = $item;
			}	
		}
		
		return $data_product_reward;
	}
	
	public function getProductSpecialByProductId($productid){
		$data_product_special = array();
		
		$sql =  "SELECT * FROM `product_special` WHERE productid = '" . $productid . "'";
		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$customer = $this->model_customer_customergroup->getDescriptions($item['customer_group_id']);
				$item['name'] = $customer[$this->config->get('config_languageid')]['name'];
				$item['date_start'] = $this->date->formatMySQLDate($item['date_start']);
				$item['date_end'] = $this->date->formatMySQLDate($item['date_end']);
				$data_product_special[] = $item;
			}	
		}
		
		return $data_product_special;
	}
	
	public function getProductDiscountByProductId($productid){
		$data_product_discount = array();
		
		$sql =  "SELECT * FROM `product_discount` WHERE productid = '" . $productid . "'";
		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$customer = $this->model_customer_customergroup->getDescriptions($item['customer_group_id']);
				$item['name'] = $customer[$this->config->get('config_languageid')]['name'];
				$item['date_start'] = $this->date->formatMySQLDate($item['date_start']);
				$item['date_end'] = $this->date->formatMySQLDate($item['date_end']);
				$data_product_discount[] = $item;
			}	
		}
		
		return $data_product_discount;
	}
	
	public function getProductOptionByProductId($productid){
		$data_product_option = array();
		
		$sql = "SELECT * FROM `product_option` WHERE productid = '" . $productid . "'";
		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$option = $this->getOptionItem($item['optionid']);
				$item['optionname'] = $option['name'];
				$data_product_option[] = $item;
			}
		}
		
		return $data_product_option;
		
	}
	
	public function getOptionItem($optionid){
		$sql = "SELECT 		* 
				FROM 		`option` o
							LEFT JOIN `option_description` od ON (o.optionid = od.optionid)  
				WHERE 		o.optionid = '" . $optionid . "' 
							AND od.languageid = '" . $this->config->get('config_languageid') . "'";	
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getOptionValueByOptionid($productid, $product_option_id){
		$data_option_value = array();
		$productid = $this->db->escape(@$productid);
		$product_option_id = $this->db->escape(@$product_option_id);
		
		$sql = "SELECT		*
				FROM		`product_option_value` pov
				WHERE		productid = '" . (int)$productid . "' AND product_option_id = '" . $product_option_id . "'";
		$query = $this->db->query($sql);
		//echo $sql;
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$option_value = $this->getOptionValueDescription($item['option_value_id']);
				$data_option_value[$item['option_value_id']] = $item;
				$data_option_value[$item['option_value_id']]['name'] = $option_value['name'];
			}
		}
		
		return $data_option_value;
	}
	
	public function getListOptionValue($where = ''){
		$data_option_value = array();
		
		$sql = "SELECT		*
				FROM		`option_value` ov WHERE 1=1 " . $where;
		$query = $this->db->query($sql);
		//echo $sql;
		if(count($query->rows) > 0){
			foreach($query->rows as $item){
				$option_value = $this->getOptionValueDescription($item['option_value_id']);
				$data_option_value[$item['option_value_id']] = $item;
				$data_option_value[$item['option_value_id']]['name'] = $option_value['name'];
			}
		}
		
		return $data_option_value;
	}
	
	public function getOptionValueDescription($option_value_id){
		$sql = "SELECT 		*
				FROM		`option_value` ov
							LEFT JOIN `option_value_description` ovd ON (ov.option_value_id = ovd.option_value_id)
				WHERE		ov.option_value_id = '" . $option_value_id . "' AND languageid = '" .  $this->config->get('config_languageid') . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	
	public function delete($productid){
		$this->db->query("DELETE FROM `product` WHERE productid = '" . $productid . "'");
		//$this->db->query("DELETE FROM `product_addon` WHERE productid = '" . $productid . "'");	
		$this->db->query("DELETE FROM `product_attribute` WHERE productid = '" . $productid . "'");
		$this->db->query("DELETE FROM `product_attribute_description` WHERE productid = '" . $productid . "'");
		$this->db->query("DELETE FROM `product_description` WHERE productid = '" . $productid . "'");
		//$this->db->query("DELETE FROM `product_discount` WHERE productid = '" . $productid . "'");
		$this->db->query("DELETE FROM `product_image` WHERE productid = '" . $productid . "'");
		//$this->db->query("DELETE FROM `product_option` WHERE productid = '" . $productid . "'");
		//$this->db->query("DELETE FROM `product_option_value` WHERE productid = '" . $productid . "'");
		//$this->db->query("DELETE FROM `product_reward` WHERE productid = '" . $productid . "'");
		//$this->db->query("DELETE FROM `product_site` WHERE productid = '" . $productid . "'");
		//$this->db->query("DELETE FROM `product_special` WHERE productid = '" . $productid . "'");
		$this->db->query("DELETE FROM `advance_search` WHERE objid = '". $productid ."' AND objtype = 'productoption' ");
		$this->db->query("DELETE FROM `url_alias` WHERE value = '" . $productid . "' AND object = 'propertyproduct' ");
	}

}
?>