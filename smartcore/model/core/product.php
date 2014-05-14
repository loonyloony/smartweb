<?php 
class ModelCoreProduct extends Model{
	
	public function getList($where = '', $nositemap = false){
		$data_products = array();
		if ($nositemap == true) {
			$sql = "SELECT		p.*,pd.*, pm.manufacturerid pmid, pm.name pmname, pm.area pmarea, pm.seo_url pm_seo_url
					FROM		`product` p
								LEFT JOIN product_description pd ON (p.productid = pd.productid)
								LEFT JOIN product_manufacturer pm ON (p.manufacturerid = pm.manufacturerid)
					WHERE		p.status = 0
								AND pd.languageid = '" . $this->config->get('config_languageid') . "' " . $where;
		} else {
			$sql = "SELECT		p.*,pd.*, pm.manufacturerid pmid, pm.name pmname, pm.area pmarea, pm.seo_url pm_seo_url
					FROM		`product` p
								LEFT JOIN product_description pd ON (p.productid = pd.productid)
								LEFT JOIN product_manufacturer pm ON (p.manufacturerid = pm.manufacturerid)
					WHERE		p.sitemapid = '" . $this->smartweb->sitemapid . "'
								AND p.status = 0
								AND pd.languageid = '" . $this->config->get('config_languageid') . "' " . $where;
		}		
		$query = $this->db->query($sql);
		
		$this->load->model("core/sitemap");
		
		if(count($query->rows) > 0)
		{
			foreach($query->rows as $item){
				$att_sql = "SELECT 		*
						FROM 		product_attribute pa, product_attribute_description pad
						WHERE 		pa.productid = '" . (int)$item['productid'] . "' AND pa.product_attribute_id = pad.product_attribute_id 
						AND pad.languageid = '" . $this->config->get('config_languageid') . "'
						ORDER BY pa.name ASC";
				$att_query = $this->db->query($att_sql);
				foreach ($att_query->rows as $row) {
					$item['attr'][$row['name']] = $row;
				}
				
				$sitemap = $this->model_core_sitemap->getItem($item['sitemapid']);
				$producttype = "";
				switch($sitemap['moduleid'])
				{
					case "module/product":
						$producttype = "product";
						break;
					case "module/productoption":
						$producttype = "productoption";
						break;
				}
				
				
				$item['link'] = $this->url->getURL($item['seo_url'], $producttype, $item['productid']);
				$item['pm_link'] = $this->url->getURL($item['pm_seo_url'], "manufacturer", $item['pmid']);
				$data_products[] = $item;
			}
		}
		
		return $data_products;
	}
	
	public function getProductTop($topsize, $where = '') {
		$sql = "SELECT		p.*, pd.name, pd.summary, pd.description, pd.meta_keyword, pd.meta_description
				FROM		`product` p
							LEFT JOIN product_description pd ON (p.productid = pd.productid AND pd.languageid = '" . $this->config->get('config_languageid') . "' )
				WHERE		p.status = 0 " . $where . " ORDER BY date_modified DESC LIMIT 0," . $topsize;	
	}
	
	public function getGroupList($where = "")
	{
		$data_products = array();
		
		$sql = "SELECT		p.*, pd.name, pd.summary, pd.description, pd.meta_keyword, pd.meta_description
				FROM		`product` p
							LEFT JOIN product_description pd ON (p.productid = pd.productid AND pd.languageid = '" . $this->config->get('config_languageid') . "' )
				WHERE		p.status = 0 " . $where;	
		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0)
		{
			foreach($query->rows as $item){
				$att_sql = "SELECT 		*
						FROM 		product_attribute pa, product_attribute_description pad
						WHERE 		pa.productid = '" . (int)$item['productid'] . "' AND pa.product_attribute_id = pad.product_attribute_id 
						GROUP BY pad.languageid
						ORDER BY pa.name ASC";
				$att_query = $this->db->query($att_sql);
				//$item['attr'] = $att_query->rows;
				//$item['link'] = $this->url->getURL($item['seo_url'], 'product', $item['productid']);
				$data_products[] = $item;
			}
		}
		
