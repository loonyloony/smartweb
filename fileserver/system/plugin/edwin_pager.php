<?php 
class Edwin_Pager 
{
	var $php_self; //Main URL of website
	var $query_string;
	var $rows_per_page = 10; //Number of records to display per page
	var $total_rows = 0; //Total number of rows returned by the query
	var $links_per_page = 5; //Number of links to display per page
	var $append = ""; //Paremeters to append to pagination links
	var $sql = "";
	var $debug = false;
	var $db;
	var $data = array();
	var $language;
	var $page = 1; //Current page
	var $max_pages = 0; //No. of Last page
	var $offset = 0; //Limit offset, rows_per_page
	
	var $default_rpp = 15;
	
	function Edwin_Pager($sql, $rows_per_page = 15, $links_per_page = 10, $defaultorder = "", $append = "") {
		$this->db = Registry::get('db');
		$this->language = Registry::get('language');
		
		$this->sql = $sql.$this->createSearchQuery($defaultorder);
		$this->rows_per_page = (int)$rows_per_page;
		if($this->rows_per_page == 0)
		{
			$this->rows_per_page = $this->default_rpp;	
		}
		
		if (intval($links_per_page ) > 0) {
			$this->links_per_page = (int)$links_per_page;
		} else {
			$this->links_per_page = 5;
		}
		
		//$this->php_self = htmlspecialchars($_SERVER['PHP_SELF'] );
		if (isset($_GET['page'] )) {
			$this->page = intval($_GET['page'] );
		}
		$this->getURLDefault();
		
	}
	
	function paginate() {
		//Find total number of rows
		$all_rs = $this->db->query($this->sql );
		$this->total_rows = $all_rs->num_rows;
		
		//Return FALSE if no rows found
		if ($this->total_rows == 0) {
			if ($this->debug)
				echo "Query returned zero rows.";
			return FALSE;
		}
		
		//Max number of pages
		$this->max_pages = ceil($this->total_rows / $this->rows_per_page );
		if ($this->links_per_page > $this->max_pages) {
			$this->links_per_page = $this->max_pages;
		}
		
		//Check the page value just in case someone is trying to input an aribitrary value
		if ($this->page > $this->max_pages || $this->page <= 0) {
			$this->page = 1;
		}
		
		//Calculate Offset
		$this->offset = $this->rows_per_page * ($this->page - 1);
		
		//Fetch the required result set
		$rs = $this->db->query($this->sql . " LIMIT {$this->offset}, {$this->rows_per_page}" );
		$this->data = $rs->rows;
	}
	
	function getDataset()
	{
		return $this->data;	
	}
	/**
	 * @param string $tag Text string to be displayed as the link. Defaults to 'First'
	 */
	function renderFirst($tag = '|<') {
		if ($this->total_rows == 0)
			return FALSE;
		
		if ($this->page == 1) {
			return "<span>$tag </span>";
		} else {
			return '<a href="' . $this->php_self . '?page=1&rpp='.$this->rows_per_page. '&' . $this->append . '">' . $tag . '</a> ';
		}
	}
	
	function renderLast($tag = '>|') {
		if ($this->total_rows == 0)
			return FALSE;
		
		if ($this->page == $this->max_pages) {
			return "<span>$tag </span>";
		} else {
			return ' <a href="' . $this->php_self . '?page=' . $this->max_pages . '&rpp='.$this->rows_per_page.'&' . $this->append . '">' . $tag . '</a>';
		}
	}
	
	function renderNext($tag = '&gt;&gt;') {
		if ($this->total_rows == 0)
			return FALSE;
		
		if ($this->page < $this->max_pages) {
			return '<a href="' . $this->php_self . '?page=' . ($this->page + 1) . '&rpp='.$this->rows_per_page.'&' . $this->append . '">' . $tag . '</a>';
		} else {
			return "<span>$tag </span>";
		}
	}
	
	function renderPrev($tag = '&lt;&lt;') {
		if ($this->total_rows == 0)
			return FALSE;
		
		if ($this->page > 1) {
			return ' <a href="' . $this->php_self . '?page=' . ($this->page - 1) . '&rpp='.$this->rows_per_page.'&' . $this->append . '">' . $tag . '</a>';
		} else {
			return "<span>$tag </span>";
		}
	}
	
	function renderNav($prefix = '<span class="edwin_page_link">', $suffix = '</span>') {
		if ($this->total_rows == 0)
			return FALSE;
		
		$batch = ceil($this->page / $this->links_per_page );
		$end = $batch * $this->links_per_page;
		if ($end == $this->page) {
			//$end = $end + $this->links_per_page - 1;
			$end = $end + ceil($this->links_per_page/2);
		}
		if ($end > $this->max_pages) {
			$end = $this->max_pages;
		}
		$start = $end - $this->links_per_page + 1;
		$links = '';
		
		for($i = $start; $i <= $end; $i ++) {
			if ($i == $this->page) {
				$links .= $prefix . " $i " . $suffix;
			} else {
				$links .= ' '  . '<a href="' . $this->php_self . '?page=' . $i . '&rpp='.$this->rows_per_page.'&' . $this->append . '">' . $i . '</a>'  . ' ';
			}
		}
		
		return $links;
	}
	
