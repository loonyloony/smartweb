<?php
class ControllerSidebarSidebarnav extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");
        $this->load->model("sidebar/banner");

        $this->data['banner'] = $this->model_sidebar_banner->getList("sidebarnav", "AND (w.link = '" . $this->smartweb->sitemap['seo_url'] . "' OR w.link = 'all')");

        $this->id = "banner";
        $this->template = "sidebar/sidebarnav.tpl";
        $this->render();
    }
}

?>