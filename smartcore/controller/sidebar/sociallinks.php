<?php
class ControllerSidebarSociallinks extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");
        $this->load->model("sidebar/banner");

        $this->data['banner'] = $this->model_sidebar_banner->getListByAddonid("sociallinks");

        $this->id = "banner";
        $this->template = "sidebar/sociallinks.tpl";
        $this->render();
    }
}

?>