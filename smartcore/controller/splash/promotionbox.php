<?php
class ControllerSplashPromotionbox extends Controller
{
    public function index()
    {
        $this->load->model("splash/banner");
        $this->data['banner'] = $this->model_splash_banner->getListByAddonid("splash_promotionbox");

        $this->document->addScript("jquery.simpleslides.js");
        $this->document->addStyle("elife_simpleslides.css");
        $this->document->addStyle("splash_promotionbox.css");
        $this->id = "promotionbox";
        $this->template = "splash/promotionbox.tpl";
        $this->render();
    }
}

?>