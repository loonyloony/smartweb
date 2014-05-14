<?php
class ControllerDashboardSnowfall extends Controller
{
    public function index()
    {
        $this->id = "snowfall";
        $this->template = "dashboard/snowfall.tpl";
        $this->render();
    }
}

?>