<?php
class ControllerDashboardHotnews extends Controller
{
    public function index()
    {
        $this->load->model("core/media");
        $where = " AND mediatype = 'media_news'";
        $this->data['news'] = $this->model_core_media->getListMedia($where, 0, 6);

        if (SKINID == "singapore") {
            $this->data['products'] = $this->loadModule("module/searchpropertyproduct");
        }

        $this->id = "lastestnews";
        $this->template = "dashboard/hotnews.tpl";
        $this->render();
    }
}

?>