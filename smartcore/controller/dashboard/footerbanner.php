<?php
class ControllerDashboardFooterbanner extends Controller
{
    public function index()
    {
        $this->load->model("dashboard/weblink");
        $this->data['banner'] = $this->model_dashboard_weblink->getListByAddonid("footerbanner");

        $this->id = "footerbanner";
        $this->template = "dashboard/footerbanner.tpl";
        $this->render();
    }
}

?>