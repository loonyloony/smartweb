<?php
class ControllerSplashFullscreenheaderslider extends Controller
{
    public function index()
    {
        $this->id = "fullscreenheaderslider";
        $this->template = "splash/fullscreenheaderslider.tpl";
        $this->render();
    }
}

?>