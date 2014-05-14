<?php
class ControllerModuleSearchproduct extends Controller
{

    public function index()
    {
        $keyword = trim($this->request->get['keyword']);	
		$manufacid = trim($this->request->get['manufacid']);
		
        if ($keyword != "" || $manufacid != "") {
            $this->getList();
        } elseif($keyword == "" && $manufacid == "") {			
            $this->data['empty_key'] = 'You have to enter keyword';
        }
        $this->template = "module/search_product_list.tpl";
        $this->id = "content";
        $this->render();
    }

    private function getList()
    {

        $this->load->model("core/product");
        //sitemap
        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
        $where = "";
        //pagination
        $page = $this->request->get['page'];

        //keyword for search
        $keyword = trim($this->request->get['keyword']);
		$manufacid = trim($this->request->get['manufacid']);
        $this->data['now_key'] = $keyword;

        //get list id from attributes

        $list_id_att = $this->model_core_product->getListIdByAtt(" AND pad.description LIKE '%" . $keyword . "%'");
        $str_id = "";
        foreach ($list_id_att as $key => $item) {
            if ($key == 0) {
                $str_id .= $item['id'];
            } else {
                $str_id .= "," . $item['id'];
            }
        }

        if (isset($page)) {
            $page = preg_replace('#[^0-9]#i', '', $page);
        } else {
            $page = 1;
        }
		if (SKINID == "dongduong")
		{
			if($keyword != "" && $manufacid != "")
				 $where .= " AND (pd.name LIKE '%" . $keyword . "%') AND (pm.name = '" . $manufacid . "')";
			elseif($keyword != "" && $manufacid == "")
				 $where .= " AND (pd.name LIKE '%" . $keyword . "%')";
			elseif($keyword == "" && $manufacid != "")
				 $where .= " AND (pm.name = '" . $manufacid . "')";
		}
		else{
			$where .= " AND (pd.tag LIKE '%" . $keyword . "%' OR pd.name LIKE '%" . $keyword . "%' OR pd.summary LIKE '%" . $keyword . "%' OR pd.description LIKE '%" . $keyword . "%') OR (pm.name = '" . $manufacid . "')";
        }
	
		
		if ($str_id != "") {
            $where .= " OR pd.productid IN (" . $str_id . ") ";
        }
        if ($this->request->get['price'] != "" && $this->request->get['price'] == 'price_a') {
            $where .= " AND if(p.saleoff <> 0,p.saleoff <>0 and p.saleoff <100,p.price < 100)";
        }
        if ($this->request->get['price'] != "" && $this->request->get['price'] == 'price_b') {
            $where .= " AND if(p.saleoff <> 0,p.saleoff >= 100 and p.saleoff <= 300,p.price >= 100 and p.price <= 300)";
        }
        if ($this->request->get['price'] != "" && $this->request->get['price'] == 'price_c') {
            $where .= " AND if(p.saleoff <> 0,p.saleoff >= 300 and p.saleoff <= 500,p.price >= 300 and p.price <= 500)";
        }
        if ($this->request->get['price'] != "" && $this->request->get['price'] == 'price_d') {
            $where .= " AND if(p.saleoff <> 0,p.saleoff >= 500,p.price >= 500)";
        }
        $arrayOfProduct = $this->model_core_product->getList($where, true);
        //get total records
        $this->data['count'] = count($arrayOfProduct);


        $filter = $this->request->get['filter'];

        $order = $this->request->get['order'];

        if ($filter == "date_added") {
            $filter = "p.date_added";
        }
        if ($filter == "sort_order") {
            $filter = "p.sortorder";
        }
        if ($filter == "price") {
            $filter = "p.price";
        }
        if ($filter == "productname") {
            $filter = "pd.name";
        }

        $arrayOfFilter = array('p.date_added', 'p.sortorder', 'p.price', 'pd.name');

        if (in_array($filter, $arrayOfFilter)) {
            $where .= " ORDER BY " . $filter . " " . $order . " ";
        } else {
            $where .= " ORDER BY date_added DESC ";
        }

        //This is where we set how many database items to show on each page
        $itemsPerPage = 12;
        if (SKINID == "eflora") {
            $itemsPerPage = 1000;
        } elseif (SKINID == "mesushop") {
            $itemsPerPage = 18;
        } elseif (SKINID == "mstore") {
            $itemsPerPage = 20;
        } elseif (SKINID == "tphone") {
            $itemsPerPage = 18;
        }

        // Get the value of the last page in the pagination result set
        $lastPage = ceil($this->data['count'] / $itemsPerPage);
        $result = $this->model_core_product->getPageListSearch($where, $page, $lastPage, $itemsPerPage, true, $keyword);

        $this->data['products'] = $result['products'];
        if (count($result['products']) > 0) {
            $this->data['paginationDisplay'] = $result['paginationDisplay'];
        }

        if (SKINID == 'bacvi') {
            $this->load->model("dashboard/weblink");
            $this->data['files'] = $this->model_dashboard_weblink->getListDownloadOfProductModule(" AND link = '" . $this->smartweb->sitemap['sitemapid'] . "' AND addonid = 'downloadmenu'");
        }

        /************************************
         * config
         ************************************/

        //set page title
        if ($this->smartweb->sitemap['sitemap_description']['meta_title'] == "") {
            $this->document->setTitle($this->smartweb->sitemap['sitemap_description']['sitemapname']);
        } else {
            $this->document->setTitle($this->smartweb->sitemap['sitemap_description']['meta_title']);
        }

        //meta tag
        $meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'];
        $this->document->setDescription($meta_description);
        $meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'];
        $this->document->setKeywords($meta_keywords);

        //link
        $this->document->addLink($this->url->getURL($this->smartweb->sitemap['seo_url'], 'sitemap', $this->smartweb->sitemapid));

        //OG
        $og_title = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
        $og_url = $this->url->getURL($this->smartweb->sitemap['seo_url'], 'sitemap', $this->smartweb->sitemapid);
        $og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->smartweb->sitemap['imagepath'];
        $og_summary = $this->smartweb->sitemap['sitemap_description']['summary'];
        $og_description = $this->string->getTextLength($this->smartweb->sitemap['sitemap_description']['description'], 0, 100);
        $og_publicdate = "";
        $og_revisiondate = "";
        $this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);

    }


}

?>