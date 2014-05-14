<?php
class ControllerSidebarProductcategory extends Controller
{
    public function index()
    {
        $this->load->model("core/sitemap");
        $parentid = $this->smartweb->sitemap['sitemapparent'];

        if (SKINID == "trungnamrc") {
            $parentid = "46";
            $this->data['menu'] = $this->getAllMenu($parentid);
        } elseif (SKINID == "labwell" || SKINID == "ngocminhthy" || SKINID == "sualaptopsaigon" || SKINID == "suamacbookuytin" || SKINID == "suaipaduytin" || SKINID == "chothuemaychieu" || SKINID == "mayaothundongphuc" || SKINID == "sualaptoplaylien" || SKINID == "applerepair") {
            $parentid = "166";
            $this->data['labwell'] = $this->getAllMenu($parentid);
            $parentid = "25";
            $this->data['dvu'] = $this->getAllMenu($parentid);
            $parentid = "18";
            $this->data['chothue'] = $this->getAllMenu($parentid);
            $parentid = "103";
            $this->data['camera'] = $this->getAllMenu($parentid);
            if (SKINID == "ngocminhthy" || SKINID == "mayaothundongphuc" || SKINID == "sualaptopsaigon" || SKINID == "suamacbookuytin" || SKINID == "suaipaduytin") {
                $parentid = "121";
                $this->data['quytrinh'] = $this->getAllMenu($parentid);

                $parentid = "142";
                $this->data['laptop'] = $this->getAllMenu($parentid);

                $parentid = "128";
                $this->data['khachhang'] = $this->getAllMenu($parentid);
            }
        } elseif (SKINID == "elifesupport") {
            $parentid = $this->getRoot($this->smartweb->sitemap['sitemapid']);
            $this->data['parentid'] = $this->smartweb->sitemap['sitemapparent'];
            $this->data['menu'] = $this->getMenuByParent($parentid);
        } elseif (SKINID == "sualaptoplongxuyen") {
            $parentid = "9";
            $this->data['danh_muc'] = $this->getAllMenu($parentid);
        } elseif (SKINID == "mesushop") {
            $parentid = "105";
            $this->data['menu'] = $this->getAllMenu($parentid);
        } elseif (SKINID == "sualaptopsg" || SKINID == "suachualaptopsg") {
            $parentid = "9";
            $this->data['dvu'] = $this->getAllMenu($parentid);
        } elseif (SKINID == "hatomex") {
            $this->load->model("core/sitemap");
            $sitemap = $this->model_core_sitemap->getList("default", " AND sitemap.moduleid = 'module/allproduct' AND sitemap.sitemapparent = '' ");
            if (count($sitemap)) {
                $this->data['menu'] = $this->getAllMenu($sitemap[0]['sitemapid']);
            }
        } elseif (SKINID == "aothunvinhphat") {
            $parentid = "3";
            $this->data['menu'] = $this->getAllMenu($parentid);
        } else {
            $this->data['menu'] = $this->getMenu($parentid);
        }
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        $this->document->addStyle("sidebar_productcategory.css");
        $this->id = "productcategory";
        $this->template = "sidebar/productcategory.tpl";
        $this->render();
    }

    private function getRoot($sitemapid, $siteid = "default")
    {

        if ($sitemapid == "") {
            return 'index';
        }

        $row = $this->model_core_sitemap->getItem($sitemapid);

        if ($row['sitemapparent'] == "") {
            return $row['sitemapid'];
        }

        $arrSitemapparent[] = $sitemapid;

        while ($row['sitemapparent'] != "") {
            $arrSitemapparent[] = $row['sitemapparent'];
            $row = $this->model_core_sitemap->getItem($row['sitemapparent'], $siteid);
        }

        return $arrSitemapparent[count($arrSitemapparent) - 2];
    }

    private function getMenuByParent($parentid)
    {

        $sitemaps = $this->model_core_sitemap->getList("default", " AND sitemapparent = '" . $parentid . "'");

        foreach ($sitemaps as $item) {
            $childs = $this->model_core_sitemap->getList("default", " AND sitemapparent = '" . $item['sitemapid'] . "'");

            $currenttab = "";
            if ($item['sitemapid'] == $this->smartweb->sitemapid) {
                $currenttab = "class='active'";
            }

            $link = "<a " . $currenttab . " >" . $item['sitemapname'] . "</a>";
            if ($item['moduleid'] == "module/homepage") {
                $link = "<a " . $currenttab . " href='" . HTTP_SERVER . "' >" . $item['sitemapname'] . "</a>";
            } elseif ($item['moduleid'] == "module/link") {
                $link = "<a href='" . $item['hyperlink'] . "' >" . $item['sitemapname'] . "</a>";
            } elseif ($item['moduleid'] != "module/none") {
                $link = "<a " . $currenttab . " href='" . $this->url->getURL($item['seo_url'], "sitemap", $item['sitemapid']) . "'>" . $item['sitemapname'] . "</a>";
            }


            $str .= "<li id='$item[sitemapid]'>";
            $str .= $link;

            if (count($childs) > 0) {
                $str .= "<ul>";
                $str .= $this->getAllMenu($item['sitemapid']);
                $str .= "</ul>";
            }

            $str .= "</li>";
        }
        return $str;
    }

    private function getMenu($parentid)
    {
        $parentid = $this->model_core_sitemap->getRoot($parentid, SITEID);
        $sitemaps = $this->model_core_sitemap->getList(SITEID, " AND sitemap.sitemapparent = '" . $parentid . "'");
        $current_sitemapid = $this->smartweb->sitemapid;
        $result = "";
        foreach ($sitemaps as $sitemap) {
            $active = "";
            $href = $this->url->getURL($sitemap['seo_url'], "sitemap", $sitemap['sitemapid']);
            if ($sitemap['sitemapid'] == $current_sitemapid) {
                $active = 'class="active"';
            }
            $result .= "<li><a $active href='" . $href . "'>";
            $result .= str_replace("/", "<br />", $sitemap['sitemapname']);
            $result .= "</a></li>";
        }
        return $result;
    }

    public function getAllMenu($parentid)
    {
        $allsitemaps = $this->smartweb->allmainmenus;

        $rootid = $this->smartweb->rootsitemapid;

        $sitemaps = $this->common->search_array($allsitemaps, "sitemapparent", $parentid);

        foreach ($sitemaps as $item) {
            $childs = $this->common->search_array($allsitemaps, "sitemapparent", $item['sitemapid']);

            $currenttab = "";
            if ($item['sitemapid'] == $this->smartweb->sitemapid) {
                $currenttab = "class='active'";
            }

            $link = "<a " . $currenttab . " >" . $item['sitemapname'] . "</a>";
            if ($item['moduleid'] == "module/homepage") {
                $link = "<a " . $currenttab . " href='" . HTTP_SERVER . "' >" . $item['sitemapname'] . "</a>";
            } elseif ($item['moduleid'] == "module/link") {
                $link = "<a href='" . $item['hyperlink'] . "' >" . $item['sitemapname'] . "</a>";
            } elseif ($item['moduleid'] != "module/none") {
                $link = "<a " . $currenttab . " href='" . $this->url->getURL($item['seo_url'], "sitemap", $item['sitemapid']) . "'>" . $item['sitemapname'] . "</a>";
            }


            $str .= "<li>";
            $str .= $link;

            if (count($childs) > 0) {
                $str .= "<ul>";
                $str .= $this->getAllMenu($item['sitemapid']);
                $str .= "</ul>";
            }

            $str .= "</li>";
        }
        return $str;
    }
}

?>