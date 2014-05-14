<?php
class ControllerSplashHomeelifenews extends Controller
{
    public function index()
    {
        $this->document->addStyle("elife_homeelifenews.css");

        $this->id = "homeelifenews";
        $this->template = "splash/homeelifenews.tpl";
        $this->render();
    }
}

?>