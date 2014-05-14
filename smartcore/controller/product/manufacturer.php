<?php
class ControllerProductManufacturer extends Controller
{

    public function index()
    {

        if ($this->smartweb->sitemapid != "" && $this->smartweb->objectid == "") {

            $this->getList();
            $this->template = "module/manufacturer_list.tpl";

        } else {
            //$this->document->addScript("jquery.simpleslides.js");
            $this->getManufacturer();

            //get top another manufacturer 10 items
            $this->load->model("core/product");
            $otherManufacturers = $this->model_core_product->getAllManufacturer('', true);
            $this->data['otherManufacturers'] = $otherManufacturers;

            $this->template = "module/manufacturer_detail.tpl";
        }

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

        if (isset($page)) {
            $page = preg_replace('#[^0-9]#i', '', $page);
        } else {
            $page = 1;
        }
        $this->data['pagecurrent'] = $page;


        //get list manufacturer
        $where .= " AND pm.image != ''";
        $arrayOfManufacturer = $this->model_core_product->getAllManufacturer($where, true);


        $filter = $this->request->get['filter'];
        $order = $this->request->get['order'];

        if ($filter == "name") {
            $filter = "pm.name";
        }

        $arrayOfFilter = array('pm.name');

        if (in_array($filter, $arrayOfFilter)) {
            $where .= " ORDER BY " . $filter . " " . $order . " ";
        } else {
            $where .= " ORDER BY pm.sortorder ASC ";
        }

        //get total records
        $this->data['count'] = count($arrayOfManufacturer);

        //This is where we set how many database items to show on each page
        $itemsPerPage = 12;
        if (SKINID == "fanhanghieu") {
            $itemsPerPage = 15;
        }

        // Get the value of the last page in the pagination result set
        $lastPage = ceil($this->data['count'] / $itemsPerPage);
        $this->data['lastPage'] = $lastPage;

        $result = array();
        $result = $this->model_core_product->getManuPageList($where, $page, $lastPage, $itemsPerPage, true);

        $this->data['manufacturers'] = $result['manufacturers'];
        if (count($result['manufacturers']) > 0) {
            $this->data['paginationDisplay'] = $result['paginationDisplay'];
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


    private function getManufacturer()
    {
        $this->load->model("core/product");

        $manufacturerID = $this->smartweb->objectid;
        $manufacturer = $this->model_core_product->getManu($manufacturerID);
        $this->data['manufacturer'] = $manufacturer;

        /************************************
         * config
         ************************************/

        //set page title
        $this->document->setTitle($this->data['manufacturer']['name']);

        //meta tag
        $meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'] . " " . $this->data['manufacturer']['meta_description'];
        $this->document->setDescription($meta_description);
        $meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'] . " " . $this->data['manufacturer']['meta_keyword'];
        $this->document->setKeywords($meta_keywords);

        //link
        $this->document->addLink(HTTP_WEB . $this->smartweb->sitemap['seo_url'] . 'html?manufacturerID=' . $manufacturerID);

        //OG
        $og_title = $this->data['manufacturer']['name'];
        $og_url = HTTP_WEB . $this->smartweb->sitemap['seo_url'] . 'html?manufacturerID=' . $manufacturerID;
        $og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->data['manufacturer']['image'];
        $og_summary = $this->data['manufacturer']['summary'];
        $og_description = $this->data['manufacturer']['metadescription'];
        //$og_publicdate = str_replace("-", "/", $this->data['media']['statusdate']);
        //$og_revisiondate = str_replace("-", "/", $this->data['media']['updateddate']);
        $og_publicdate = '';
        $og_revisiondate = '';
        $this->smartweb->setOG($og_title, $og_url, $og_image, $og_description, $og_description, $og_publicdate, $og_revisiondate);

    }

    /*
    public function getSummaryProduct(){
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
        $urlnofilter = $vars['scheme']."://".$vars['host'].":".$vars['port'].$vars['path'];
        if ($vars['query']) $urlnofilter .= "?".$vars['query']."&";
            else
        $urlnofilter .= "?";
        $this->data['urlnofilter'] = $urlnofilter;

        // get tags
        $this->getTags($this->data['product']['sitemapid']);
        $this->getListMonth($this->data['product']['sitemapid']);

        //get Customer Info
        $this->load->model('customer/customer');
        $this->data['cus_info'] = $this->model_customer_customer->getItem($this->member->getId());


        $this->template = "module/product_summary.tpl";

        $this->id="content";
        $this->render();
    }
    */
}

?>