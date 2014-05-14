<?php
class ControllerSidebarHomenews extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");
        $this->load->model("core/media");
        $this->data['news'] = $this->model_core_media->get1Item(" AND mediatype = 'media_subinfo'");
        $this->id = "homenews";
        $this->template = "sidebar/homenews.tpl";
        $this->render();
    }
}

?>