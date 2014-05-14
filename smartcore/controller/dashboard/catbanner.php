<?php
class ControllerDashBoardCatbanner extends Controller
{
    public function index()
    {

        $this->load->model("dashboard/weblink_dulich_cangio");

        $banner = $this->model_dashboard_weblink_dulich_cangio->getList("sloganbanner", " AND (wd.title = '" . $this->request->get['__seourl__'] . "' )");
        if (count($banner) <= 0) {
            $banner = $this->model_dashboard_weblink_dulich_cangio->getList("sloganbanner", " AND (wd.title = 'all' OR wd.title = '" . $this->request->get['__seourl__'] . "' )");
        }
        $this->data['banner'] = $banner;

        $this->id = "sloganbanner";
        $this->template = "dashboard/catbanner_cangio.tpl";
        $this->render();
    }
}

?>