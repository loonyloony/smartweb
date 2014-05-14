<?php
class ControllerModuleProductoption extends Controller
{

    public function index()
    {
        if ($this->smartweb->sitemapid != "" && $this->smartweb->objectid == "") {
            $this->getList();
            if ($this->config->get('config_shoppingcart') == 1) {
                $this->template = "module/productcart_list.tpl";
            } else {
                $this->template = "module/product_list.tpl";
            }
        } else {
            $this->document->addScript("jquery.simpleslides.js");

            $this->getProduct();
            //$this->smartweb->layouttype = "leftsidebar";
            if ($this->config->get('config_shoppingcart') == 1) {
                $this->template = "module/productcart_detail.tpl";
            } elseif ($this->request->get["print"] == "true") {
                $this->template = "module/product_detail_print.tpl";
            } else {
                $this->template = "module/product_option_detail.tpl";
            }
        }

        $this->id = "content";
        $this->render();
    }

    private function getTags($sitemapid)
    {
        $this->load->model('core/tag');
        $where = "AND sitemapid = '" . $sitemapid . "' AND language = '" . $this->config->get('config_languageid') . "' AND count > 0";
        $this->data['tags'] = $this->model_core_tag->getList($where);
    }

    private function getListMonth($sitemapid)
    {
        //get month list
        $listmonth = $this->model_core_product->getListMonth(" AND sitemapid = '" . $sitemapid . "'", 0, 5);
        foreach ($listmonth as &$item) {
            $item = $this->date->formatMySQLDate($item['date_added'], 'MY', "/");
        }
        $this->data['listmonth'] = $listmonth;

    }

    private function getListManArea()
    {
        //get month list
        $listManArea = $this->model_core_product->getListManArea("");
        $this->data['listManArea'] = $listManArea;

    }


    private function getList()
    {

        $this->load->model("core/product");
        //sitemap
        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];

        $where = "";

        // get information
        $this->load->model("core/media");
        $this->data['media_info'] = $this->model_core_media->get1Item(" AND `refersitemap` LIKE '%[" . $this->smartweb->sitemap['sitemapid'] . "%'");

        // get tags
        $this->getTags($this->smartweb->sitemap['sitemapid']);
        $this->getListMonth($this->smartweb->sitemap['sitemapid']);
        $this->getListManArea();

        //pagination
        $page = $this->request->get['page'];


        if (isset($page)) {
            $page = preg_replace('#[^0-9]#i', '', $page);
        } else {
            $page = 1;
        }
        //filter tag, month, price
        $tag = rawurldecode($this->request->get['tag']);
        $date = rawurldecode($this->request->get['date']);

        $where = " AND pd.tag LIKE '%" . $tag . "%' ";
        if ($date != "") {
            $where .= "AND DATE_FORMAT(date_added, '%m/%Y') = '" . $date . "' ";
        }

        // filter by area
        if ($this->request->get['area'] != "") {
            $value = rawurldecode($this->request->get['area']);
            $where .= " AND pm.area LIKE '%" . $value . "%' ";
        }
        //filter by manufacturerid
        if ($this->request->get['manufacturerid'] != "") {
            $value = $this->request->get['manufacturerid'];
            $where .= " AND pm.manufacturerid = '" . $value . "'";
        }
        if ($this->request->get['price'] != "" && $this->request->get['price'] == 'price_e') {
            $where .= " AND if(p.saleoff <> 0,p.saleoff <>0 and p.saleoff <= 50,p.price <= 50)";
        }
        if ($this->request->get['price'] != "" && $this->request->get['price'] == 'price_f') {
            $where .= " AND if(p.saleoff <> 0,p.saleoff > 50 and p.saleoff <= 100,p.price > 50 and p.price <= 100)";
        }
        if ($this->request->get['price'] != "" && $this->request->get['price'] == 'price_g') {
            $where .= " AND if(p.saleoff <> 0,p.saleoff > 100,p.price > 100)";
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

        $arrayOfProduct = $this->model_core_product->getList($where);


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
            $where .= " ORDER BY p.sortorder ASC, p.date_added DESC ";
        }

        //get total records
        $this->data['count'] = count($arrayOfProduct);

        //This is where we set how many database items to show on each page
        $itemsPerPage = 12;
        if (SKINID == "eflora") {
            $itemsPerPage = 1000;
        } elseif (SKINID == "mesushop") {
            $itemsPerPage = 18;
        } elseif (SKINID == "mstore" || SKINID == "hatomex") {
            $itemsPerPage = 20;
        } elseif (SKINID == "amy") {
            $itemsPerPage = 15;
        } elseif (SKINID == "tphone") {
            $itemsPerPage = 18;
        }


        // Get the value of the last page in the pagination result set
        $lastPage = ceil($this->data['count'] / $itemsPerPage);
        $result = $this->model_core_product->getPageList($where, $page, $lastPage, $itemsPerPage);

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

