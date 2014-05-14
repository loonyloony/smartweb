<?php
class ControllerModulePropertyproduct extends Controller
{

    public function index()
    {

        if ($this->smartweb->sitemapid != "" && $this->smartweb->objectid == "") {
            //redirect to module/searchpropertyproduct
            if (SKINID == "singapore") {
                header('location: search.html');
            }
        } else {
            $this->document->addScript("jquery.simpleslides.js");

            $this->getProduct();
            $this->template = "module/propertyproduct_detail.tpl";
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

    private function getProduct()
    {
        $this->load->model("core/propertyproduct");

        $this->data['product'] = $this->model_core_propertyproduct->getItem($this->smartweb->objectid);
        $location = explode("##", $this->data['product']['locationmap']);
        $this->data['locationmap']['zoom'] = $location[0];
        $this->data['locationmap']['x'] = $location[1];
        $this->data['locationmap']['y'] = $location[2];

        //get additional
        $this->data['additional'] = $this->model_core_propertyproduct->getProductAdditional($this->data['product']['productid']);


        //get manufacturer
        $manufacturer = $this->model_core_product->getManufacturer($this->data['product']['manufacturerid']);
        $this->data['product']['manufacturer_link'] = $this->url->getURL($manufacturer['seo_url'], 'manufacturer', $manufacturer['manufacturerid']);
        $this->data['product']['manufacturername'] = $manufacturer['name'];

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
        $this->data['products'] = $this->model_core_propertyproduct->getList(" AND p.feature = '" . $this->data['product']['feature'] . "' AND p.productid <> '" . $this->smartweb->objectid . "' ORDER BY p.date_added DESC Limit 0,6 ", false, true);

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
        $this->document->addLink($this->url->getURL($this->data['product']['seo_url'], 'product', $this->data['product']['productid']));

        //OG
        $og_title = $this->data['product']['name'];
        $og_url = $this->url->getURL($this->data['product']['seo_url'], 'product', $this->data['product']['productid']);
        $og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->data['product']['image'];
        $og_summary = $this->data['product']['summary'];
        $og_description = $this->string->getTextLength($this->data['product']['description'], 0, 100);
        $og_publicdate = str_replace("-", "/", $this->data['product']['date_added']);
        $og_revisiondate = str_replace("-", "/", $this->data['product']['date_modified']);
        $this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);
        $this->data['contact_ad_form'] = $this->loadModule("module/comment", "getForm", array($this->data['product']['productid']));

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