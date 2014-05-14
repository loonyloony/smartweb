<?php
class ControllerSplashCatbanner extends Controller
{
    public function index()
    {

        $this->load->model("splash/weblink");
        $this->load->model("core/sitemap");

        $seo_url = $this->request->get['__seourl__'];

        if (SKINID == 'mercedes') {
            $sitemapparentid = $this->smartweb->sitemap['sitemapparent'];
            $sitemapparent = $this->model_core_sitemap->getItem($sitemapparentid);
            if ($sitemapparentid != '') {
                $seo_url = $sitemapparent['seo_url'];
            }
        }

        $banner = $this->model_splash_weblink->getList("catbanner", " AND (wd.title = '" . $seo_url . "' )");
        if (count($banner) <= 0) {
            $banner = $this->model_splash_weblink->getList("catbanner", " AND (wd.title = 'all' OR wd.title = '" . $seo_url . "' )");
        }
        $this->data['banner'] = $banner;

        $this->id = "catbanner";
        $this->template = "splash/catbanner.tpl";
        $this->render();
    }
}

?>