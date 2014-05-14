<?php
class ControllerModuleProductByManufacturer extends Controller
{

    public function index()
    {
        $this->getList();

        //load filter
        $this->load->model("product/filter");
        $this->load->model("product/filteroption");

        //load filter productType (filter table)
        $filters = $this->model_product_filter->getOptionList();
        $this->data['viewdata']['listfilter'] = $filters;
        $languageid = $this->config->get('config_languageid');
        foreach ($filters as $filter) {
            $this->data['viewdata'][$filter['filterid']] = $this->model_product_filteroption->getOptionValues($filter['filterid'], $languageid, ' ovd.name ASC');
        }

        //load sitmap filter follow module/product
        $this->load->model("core/sitemap");
        $where = " AND sitemap.moduleid = 'module/product'";
        $this->data['viewdata']['filterSitemapList'] = $this->model_core_sitemap->getList(SITEID, $where);

        //load manufacturer list
        $this->load->model("core/product");
        $this->data['viewdata']['manufacturerList'] = $this->model_core_product->getAllManufacturer();

        $this->template = "module/product_list.tpl";
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


        // filter by area
        if ($this->request->get['area'] != "") {
            $value = rawurldecode($this->request->get['area']);
            $where .= " AND pm.area LIKE '%" . $value . "%' ";
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

        //filter follow sitemap, attribuate filter, manufacturer
        //&sitemapFilter=4,6&attrFilter=5,6&manufacturerFilter=2,7
        $sitemapFilter = rawurldecode($this->request->get['sitemapFilter']);
        $attrFilter = rawurldecode($this->request->get['attrFilter']); //attrFilter: filter attribute of product
        $manufacturerFilter = rawurldecode($this->request->get['manufacturerFilter']);


        $manufacturerID = rawurldecode($this->request->get['manufacturerID']);
        // *****
        // if have no sitemapFilter, attrFilter, manufacturerFilter
        // get parameter manufacturerid and show the summary of manufacturer
        // *****
        if ($manufacturerID != '') {

            $this->load->model("core/product");
            $manufacturerEntity = $this->model_core_product->getManu($manufacturerID);

            if (count($manufacturerEntity) > 0) {
                $this->data['manufacturer_name'] = $manufacturerEntity['name'];
                $this->data['manufacturer_summary'] = htmlspecialchars_decode($manufacturerEntity['summary']);
                $this->data['manufacturer_link'] = $manufacturerEntity['link'];

                if ($manufacturerFilter != '') {
                    $where .= " AND p.manufacturerid IN (" . $manufacturerFilter . ")";
                }
            }

        } else {
            if ($sitemapFilter != '') {
                //$sitemapFilter = str_replace('-', ',', $sitemapFilter);
                $where .= " AND p.sitemapid IN (" . $sitemapFilter . ")";
            }

            if ($attrFilter != '') {
                //$attrFilter = str_replace('-', ',', $attrFilter);
                $where .= " AND p.filter IN (" . $attrFilter . ")";
            }

            if ($manufacturerFilter != '') {
                //$manufacturerFilter = str_replace('-', ',', $manufacturerFilter);
                $where .= " AND p.manufacturerid IN (" . $manufacturerFilter . ")";
            }
        }
        //end filter follow sitemap, attribuate filter, manufacturer

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
        } elseif (SKINID == "fanhanghieu") {
            $itemsPerPage = 12;
        }

        //recompose filter for paging
        $filterString = '';
        if ($filter != '') {
            $filterString .= "?filter=" . $this->request->get['filter'];
        }
        if ($order != '') {
            if ($filterString != '') {
                $filterString .= "&order=" . $order;
            } else {
                $filterString .= "?order=" . $order;
            }
        }
        if ($sitemapFilter != '') {
            if ($filterString != '') {
                $filterString .= "&sitemapFilter=" . $sitemapFilter;
            } else {
                $filterString .= "?sitemapFilter=" . $sitemapFilter;
            }
        }

        if ($attrFilter != '') {
            if ($filterString != '') {
                $filterString .= "&attrFilter=" . $attrFilter;
            } else {
                $filterString .= "?attrFilter=" . $attrFilter;
            }

        }

        if ($manufacturerFilter != '') {
            if ($filterString != '') {
                $filterString .= "&manufacturerFilter=" . $manufacturerFilter;
            } else {
                $filterString .= "?manufacturerFilter=" . $manufacturerFilter;
            }
        }
        //end recompose filter for paging

        // Get the value of the last page in the pagination result set
        $lastPage = ceil($this->data['count'] / $itemsPerPage);
        $this->data['lastPage'] = $lastPage;

        $result = $this->model_core_product->getPageListWithFilter($where, $page, $lastPage, $itemsPerPage, $filterString, true);

        $this->data['products'] = $result['products'];
        if (count($result['products']) > 0) {
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

}

?>