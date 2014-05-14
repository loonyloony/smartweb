<?php
class ControllerSplashCustombanner extends Controller
{
    public function index()
    {
        $this->data['media'] = $this->model_core_media->get1Item(" AND refersitemap like '%[108]%' ");

        $this->id = "custombanner";
        $this->template = "splash/custombanner.tpl";
        $this->render();
    }
}

?>