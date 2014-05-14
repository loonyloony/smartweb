<?php
class ControllerSplashHeaderbanner extends Controller
{
    public function index()
    {
        $this->load->model("dashboard/weblink");
        $this->data['banner'] = $this->model_dashboard_weblink->getListByAddonid("headerbanner");

        $this->id = "footerbanner";
        $this->template = "splash/headerbanner.tpl";
        $this->render();
    }
}

?>