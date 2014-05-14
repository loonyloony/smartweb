<?php
class ControllerSplashHomelinks extends Controller
{
    public function index()
    {
        $this->document->addStyle("elife_homelink.css");

        $this->data['onlinevisitor'] = $this->config->get("config_countonlinevisitors");
        $this->data['indayvisitor'] = $this->config->get("setting_webcounter");

        $this->id = "homelinks";
        $this->template = "splash/homelinks.tpl";
        $this->render();
    }
}

?>