	function renderFullNav() {
		return $this->renderFirst() . $this->renderPrev() . $this->renderNav() . $this->renderNext() . $this->renderLast();
	}
	
	function renderRowsPerPage($prefix = "<span class=\"paginate\">Số dòng mỗi trang:</span>")
	{
		$items = '';  
        $rpp_array = array(10,15,25,50,100);  
        foreach($rpp_array as $rpp_opt)
		{
			$items .= ($rpp_opt == $this->rows_per_page) ? "<option selected value=\"$rpp_opt\">$rpp_opt</option>\n":"<option value=\"$rpp_opt\">$rpp_opt</option>\n";
		}      
        /*return $prefix."<select class=\"paginate ben-textbox-framework\" onchange=\"window.location='".$this->php_self."?page=1&rpp='+this[this.selectedIndex].value+'&".$this->append."';return false\">$items</select>\n";  */
		return $prefix."<select id=\"rppoption \" class=\"paginate ben-textbox-framework\" onchange=\"postform()\">$items</select>\n";
		/*return $prefix."<select class=\"paginate ben-textbox-framework\" name=\"rpp\">$items</select>\n";*/
	}
	
	function renderJumpMenu($prefix = "<span class=\"edwin_paginate\">Trang:</span>")
	{
		if ($this->total_rows == 0)
			return FALSE;

		$option = "";
		for($i=1;$i<=$this->max_pages;$i++)  
        {  
            $option .= ($i==$this->page) ? "<option value=\"$i\" selected>$i</option>\n":"<option value=\"$i\">$i</option>\n";  
        }  
        return "$prefix <select class=\"edwin_paginate ben-textbox-framework\" onchange=\"window.location='".$this->php_self."?page='+this[this.selectedIndex].value+'&rpp=".$this->rows_per_page."&".$this->append."';return false\">$option</select>\n";  
	}
	
	function setDebug($debug) {
		$this->debug = $debug;
	}
	
	private function getURLDefault()
	{
		$link = $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		$link = str_replace("www.", "", $link);
		
		$http_server = str_replace('http://',"",HTTP_SERVER);
		$http_server = str_replace('www.',"",$http_server);
		
		$link = str_replace($http_server, "", $link);
		$link = str_replace($http_server, "", $link);
		
		$pos = strpos($link, "?");
		if($pos > 0)
		{
			$this->php_self = substr($link,0,$pos);
		
			$append = str_replace($this->php_self."?","",$link);
			$pagetext = "page=".$this->page."&";
			$rpptext = "rpp=".$this->rows_per_page."&";
			$append = str_replace($pagetext, "", $append);
			$append = str_replace($rpptext, "", $append);
			$this->append = $append;
		}
		else
		{
			$this->php_self = $link;
			$this->append = "";
		}
			
	}
	
	private function createSearchQuery($defaultorder)
	{
		$this->date = Registry::get('date');
		$this->db = Registry::get('db');
		
		$where = "";
		if (isset($_GET['datefield']) && $_GET['datefield'] != "") {
			$datefield = $_GET['datefield'];
			
			if (isset($_GET['datefrom'] ) && $_GET['datefrom'] != "") {
				$datefrom = $this->date->formatMySQLDateQuery(urldecode($_GET['datefrom']));
				$where .= "  AND $datefield >= '$datefrom' ";
			}
			
			if (isset($_GET['dateto']) && $_GET['dateto'] != "") {
				$dateto = $this->date->formatMySQLDateQuery(urldecode($_GET['dateto']));
				$where .= " AND $datefield <= '$dateto' ";
			}
		}
		
		if (isset($_GET['textfield']) && $_GET['textfield'] != "") {
			$textfield = $_GET['textfield'];
			if (isset($_GET['text'] )) {
				$text = $this->db->escape(urldecode($_GET['text']));
				$where .= " AND $textfield like '%{$text}%' ";
			}
		}
		
		if (isset($_GET['numbfield'] ) && $_GET['numbfield'] != "") {
			$numbfield = $_GET['numbfield'];
			if (isset($_GET['numb'] )) {
				$numb = intval($_GET['numb']);
				$numbtype = urldecode($_GET['numbtype']);
				$where .= " AND $numbfield $numbtype {$numb} ";
			}
		}
		
		if (isset($_GET['orderby'] ) && $_GET['orderby'] != "") {
			$orderby = $_GET['orderby'];
			$ordertype = $_GET['ordertype'];
			$where .= " ORDER BY $orderby $ordertype ";
		}
		else
		{
			$where .= $defaultorder;
		}
		
		return $where;
		
	}
}

?>