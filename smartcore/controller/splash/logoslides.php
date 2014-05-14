<?php
class ControllerSplashLogoslides extends Controller
{
    public function index()
    {
        $this->document->addScript("crawler.js");

        $this->load->model("splash/weblink");
        $this->data['logoslides'] = $this->model_splash_weblink->getListByAddonid("logoslides");

        $this->id = "logoslides";
        $this->template = "splash/logoslides.tpl";
        $this->render();
    }
}

?>