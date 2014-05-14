<?php 
class ModelCoreGroup extends Model{
	
	public function getList($where = ''){
		$data_products = array();
		
		$sql = "SELECT		*
				FROM		`product` p
							LEFT JOIN product_description pd ON (p.productid = pd.productid)
				WHERE		pd.languageid = '" . $this->config->get('config_languageid') . "' " . $where;	
		$query = $this->db->query($sql);
		
		if(count($query->rows) > 0)
		{
			foreach($query->rows as $item){
				$item['link'] = $this->url->getURL($item['seo_url'], 'product', $item['productid']);
				$data_products[] = $item;
			}
		}
		
		return $data_products;
	}
	
	public function getPageList($where = '', $page = 1, $lastPage = 1, $limit = 10){
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
		$result['products'] = $this->getList($where);
		$result['paginationDisplay'] = $paginationDisplay;
		
		return $result;
	}
}
?>