    private function getProduct()
    {
        $this->load->model("core/product");

        $this->data['product'] = $this->model_core_product->getItem($this->smartweb->objectid);

        $arrProductOption = $this->model_core_product->getListOptionByProductId($this->smartweb->objectid);

        if (count($arrProductOption) > 0) {
            foreach ($arrProductOption as $item) {
                $item['product_option_value'] = $this->model_core_product->getListOptionValueByProductIdandOptionId($this->smartweb->objectid, $item['optionid']);
                $this->data['product_option'][] = $item;
            }
        }

        /*echo "<pre>";
        print_r($this->data['product_option']);
        echo "</pre>";*/
        // get parent url
        $this->load->model("core/sitemap");
        $parent_link = $this->model_core_sitemap->getItem($this->data['product']['sitemapid']);
        $pageURL = $this->url->getURL($parent_link['seo_url'], 'sitemap', $parent_link['sitemapid']);
        $vars = parse_url($pageURL);
        parse_str($vars['query'], $query);
        unset($query['tag']);
        unset($query['date']);
        $vars['query'] = http_build_query($query);
        $urlnofilter = $vars['scheme'] . "://" . $vars['host'] . ":" . $vars['port'] . $vars['path'];
        if ($vars['query']) {
            $urlnofilter .= "?" . $vars['query'] . "&";
        } else {
            $urlnofilter .= "?";
        }
        $this->data['urlnofilter'] = $urlnofilter;

        // get tags
        $this->getTags($this->data['product']['sitemapid']);
        $this->getListMonth($this->data['product']['sitemapid']);

        //other products

        if (SKINID == "mesushop") {
            $this->data['products'] = $this->model_core_product->getList(" AND p.productid <> '" . $this->smartweb->objectid . "' ORDER BY p.date_added DESC Limit 0,12 ");
        } else {
            $this->data['products'] = $this->model_core_product->getList(" AND p.productid <> '" . $this->smartweb->objectid . "' ORDER BY p.date_added DESC Limit 0,6 ");
        }

        /************************************
         * config
         ************************************/

        //set page title
        if ($this->data['product']['meta_title'] == "") {
            $this->document->setTitle($this->data['product']['name']);
        } else {
            $this->document->setTitle($this->data['product']['meta_title']);
        }

        //meta tag
        $meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'] . " " . $this->data['product']['metadescription'];
        $this->document->setDescription($meta_description);
        $meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'] . " " . $this->data['product']['metadescription'];
        $this->document->setKeywords($meta_keywords);

        //link
        $this->document->addLink($this->url->getURL($this->data['product']['seo_url'], 'productoption', $this->data['product']['productid']));

        //OG
        $og_title = $this->data['product']['name'];
        $og_url = $this->url->getURL($this->data['product']['seo_url'], 'productoption', $this->data['product']['productid']);
        $og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->data['product']['image'];
        $og_summary = $this->data['product']['summary'];
        $og_description = $this->string->getTextLength($this->data['product']['description'], 0, 100);
        $og_publicdate = str_replace("-", "/", $this->data['product']['date_added']);
        $og_revisiondate = str_replace("-", "/", $this->data['product']['date_modified']);
        $this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);

    }

    public function getSummaryProduct()
    {
        $this->load->model("core/product");

        $this->data['product'] = $this->model_core_product->getItem($this->request->get['productid']);
        $this->data['product_attr'] = $this->model_core_product->getListAtt($this->request->get['productid']);
        $this->data['product_manu'] = $this->model_core_product->getManu($this->data['product']['manufacturerid']);

        // get parent url
        $this->load->model("core/sitemap");
        $parent_link = $this->model_core_sitemap->getItem($this->data['product']['sitemapid']);
        $pageURL = $this->url->getURL($parent_link['seo_url'], 'sitemap', $parent_link['sitemapid']);
        $vars = parse_url($pageURL);
        parse_str($vars['query'], $query);
        unset($query['tag']);
        unset($query['date']);
        $vars['query'] = http_build_query($query);
        $urlnofilter = $vars['scheme'] . "://" . $vars['host'] . ":" . $vars['port'] . $vars['path'];
        if ($vars['query']) {
            $urlnofilter .= "?" . $vars['query'] . "&";
        } else {
            $urlnofilter .= "?";
        }
        $this->data['urlnofilter'] = $urlnofilter;

        // get tags
        $this->getTags($this->data['product']['sitemapid']);
        $this->getListMonth($this->data['product']['sitemapid']);

        //get Customer Info
        $this->load->model('customer/customer');
        $this->data['cus_info'] = $this->model_customer_customer->getItem($this->member->getId());


        $this->template = "module/product_summary.tpl";

        $this->id = "content";
        $this->render();
    }

}

?>