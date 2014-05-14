<?php
class ControllerSplashSupportonline extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");
        $this->load->model("sidebar/supportonline");

        $this->data['supportonline'] = $this->model_sidebar_supportonline->getListByAddonid("contactchannel");

        $this->id = "supportonline";
        $this->template = "splash/supportonline.tpl";
        $this->render();
    }
}

?>