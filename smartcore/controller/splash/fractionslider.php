<?php
class ControllerSplashFractionSlider extends Controller
{
    public function index()
    {
        $this->load->model("splash/weblink");
        $this->data['banner'] = $this->model_splash_weblink->getListByAddonid("fractionslider");
        $this->id = "fractionslider";
        $this->template = "splash/fractionslider.tpl";
        $this->render();
    }
}

?>