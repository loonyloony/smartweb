<?php
class ControllerSplashLastestnews extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.plugins.min.js");
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("elife_homeslider.css");
        $this->load->model("core/media");
        if (SKINID == 'taoemail') {
            $where = " AND refersitemap LIKE '%[148]%' ORDER BY statusdate DESC LIMIT 0,3";
            $this->data["news1"] = $this->model_core_media->getBlockNews($where);

            $where = " AND refersitemap LIKE '%[149]%' ORDER BY statusdate DESC LIMIT 0,8";
            $this->data["news2"] = $this->model_core_media->getBlockNews($where);
        } else {
            $where = " AND mediatype = 'media_news' ORDER BY statusdate DESC LIMIT 0,8";
            $this->data["news"] = $this->model_core_media->getBlockNews($where);
        }

        $this->id = "lastestnews";
        $this->template = "splash/lastestnews.tpl";
        $this->render();
    }
}

?>