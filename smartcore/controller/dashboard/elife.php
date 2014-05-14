<?php
class ControllerDashboardElife extends Controller
{
    public function index()
    {
        $this->document->addStyle("dashboard_elife.css");
        $this->id = "elife";
        $this->template = "dashboard/elife.tpl";
        $this->render();
    }
}

?>