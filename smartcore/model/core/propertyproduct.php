<?php 
class ModelCorePropertyproduct extends Model{
	
	public function getList($where = '', $separate = true, $showOnly = true){
		$data_products = array();

		$sql = "SELECT		p.*,pd.*, pm.manufacturerid pmid, pm.name pmname, pm.area pmarea, pm.seo_url pm_seo_url, pt.name as propertytypename, 
							rt.name as roomtypename, z.zonename as zonename
				FROM		`product` p
							LEFT JOIN product_description pd ON (p.productid = pd.productid)
							LEFT JOIN product_manufacturer pm ON (p.manufacturerid = pm.manufacturerid)
							LEFT JOIN `propertytype` pt ON (p.propertytypeid = pt.propertytypeid)
							LEFT JOIN `zone` z ON (p.zoneid = z.zoneid)
							LEFT JOIN `roomtype` rt ON (p.roomtypeid = rt.roomtypeid)
				WHERE		pd.languageid = '" . $this->config->get('config_languageid') . "' ";
		//if show post only, only get post with status = 1, else get all except deleted
		if($showOnly) {
			$sql .= " AND p.status = 1 ";
		} else {
			$sql .= " AND p.status != 3 ";
		}
		$sql .= $where;
						
		$query = $this->db->query($sql);
		//load items for search sitemap
		if(count($query->rows)){
			foreach($query->rows as $item){
				//load items for search sitemap
				$item['link'] = $this->url->getURL($item['seo_url'], 'propertyproduct', $item['productid']);
				if($separate == true) {
					if($item['feature'] == "sale")
					{
						$data_products['sale'][] = $item;
					}
					if($item['feature'] == "rent")
					{
						$data_products['rent'][] = $item;
					}
				} else {
					$data_products[] = $item;
				}
			}
		}
		
		return $data_products;
	}
	
	public function countProduct($where = ''){
		$data_products = array();

		$sql = "SELECT		count(*) AS cnt
				FROM		`product` p
							LEFT JOIN product_description pd ON (p.productid = pd.productid)
				WHERE		pd.languageid = '" . $this->config->get('config_languageid') . "' AND p.status != 3 ".$where;
						
		$query = $this->db->query($sql);
		$result = $query->row;
		return $result['cnt'];
	}
	
