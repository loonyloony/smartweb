<?php
class ControllerSidebarPromotionsidebar extends Controller
{
    public function index()
    {
        $this->document->addScript("jquery.jcontent.0.8.js");
        $this->document->addScript("jquery.easing.min.1.3.js");
        $this->load->model("sidebar/weblink");

        $this->data['promotion'] = $this->model_sidebar_weblink->getListByAddonid("promotionsidebar");

        $this->id = "promotionbox";
        $this->template = "sidebar/promotionbox.tpl";
        $this->render();
    }


}

?>