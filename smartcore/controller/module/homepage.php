<?php
class ControllerModuleHomepage extends Controller
{
    function __construct()
    {
        //$this->iscache = true;

    }

    public function index()
    {
        $this->id = "content";
        $this->template = "module/homepage.tpl";
        $this->render();
    }
}

?>