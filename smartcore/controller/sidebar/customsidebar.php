<?php
class ControllerSidebarCustomsidebar extends Controller
{
    public function index()
    {
        $this->id = "customsidebar";
        $this->template = "sidebar/customsidebar.tpl";
        $this->render();
    }
}

?>