<?php
class ControllerSplashThreehometagnews extends Controller
{
    public function index()
    {
        $this->load->model("core/media");

        $where = " AND groupkeys LIKE '%home%' ";
        $arrayOfNews = $this->model_core_media->getListMedia($where, 0, 3);
        if (count($arrayOfNews) > 0) {
            foreach ($arrayOfNews as $key => $news) {
                $arrayOfNews[$key]['link'] = $this->url->getURL($news['alias'], 'media', $news['mediaid']);
            }
        }
        $this->data['media'] = $arrayOfNews;
        $this->id = "lastestproduct";
        $this->template = "splash/threehometagnews.tpl";
        $this->render();
    }

}

?>