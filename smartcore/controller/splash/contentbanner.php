<?php
class ControllerSplashContentbanner extends Controller
{
    public function index()
    {
        $this->load->model("splash/weblink");
        $this->data['banner'] = $this->model_splash_weblink->getListByAddonid("contentbanner1");

        $this->id = "contentbanner";
        $this->template = "splash/contentbanner.tpl";
        $this->render();
    }
}

?>