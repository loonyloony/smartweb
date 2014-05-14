<?php
class ControllerModuleGroup extends Controller
{

    public function index()
    {
        $this->getList();
        $this->template = "module/product_list_group.tpl";
        $this->id = "content";
        $this->render();
    }

    private function getList()
    {

        $this->load->model("core/group");
        $this->load->model("core/sitemap");
        //sitemap
        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
        $sitemapid = $this->smartweb->sitemapid;

        // check if null
        $listSitemap = $this->model_core_sitemap->getList(SITEID, "AND sitemap.sitemapparent = " . $sitemapid . "");

        if (count($listSitemap) == 0) return;

        //pagination
        $page = $this->request->get['page'];

        if (isset($page)) {
            $page = preg_replace('#[^0-9]#i', '', $page);
        } else {
            $page = 1;
        }

        $arrayOfProduct = $this->model_core_group->getList($where);

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
            $where .= " ORDER BY p.date_added DESC ";
        }

        //get total records
        $this->data['count'] = count($arrayOfProduct);

        //This is where we set how many database items to show on each page
        $itemsPerPage = 12;

        // Get the value of the last page in the pagination result set
        $lastPage = ceil($this->data['count'] / $itemsPerPage);
        $result = $this->model_core_group->getPageList($where, $page, $lastPage, $itemsPerPage);

        if (count($listSitemap)) {
            foreach ($listSitemap as $item) {
                $where = "";

                $where .= "AND p.sitemapid IN ( " . $item['sitemapid'] . ",";

                $where .= $this->addSiteMapList($item['sitemapid']);

                if ($where[strlen($where) - 1] == ",") {
                    $where = substr($where, 0, -1);
                }
                $where .= ")";

                $where .= " ORDER BY date_modified DESC, date_added DESC LIMIT 0,6";

                $arrayOfProduct = array();

                $arrayOfProduct = $this->model_core_group->getList($where);

                if (count($arrayOfProduct) > 0) {
                    foreach ($arrayOfProduct as $product) {
                        $this->data['products'][$item['sitemapid']]['sitemaplink'] = $this->url->getURL($item['seo_url'], 'sitemap', $item['sitemapid']);
                        $this->data['products'][$item['sitemapid']]['sitemapname'] = $item['sitemapname'];
                        $this->data['products'][$item['sitemapid']]['items'][] = $product;
                    }
                }
            }

            /*if(count($result['products']))
            {
                foreach($result['products'] as $product)
                {
                    $sitemap = $this->model_core_sitemap->getItem($product['sitemapid']);
                    $this->data['products'][$product['sitemapid']]['sitemaplink'] = $this->url->getURL($sitemap['seo_url'], 'sitemap', $sitemap['sitemapid']);
                    $this->data['products'][$product['sitemapid']]['sitemapname'] = $sitemap['sitemap_description']['sitemapname'];
                    $this->data['products'][$product['sitemapid']]['items'][] = $product;
                }
            }*/
        }


        /*if(count($result['products']) > 0){
            $this->data['paginationDisplay'] = $result['paginationDisplay'];
        }*/

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

    private function addSiteMapList($sitemapid)
    {
        $where = "";
        $listSitemap = $this->model_core_sitemap->getList(SITEID, "AND sitemap.sitemapparent = " . $sitemapid . "");
        foreach ($listSitemap as $item) {
            $where .= $item['sitemapid'] . ",";
            $where .= $this->addSiteMapList($item['sitemapid']);
        }
        return $where;
    }
}

?>