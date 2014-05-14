<?php
class ControllerSplashCustom extends Controller
{
    public function index()
    {
        $this->id = "threesmallbanner";
        $this->template = "splash/custom.tpl";
        $this->render();
    }
}

?>