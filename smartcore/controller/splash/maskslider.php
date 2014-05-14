<?php
class ControllerSplashMaskslider extends Controller
{
    public function index()
    {
        $this->document->addScript("jquery.themepunch.plugins.min.js");
        $this->document->addScript("jquery.themepunch.kenburn.min.js");
        $this->document->addStyle("elife_maskslider.css");

        $this->id = "bigbanner";
        $this->template = "splash/maskslider.tpl";
        $this->render();
    }
}

?>