<?php
class ControllerSplashProductnews extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.plugins.min.js");
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("elife_homeslider.css");
        $this->document->addStyle("splash_productnews.css");
        $this->data['lastestproduct'] = $this->loadmodule("splash/lastestproduct");
        $this->data['lastestnews'] = $this->loadmodule("splash/lastestnews");
        $this->id = "productnews";
        $this->template = "splash/productnews.tpl";
        $this->render();
    }
}

?>