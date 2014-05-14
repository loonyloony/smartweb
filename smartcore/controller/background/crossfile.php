<?php
class ControllerBackgroundCrossfile extends Controller
{
    public function index()
    {
        $this->document->addScript("jquery.easing.min.js");
        $this->document->addScript("jquery.pause.min.js");
        $this->document->addScript("jquery.cross-slide.js");


        //$this->document->addStyle("elife_homeslider.css");

        $this->id = "crossfile";
        $this->template = "background/crossfile.tpl";
        $this->render();
    }
}

?>