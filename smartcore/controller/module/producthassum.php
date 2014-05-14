<?php
class ControllerModuleProducthassum extends Controller
{

    public function index()
    {
        $this->getList();
        $this->template = "module/product_list.tpl";
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

    private function getListManArea($where)
    {
        //get month list
        $listManArea = $this->model_core_product->getListManArea($where, true);
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
        $this->getListManArea(" AND pd.summary != '' ");

        //pagination
        $page = $this->request->get['page'];


        if (isset($page)) {
            $page = preg_replace('#[^0-9]#i', '', $page);
        } else {
            $page = 1;
        }
        //filter tag, month, price

        //$tag = rawurldecode($this->request->get['tag']);
        //$date = rawurldecode($this->request->get['date']);

        $where = (" AND pd.summary != '' ");
        if ($date != "") {
            $where .= "AND DATE_FORMAT(date_added, '%m/%Y') = '" . $date . "' ";
        }

        // filter by area
        if ($this->request->get['area'] != "") {
            $value = rawurldecode($this->request->get['area']);
            $where .= " AND pm.area LIKE '%" . $value . "%' ";
        }
        $arrayOfProduct = $this->model_core_product->getList($where, true);


        $filter = $this->request->get['filter'];

        $order = $this->request->get['order'];

        if ($filter == "date_added") {
            $filter = "p.date_added";
        }
        if ($filter == "sortorder") {
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


        //get total records
        $this->data['count'] = count($arrayOfProduct);

        //This is where we set how many database items to show on each page
        $itemsPerPage = 12;
        if (SKINID == "eflora") {
            $itemsPerPage = 1000;
        } elseif (SKINID == "mesushop") {
            $itemsPerPage = 18;
        } elseif (SKINID == "mstore") {
            $itemsPerPage = 20;
        }

        // Get the value of the last page in the pagination result set
        $lastPage = ceil($this->data['count'] / $itemsPerPage);
        $result = $this->model_core_product->getPageList($where, $page, $lastPage, $itemsPerPage, true);

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