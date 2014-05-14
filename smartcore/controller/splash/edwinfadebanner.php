<?php
class ControllerSplashEdwinfadebanner extends Controller
{
    public function index()
    {
        $this->load->model("splash/weblink");
        $this->data['banner'] = $this->model_splash_weblink->getListByAddonid("edwinfadebanner");

        $this->id = "edwinfadebanner";
        $this->template = "splash/edwinfadebanner.tpl";
        $this->render();
    }
}

?>