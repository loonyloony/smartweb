<?php
class ControllerDashboardBannertext extends Controller
{
    public function index()
    {
        $this->load->model("dashboard/weblink");
        $this->data['banner'] = $this->model_dashboard_weblink->getListByAddonidNoLang("textlink");

        $this->id = "bannertext";
        $this->template = "dashboard/bannertext.tpl";
        $this->render();
    }
}

?>