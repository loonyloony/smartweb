<?php
class ControllerSplashThreesmallbanner extends Controller
{
    public function index()
    {
        $this->document->addStyle("elife_threesmallbanner.css");

        $this->id = "threesmallbanner";
        $this->template = "splash/threesmallbanner.tpl";
        $this->render();
    }
}

?>