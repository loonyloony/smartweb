<?php
class ControllerSidebarWebcounter extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");
        $this->data['onlinevisitor'] = $this->config->get("config_countonlinevisitors");
        $this->data['indayvisitor'] = $this->config->get("setting_webcounter");
        $this->id = "webcounter";
        $this->template = "sidebar/webcounter.tpl";
        $this->render();
    }


}

?>