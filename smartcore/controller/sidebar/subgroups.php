<?php
class ControllerSidebarSubgroups extends Controller
{
    public function index()
    {
		if (SKINID == "dongduong") {
            $this->load->model("core/product");
            $this->data['arrmanu'] = $this->model_core_product->getAllManufacturer();
        }
        $this->load->model("core/sitemap");
        $id = $this->smartweb->sitemapid;
        $menu = $this->getMenu($id);

        if ($menu == "") {
            $id = $this->smartweb->sitemap['sitemapparent'];
            if ($id != "") {
                $menu = $this->getMenu($id);
            }
        }

        $this->data['menus'] = $menu;
				
        if (SKINID == "elifesupport") {
            $parentid = $this->model_core_sitemap->getRoot($id);
            $this->data['menus'] = $this->getMenu($parentid);
        }
		
        $root_menu = $this->model_core_sitemap->getItem($id);
        $this->data['sub_title'] = $root_menu['sitemap_description']['sitemapname'];

        $this->id = "subgroups";
        $this->template = "sidebar/subgroups.tpl";
        $this->render();
    }

    public function getMenu($parentid)
    {
        $allsitemaps = $this->smartweb->allmainmenus;
        $rootid = $this->smartweb->rootsitemapid;

        $sitemaps = $this->common->search_array($allsitemaps, "sitemapparent", $parentid);

        foreach ($sitemaps as $item) {
            $childs = $this->common->search_array($allsitemaps, "sitemapparent", $item['sitemapid']);

            $currenttab = "";
            if ($item['sitemapid'] == $rootid) {
                $currenttab = "class='active'";
            }

            $link = "<a " . $currenttab . " >" . $item['sitemapname'] . "</a>";
            if ($item['moduleid'] == "module/homepage") {
                $link = "<a " . $currenttab . " href='" . HTTP_SERVER . "' >" . $item['sitemapname'] . "</a>";
            } elseif ($item['moduleid'] == "module/link") {
                if (trim($item['hyperlink']) == "") {
                    $item['hyperlink'] == "#";
                } else {
                    if (substr($item['hyperlink'], 0, 7) != "http://") {
                        $item['hyperlink'] = $item['hyperlink'];
                    }
                }
                $link = "<a href='" . $item['hyperlink'] . "' >" . $item['sitemapname'] . "</a>";
            } elseif ($item['moduleid'] != "module/none") {
                $link = "<a " . $currenttab . " href='" . $this->url->getURL($item['seo_url'], "sitemap", $item['sitemapid']) . "'>" . $item['sitemapname'] . "</a>";
            }


            $str .= "<li>";
            //$str .= "<div class='border-line-red'></div>";
            //$str .= "<div class='border-line-white'></div>";
            //$str .= "<img class='dot' src='".DIR_IMAGE."dot.png' />";
            $str .= $link;

            if (count($childs) > 0) {
                $str .= "<ul>";
                $str .= $this->getMenu($item['sitemapid']);
                $str .= "</ul>";
            }

            $str .= "</li>";
        }

        return $str;
    }
}

?>