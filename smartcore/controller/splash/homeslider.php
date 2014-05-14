<?php
class ControllerSplashHomeslider extends Controller
{
    public function index()
    {
        $this->document->addScript("jquery.themepunch.plugins.min.js");
        $this->document->addScript("jquery.themepunch.kenburn.min.js");
        $this->document->addStyle("elife_homeslider.css");

        $this->load->model("splash/weblink");
        $this->data['banner'] = $this->model_splash_weblink->getListByAddonid("homeslider");
        $this->id = "bigbanner";
        $this->template = "splash/homeslider.tpl";
        $this->render();
    }
}

?>