	public function getPropertyType()
	{
		$sql = "SELECT * FROM `propertytype` ORDER BY name ASC";
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getRoomType()
	{
		$sql = "SELECT * FROM `roomtype`";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getDistrict($countryname)
	{
		$sql = "SELECT * FROM `country` c LEFT JOIN `zone` z ON (c.countryid = z.countryid) WHERE countryname like '%" . $countryname . "%' ORDER BY zonename ASC";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getPageList($where = '', $page = 1, $lastPage = 1, $limit = 10, $filter='', $noSitemap = false){
		$result = array();

		if($page <= 1){
			$page = 1;
		}else{
			if($page > $lastPage){
				$page = $lastPage;
			}
		}

		$centerPages = "";
		$link = $this->smartweb->weburl;
		$sub1 = $page - 1;
		$sub2 = $page - 2;
		$add1 = $page + 1;
		$add2 = $page + 2;

		if($this->request->get['__seourl__'] != ""){
			if ($page == 1) {
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . $filter . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . $filter . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub2 . $filter .'">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . $filter .'">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . $filter .'">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add2 . $filter .'">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . $filter .'">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . $filter .'">' . $add1 . '</a></li>';
			}
		} else {
			if ($page == 1) {
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . $filter .'">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . $filter .'">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub2 . $filter .'">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . $filter .'">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . $filter .'">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add2 . $filter .'">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . $filter .'">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . $filter .'">' . $add1 . '</a></li>';
			}
		}

		// Initialize the pagination output variable
		$paginationDisplay = "";
		// This code runs only if the last page variable is ot equal to 1, if it is only 1 page we require no paginated links to display
		if ($lastPage != "1"){
			// This shows the user what page they are on, and the total number of pages
			//$paginationDisplay .= 'Trang <strong>' . $page . '</strong> trên tổng ' . $lastPage. '&nbsp; trang &nbsp;  &nbsp; ';
			
			$paginationDisplay .= '<ul>';
			// If we are not on page 1 we can place the Back button
			if ($page != 1) {
				$previous = $page - 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '?page=' . $previous . $filter .'"><span> &lt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '&page=' . $previous . $filter .'"><span> &lt; </span></a></li> ';
				}
			}
			// Lay in the clickable numbers display here between the Back and Next links
			$paginationDisplay .= $centerPages;
			// If we are not on the very last page we can place the Next button
			if ($page != $lastPage) {
				$nextPage = $page + 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '?page=' . $nextPage . $filter .'"><span> &gt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '&page=' . $nextPage . $filter .'"><span> &gt; </span></a></li> ';
				}
			}
			$paginationDisplay .= '</ul>';
		}

		$where .= ' LIMIT ' .($page - 1) * $limit .',' . $limit;
		
		//result
		$result['products'] = $this->getList($where, $noSitemap);
		$result['paginationDisplay'] = $paginationDisplay;
		
		return $result;
	}
	
	public function getItem($productid){
		$sql = "SELECT		*, pd.name as name, pt.name as propertyname, rt.name as roomtypename
				FROM		`product` p
							LEFT JOIN product_description pd ON (p.productid = pd.productid)
							LEFT JOIN `propertytype` pt ON (p.propertytypeid = pt.propertytypeid)
							LEFT JOIN `zone` z ON (p.zoneid = z.zoneid)
							LEFT JOIN `roomtype` rt ON (p.roomtypeid = rt.roomtypeid)
							LEFT JOIN `product_additional` pa ON (p.productid = pa.productid)

				WHERE		p.productid = '" . $productid . "'
							AND p.status = 1
							AND pd.languageid = '" . $this->config->get('config_languageid') . "' ";
		
		$query = $this->db->query($sql);
		
		$query->row['product_image'] = $this->getProductImage($productid);
		//add main picture into product_image
		array_unshift($query->row['product_image'], array('image' => $query->row['image']));
		
		return $query->row;	
	}
	
	public function getItemBasic($productid){
		$sql = "SELECT		*
				FROM		`product` p
				WHERE		p.productid = '" . $productid . "' ";
		
		$query = $this->db->query($sql);
		return $query->row;	
	}
	
	public function getProductAdditional($productid){
		$sql = "SELECT 		*, pa.value as productadditionalvalue
				FROM 		`product_additional` pa 
							LEFT JOIN `additional_source` ads ON(pa.additionalsourceid = ads.additionalsourceid)
							LEFT JOIN `additional_source_description` asd ON(pa.additionalsourceid = asd.additionalsourceid)
				WHERE 		productid = '" . $productid . "' AND asd.languageid = '" . $this->config->get('config_languageid') . "' ORDER BY ads.sortorder ASC";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getProductImage($productid){
		$sql = "SELECT * FROM `product_image` WHERE productid = '" . $productid . "' ORDER BY sortorder ASC";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getProductFiles($productid){
		$sql = "SELECT 		* 
				FROM		product_file pf
							LEFT JOIN product_file_description pfd ON (pf.productfileid = pfd.productfileid)
				WHERE		pfd.languageid = '" . $this->config->get('config_languageid') . "' 
							AND pf.productid = '" . $productid . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function updateStatus($productid, $status){
		$productid = (int)$this->db->escape(@$productid);
		$status = $this->db->escape(@$status);
		
		$field = array(
						'`status`'
					);			
		$value = array(
						$status,
					);
		$where = " productid = '" . $productid . "'";
		$this->db->updateData("product", $field, $value, $where);
	}
	
}
?>