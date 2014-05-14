<?php
class ControllerSplashCrossfile extends Controller
{
    public function index()
    {


        //$this->document->addStyle("elife_homeslider.css");

        $this->id = "crossfile";
        $this->template = "background/crossfile.tpl";
        $this->render();
    }
}

?>