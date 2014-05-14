<?php
class ControllerSplashThreecolumnnewhomeproducts extends Controller
{
    public function index()
    {
        $this->load->model("core/product");
        $this->load->model("core/media");
        $this->load->model("core/sitemap");
        $this->load->model("sidebar/supportonline");

        if (SKINID == "huutoan") {
            $where = "";

            $where .= "AND p.sitemapid IN ( " . 50 . ",";

            $where .= $this->addSiteMapList(50);

            if ($where[strlen($where) - 1] == ",") {
                $where = substr($where, 0, -1);
            }
            $where .= ")";
            //load new generators
            //$strNewGenerators = "'" . str_replace(",", "','", substr($this->model_core_sitemap->getSitemapTree(19), 0, -1)) . "'";
            $this->data['new_generators'] = $this->model_core_product->getGroupList(" AND p.image not like '' " . $where . " ORDER BY date_modified DESC LIMIT 0,3 ");

            $where = "";

            $where .= "AND p.sitemapid IN ( " . 21 . ",";

            $where .= $this->addSiteMapList(21);

            if ($where[strlen($where) - 1] == ",") {
                $where = substr($where, 0, -1);
            }
            $where .= ")";

            //load old generators
            //$strOldGenerators = "'" . str_replace(",", "','", substr($this->model_core_sitemap->getSitemapTree(21), 0, -1)) . "'";
            $this->data['old_generators'] = $this->model_core_product->getGroupList(" AND p.image not like '' " . $where . " ORDER BY date_modified DESC LIMIT 0,3 ");

            $this->data['supportonline'] = $this->model_sidebar_supportonline->getListByAddonid("supportonline");
        } elseif (SKINID == "ngocminhthiwebsite" || SKINID == "chothuemaychieu" || SKINID == "mayaothundongphuc" || SKINID == "sualaptoplaylien" || SKINID == "applerepair" || SKINID == "suaipaduytin" || SKINID == "suamacbookuytin" || SKINID == "sualaptopsaigon") {
            //load image - sitemap 119
            $where = " AND mediatype = 'media_galleryalbum' AND refersitemap LIKE '%[119]%' AND imagepath <> '' ";
            $this->data['image'] = $this->model_core_media->getListMedia($where, 0, 3);
            //load video - sitemap 120
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[120]%' ";
            $this->data['video'] = $this->model_core_media->getListMedia($where, 0, 1);
        } elseif (SKINID == "mesushop") {
            //version 1
            //$where = " AND image <> '' ORDER BY date_added DESC, date_modified DESC LIMIT 0,5";
            //version 2
            $where = " AND image <> '' ORDER BY date_added DESC, date_modified DESC LIMIT 0,12";
            $this->data['newproducts'] = $this->model_core_product->getGroupList($where);

            //version 1
            //$where = " AND saleoff <> 0 ORDER BY date_modified DESC, date_added DESC LIMIT 0,18";
            //version 2
            $where = " AND saleoff <> 0 ORDER BY date_modified DESC, date_added DESC LIMIT 0,12";
            $this->data['saleoff'] = $this->model_core_product->getGroupList($where);
        } elseif (SKINID == "sualaptopsg" || SKINID == "suachualaptopsg") {
            //load image - sitemap 119
            $where = " AND mediatype = 'media_galleryalbum' AND refersitemap LIKE '%[42]%' AND imagepath <> '' ";
            $this->data['image'] = $this->model_core_media->getListMedia($where, 0, 3);
            //load video - sitemap 120
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[41]%' ";
            $this->data['video'] = $this->model_core_media->getListMedia($where, 0, 1);
        }


        $this->document->addStyle("elife_product_list.css");
        $this->document->addStyle("splash_lastestproduct.css");
        $this->id = "lastestproduct";
        $this->template = "splash/threecolumnnewhomeproducts.tpl";
        $this->render();
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