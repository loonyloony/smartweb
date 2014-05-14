<?php
class ControllerModuleSearchpropertyproduct extends Controller
{

    public function index()
    {

        //load libraries
        $this->load->model("core/propertyproduct");
        $this->load->model("common/control");

        //get data for searching
        //load property type
        $arrPropertyType = $this->model_core_propertyproduct->getPropertyType();
        $this->data['cbpropertytype'] = $this->model_common_control->getDataCombobox($arrPropertyType, "name", "propertytypeid", "");
        //load district
        $arrDistrict = $this->model_core_propertyproduct->getDistrict("Singapore");
        $this->data['cbdistrict'] = $this->model_common_control->getDataCombobox($arrDistrict, "zonename", "zoneid", "");
        //load price
        $this->data['cbprice'] = $this->getPrice();
        //load size
        $this->data['cbsize'] = $this->getSize();
        //load room type
        $arrRoomType = $this->model_core_propertyproduct->getRoomType();
        $this->data['cbroomtype'] = $this->model_common_control->getDataCombobox($arrRoomType, "name", "roomtypeid", "");

        //getList
        $this->getList();

        //template
        $this->template = "module/propertyproduct_list.tpl";
        $this->id = "content";
        $this->render();
    }

    private function getList()
    {

        //variables
        $where = "";
        $filter = "";

        //get from url
        $search = $this->request->get;
        if (isset($this->request->get['search']) && $this->request->get['search'] == "true") {
            $this->data['search'] = "true";
            $filter .= "&search=true";
        } else {
            $where .= " AND tag like 'top'";
        }

        if (isset($search['keyword']) && trim($search['keyword']) != "") {
            $where .= " AND (pd.name like '%" . urldecode($search['keyword']) . "%' OR pd.summary like '%" . urldecode($search['keyword']) . "%' OR pd.description like '%" . urldecode($search['keyword']) . "%')";
            $filter .= "&keyword=" . $search['keyword'];
        }
        if (isset($search['feature']) && $search['feature'] != "") {
            $where .= " AND p.feature = '" . $search['feature'] . "'";
            $filter .= "&feature=" . $search['feature'];
        }
        if (isset($search['propertytype']) && $search['propertytype'] != "") {
            $where .= " AND p.propertytypeid = '" . $search['propertytype'] . "'";
            $filter .= "&propertytype=" . $search['propertytype'];
        }
        if (isset($search['district']) && $search['district'] != "") {
            $where .= " AND p.zoneid = '" . $search['district'] . "'";
            $filter .= "&district=" . $search['district'];
        }
        if (isset($search['maxprice']) && $search['maxprice'] != "") {
            if ($search['price'] == "") {
                $where .= " AND p.price <= '" . $search['maxprice'] . "'";
                $filter .= "&maxprice=" . $search['maxprice'];
            } else {
                if ($search['price'] <= $search['maxprice']) {
                    $where .= " AND p.price >= '" . $search['price'] . "' AND p.price <= '" . $search['maxprice'] . "'";
                    $filter .= "&price=" . $search['price'] . "&maxprice=" . $search['maxprice'];
                } else {
                    $where .= " AND p.price >= '" . $search['price'] . "'";
                    $filter .= "&price=" . $search['price'];
                }
            }
        } else {
            if (isset($search['price']) && $search['price'] != "") {
                $where .= " AND p.price >= '" . $search['price'] . "'";
                $filter .= "&price=" . $search['price'];
            }
        }
        if (isset($search['maxsize']) && $search['maxsize'] != "" && $search['size'] != "") {
            if (urldecode($search['maxsize']) == "<200") {
                $where .= " AND p.length < '200'";
                $filter .= "&maxsize=" . $search['maxsize'];
            } else {
                if (urldecode($search['size']) == "<200") {
                    $where .= " AND p.length <= '" . $search['size'] . "'";
                    $filter .= "&size=" . $search['size'];
                } else {
                    if ($search['size'] <= $search['maxsize'] && trim($search['size']) != "") {
                        $where .= " AND p.length >= '" . $search['size'] . "' AND p.length <= '" . $search['maxsize'] . "'";
                        $filter .= "&size=" . $search['size'] . "&maxsize=" . $search['maxsize'];
                    }
                }
            }
        } else {
            if (isset($search['size']) && $search['size'] != "") {
                if (urldecode($search['size']) == "<200") {
                    $where .= " AND p.length < '200'";
                } else {
                    $where .= " AND p.length >= '" . $search['size'] . "'";
                }
                $filter .= "&size=" . $search['size'];
            }
        }
        if (isset($search['roomtype']) && $search['roomtype'] != "") {
            $where .= " AND p.roomtypeid = '" . $search['roomtype'] . "'";
            $filter .= "&roomtype=" . $search['roomtype'];
        }

        $where .= " ORDER BY price ASC, length ASC";

        //load product list
        $arrProduct = $this->model_core_propertyproduct->getList($where);

        //if SKINID is "singapore", $arrProduct includes 2 arrays (rent array, sale array)

        $this->data['products'] = $arrProduct;

        //sitemap
        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];

        //pagination
        $page = $this->request->get['page'];

        if (isset($page)) {
            $page = preg_replace('#[^0-9]#i', '', $page);
        } else {
            $page = 1;
        }
        $this->data['pagecurrent'] = $page;

        //get total records
        if (SKINID == "singapore") {

            if (count($arrProduct['rent'])) {
                $this->data['count'] = count($arrProduct['rent']);
            }

            if (count($arrProduct['sale'])) {
                $this->data['count'] = count($arrProduct['sale']);
            }

            if (!isset($this->data['count'])) {
                $this->data['count'] = 0;
            }

        } else {
            $this->data['count'] = count($arrProduct);
        }

        //This is where we set how many database items to show on each page
        //$itemsPerPage = 20;
        $itemsPerPage = 12;

        // Get the value of the last page in the pagination result set
        $lastPage = ceil($this->data['count'] / $itemsPerPage);
        $this->data['lastPage'] = $lastPage;

        $result = array();

        $result = $this->model_core_propertyproduct->getPageList($where, $page, $lastPage, $itemsPerPage, $filter);

        if (count($result['products']) > 0) {
            $this->data['paginationDisplay'] = $result['paginationDisplay'];
        }

        if ($this->data['search'] == "true") {
            $this->data['products'] = $result['products'];
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

    private function getPrice()
    {
        $price = array('100', '500', '1000', '1500', '2000', '2500', '3000', '3500', '4000', '4500', '5000', '5500', '6000', '7000', '8000', '9000', '10000', '11000', '12000', '15000', '20000', '30000', '40000', '50000');
        return $price;
    }

    private function getSize()
    {
        $size = array('<200' => '<19 sqm', '200' => '19 sqm', '300' => '28 sqm', '500' => '46 sqm', '750' => '70 sqm', '1000' => '93 sqm', '1200' => '112 sqm', '1500' => '139 sqm', '2000' => '186 sqm', '2500' => '232 sqm', '3000' => '279 sqm', '4000' => '372 sqm', '5000' => '465 sqm', '7500' => '697 sqm', '10000' => '929 sqm');
        return $size;
    }
}

?>