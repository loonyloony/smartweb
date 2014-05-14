<?php
class ControllerDashboardApricotblossomfall extends Controller
{
    public function index()
    {
        $this->id = "apricot";
        $this->template = "dashboard/apricot_blossom_fall.tpl";
        $this->render();
    }
}

?>