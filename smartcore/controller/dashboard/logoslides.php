<?php
class ControllerDashboardLogoslides extends Controller
{
    public function index()
    {

        $this->load->model("splash/weblink");
        $this->data['logoslides'] = $this->model_splash_weblink->getListByAddonid("logoslides");

        $this->id = "logoslides";
        $this->template = "dashboard/logoslides.tpl";
        $this->render();
    }
}

?>