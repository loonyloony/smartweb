<?php
	class ControllerCommonUpload extends Controller
	{
		public function index()
		{
			if($this->member->getId() == '') {
				$this->data['user_upload'] = 'guest';
			} else {
				$this->data['user_upload'] = 'user'.$this->member->getId();
			}
			
			if(SKINID == 'singapore') {
				
				$this->load->model("property/product");
				
				$productid = $this->request->get['productid'];
				if($productid != "") {
					$upload_files = "";
					$productEdit = $this->model_property_product->getItem($productid);
					if(count($productEdit) > 0) {
						if($productEdit['image'] != "") {
							$upload_files = str_replace($this->data['user_upload']."/", "", $productEdit['image']).";";	
						}
					}
					$arrProductImages = $this->model_property_product->getProductImages($productid);
					
					foreach($arrProductImages as $image) {
						$upload_files .= str_replace($this->data['user_upload']."/", "", $image['image']).";";
					}
					$this->data['product_upload_files'] = $upload_files;
				}
			}
			
			$this->id="upload";
			$this->template="common/upload.tpl";
			$this->render();
		}
	}
?>