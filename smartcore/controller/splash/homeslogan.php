<?php
class ControllerSplashHomeslogan extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.plugins.min.js");
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("elife_homeslider.css");

        $this->id = "homeslogan";
        $this->template = "splash/homeslogan.tpl";
        $this->render();
    }
}

?>