		return $data_products;
	}
	
	public function getPageListWithFilter($where = '', $page = 1, $lastPage = 1, $limit = 10, $filter = '', $noSitemap = false){
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
		
		if($filter != '') {
			$link .= $filter;
		}
		
		$paramPage = '?page=';
		if($filter != '') {
			$paramPage = '&page=';
		}
		
		$sub1 = $page - 1;
		$sub2 = $page - 2;
		$add1 = $page + 1;
		$add2 = $page + 2;
		if($this->request->get['__seourl__'] != ""){
			
			if ($page == 1) {
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . $paramPage . $add1 . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . $paramPage . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . $paramPage . $sub2 . '">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . $paramPage . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . $paramPage . $add1 . '">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . $paramPage . $add2 . '">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . $paramPage . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . $paramPage . $add1 . '">' . $add1 . '</a></li>';
			}
		} else {
			if ($page == 1) {
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub2 . '">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add2 . '">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
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
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . $paramPage . $previous . '"><span> &lt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '&page=' . $previous . '"><span> &lt; </span></a></li> ';
				}
			}
			// Lay in the clickable numbers display here between the Back and Next links
			$paginationDisplay .= $centerPages;
			// If we are not on the very last page we can place the Next button
			if ($page != $lastPage) {
				$nextPage = $page + 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . $paramPage . $nextPage . '"><span> &gt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '&page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				}
			}
			$paginationDisplay .= '</ul>';
		}
		
		$where .= 'LIMIT ' .($page - 1) * $limit .',' . $limit;
		
		//result
		$result['products'] = $this->getList($where, $noSitemap);
		$result['paginationDisplay'] = $paginationDisplay;
		
		return $result;
	}
	
	public function getPageList($where = '', $page = 1, $lastPage = 1, $limit = 10, $noSitemap = false){
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
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub2 . '">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add2 . '">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
			}
		} else {
			if ($page == 1) {
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub2 . '">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add2 . '">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
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
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '?page=' . $previous . '"><span> &lt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '&page=' . $previous . '"><span> &lt; </span></a></li> ';
				}
			}
			// Lay in the clickable numbers display here between the Back and Next links
			$paginationDisplay .= $centerPages;
			// If we are not on the very last page we can place the Next button
			if ($page != $lastPage) {
				$nextPage = $page + 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '?page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '&page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				}
			}
			$paginationDisplay .= '</ul>';
		}
		
		$where .= 'LIMIT ' .($page - 1) * $limit .',' . $limit;
		
		//result
		$result['products'] = $this->getList($where, $noSitemap);
		$result['paginationDisplay'] = $paginationDisplay;
		
		return $result;
	}
	
	public function getPageListSearch($where = '', $page = 1, $lastPage = 1, $limit = 10, $noSitemap = false, $key){
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
			$link .= "?key=".$key;
		} else {
			$link .= "&key=".$key;
		}
		
		if ($page == 1) {
			$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
		} else if ($page == $lastPage) {
			$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
			$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
		} else if ($page > 2 && $page < ($lastPage - 1)) {
			$centerPages .= '<li><a href="' . $link . '&page=' . $sub2 . '">' . $sub2 . '</a></li>';
			$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
			$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
			$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
			$centerPages .= '<li><a href="' . $link . '&page=' . $add2 . '">' . $add2 . '</a></li>';
		} else if ($page > 1 && $page < $lastPage) {
			$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
			$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
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
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '?page=' . $previous . '"><span> &lt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '&page=' . $previous . '"><span> &lt; </span></a></li> ';
				}
			}
			// Lay in the clickable numbers display here between the Back and Next links
			$paginationDisplay .= $centerPages;
			// If we are not on the very last page we can place the Next button
			if ($page != $lastPage) {
				$nextPage = $page + 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '?page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '&page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				}
			}
			$paginationDisplay .= '</ul>';
		}
		
		$where .= 'LIMIT ' .($page - 1) * $limit .',' . $limit;
		
		//result
		$result['products'] = $this->getList($where, $noSitemap);
		$result['paginationDisplay'] = $paginationDisplay;
		
		return $result;
	}
	
	
	public function getItem($productid){
		$sql = "SELECT		*
				FROM		`product` p
							LEFT JOIN product_description pd ON (p.productid = pd.productid)
				WHERE		p.productid = '" . $productid . "'
							AND p.status = 0
							AND pd.languageid = '" . $this->config->get('config_languageid') . "' ";
		
		$query = $this->db->query($sql);
		
		$query->row['product_image'] = $this->getProductImage($productid);
		//add main picture into product_image
		array_unshift($query->row['product_image'], array('image' => $query->row['image']));
		
		//product files
		if(SKINID == "huutoan")
		{
			$query->row['product_file'] = $this->getProductFiles($productid);
		}
		
		return $query->row;	
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
	
	public function getListProductAddon($where){
		$sql = "SELECT * FROM `product_addon` WHERE 1 = 1 ".$where;
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getListMonth($where = '' , $from = '', $to = ''){
		$sql = "SELECT 		date_added
				FROM		`product`
				WHERE		status = 0 ".$where."
				GROUP BY DATE_FORMAT(date_added, '%Y%m')
				ORDER BY date_added desc ";

		if($from."" != ''){
			$sql .= " LIMIT ". $from . "," . $to;	
		}
		
		$query = $this->db->query($sql);
							
		return $query->rows;
	}
	
	public function getListManArea($where, $noSitemap = false) {
		if ($noSitemap == false) {
			$sql = "SELECT pm.area
					FROM product p
					LEFT JOIN product_description pd ON p.productid = pd.productid
					INNER JOIN product_manufacturer pm ON p.manufacturerid = pm.manufacturerid
					WHERE		p.sitemapid = '" . $this->smartweb->sitemapid . "'
								AND p.status = 0 ".$where." 
					GROUP BY pm.area";
		} else {
			$sql = "SELECT pm.area
				FROM product p
				LEFT JOIN product_description pd ON p.productid = pd.productid
				INNER JOIN product_manufacturer pm ON p.manufacturerid = pm.manufacturerid
				WHERE p.status = 0 ".$where." 
				GROUP BY pm.area";	
		}
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getManu($manufacturerid) {
		$sql = "SELECT *
				FROM product_manufacturer pm
				LEFT JOIN product_manufacturer_description pmd ON pm.manufacturerid = pmd.manufacturerid
				WHERE		pm.manufacturerid = ".$manufacturerid." ".$where." 
				GROUP BY pm.area";
		$query = $this->db->query($sql);
		$manu = $query->row;
		$manu['link'] = $this->url->getURL($manu['seo_url'], 'manufacturer', $manu['manufacturerid']);
		return $manu;
	}
	
	public function getAllManufacturer($where = '', $nositemap = false){
		if($nositemap == true) {
			$sql = "SELECT *
					FROM product_manufacturer pm WHERE pm.sitemapid = '" . $this->smartweb->sitemapid . "' " . $where;
		} else {
			$sql = "SELECT *
					FROM product_manufacturer pm WHERE 1=1 " . $where;
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getManuPageList($where = '', $page = 1, $lastPage = 1, $limit = 10, $nositemap = false){
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
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub2 . '">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add2 . '">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '?page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '?page=' . $add1 . '">' . $add1 . '</a></li>';
			}
		} else {
			if ($page == 1) {
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
			} else if ($page == $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
			} else if ($page > 2 && $page < ($lastPage - 1)) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub2 . '">' . $sub2 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a> &nbsp;</li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add2 . '">' . $add2 . '</a></li>';
			} else if ($page > 1 && $page < $lastPage) {
				$centerPages .= '<li><a href="' . $link . '&page=' . $sub1 . '">' . $sub1 . '</a></li>';
				$centerPages .= '<li><a class="current"><span>' . $page . '</span></a></li>';
				$centerPages .= '<li><a href="' . $link . '&page=' . $add1 . '">' . $add1 . '</a></li>';
			}
		}
		
		// Initialize the pagination output variable
		$paginationDisplay = "";
		// This code runs only if the last page variable is ot equal to 1, if it is only 1 page we require no paginated links to display
		if ($lastPage != "1"){
			// This shows the user what page they are on, and the total number of pages
			//$paginationDisplay .= 'Trang <strong>' . $page . '</strong> trên tổng ' . $lastPage. '&nbsp; trang &nbsp;  &nbsp; ';
			
			$paginationDisplay .= '<ul class="manufacturer-paging">';
			// If we are not on page 1 we can place the Back button
			if ($page != 1) {
				$previous = $page - 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '?page=' . $previous . '"><span> &lt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="prev" class="prev" title="Prev" href="' . $link . '&page=' . $previous . '"><span> &lt; </span></a></li> ';
				}
			}
			// Lay in the clickable numbers display here between the Back and Next links
			$paginationDisplay .= $centerPages;
			// If we are not on the very last page we can place the Next button
			if ($page != $lastPage) {
				$nextPage = $page + 1;
				if($this->request->get['__seourl__'] != ""){
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '?page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				} else {
					$paginationDisplay .=  '<li><a rel="next" class="next" title="Next" href="' . $link . '&page=' . $nextPage . '"><span> &gt; </span></a></li> ';
				}
			}
			$paginationDisplay .= '</ul>';
		}
		
		$where .= 'LIMIT ' .($page - 1) * $limit .',' . $limit;
		
		//result
		$result['manufacturers'] = $this->getAllManufacturer($where, $nositemap);
		$result['paginationDisplay'] = $paginationDisplay;
		
		return $result;
	}
	
	public function getManufacturer($manufacturerid){
		$sql = "Select * from product_manufacturer where manufacturerid = '" . $manufacturerid . "'";
		$query = $this->db->query($sql);
		return $query->row;
	}
	
	public function getListAtt($productid) {
		$att_sql = "SELECT 		*
				FROM 		product_attribute pa, product_attribute_description pad
				WHERE 		pa.productid = '" . (int)$productid . "' AND pa.product_attribute_id = pad.product_attribute_id 
				AND pad.languageid = '" . $this->config->get('config_languageid') . "'
				ORDER BY pa.name ASC";
		$att_query = $this->db->query($att_sql);
		$result = array();
		foreach ($att_query->rows as $item) {
			$result[$item['name']] = $item;	
		}
		return $result;
	}
	
	public function getListIdByAtt($where) {
		$att_sql = "SELECT 		pa.productid id
				FROM 		product_attribute pa, product_attribute_description pad
				WHERE 		pa.product_attribute_id = pad.product_attribute_id 
				AND pad.languageid = '" . $this->config->get('config_languageid') . "'
				". $where ."
				ORDER BY pa.name ASC";
		$query = $this->db->query($att_sql);
		return $query->rows;
	}
	
	public function getListOptionByProductId($productid){
		$sql = "Select 		* 
				from 		`product_option` po  
							left join `option_description` od on (po.optionid = od.optionid)
							left join `option` o on (po.optionid = o.optionid)
				where 		po.productid = '" . $productid . "' AND od.languageid = '" . $this->config->get('config_languageid') . "'";
				
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getListOptionValueByProductIdandOptionId($productid, $optionid){
		$sql = "Select		*
				from		`product_option_value` pov
							left join `option_value_description` ovd on (pov.option_value_id = ovd.option_value_id)
				where		pov.productid = '" . $productid . "' AND pov.optionid = '" . $optionid . "' AND ovd.languageid = '" . $this->config->get('config_languageid') . "'";
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getItemOptionValueByProductIdandOptionValueId($productid, $option_value_id){
		$sql = "Select 		*, od.name as optionname, ovd.name as optionvaluename
				from 		`product_option_value` pov 
							left join `option_value_description` ovd on (pov.option_value_id = ovd.option_value_id)
							left join `option_description` od on (pov.optionid = od.optionid) 
				where 		pov.productid = '" . $productid . "' AND pov.option_value_id = '" . $option_value_id . "' AND ovd.languageid = '" . $this->config->get('config_languageid') . "'";
		$query = $this->db->query($sql);
		return $query->row;
	}
	
}
?>