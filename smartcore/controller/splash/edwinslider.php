<?php
class ControllerSplashEdwinslider extends Controller
{
    public function index()
    {
        $this->id = "edwinslider";
        $this->template = "splash/edwinslider.tpl";
        $this->render();
    }
}

?>