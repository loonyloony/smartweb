<?php
class ControllerDashboardIntroduce extends Controller
{
    public function index()
    {
        if (SKINID == 'mercedes') {
            $this->load->model('core/media');
            $mediaid = 'default13853713401';
            $media = $this->model_core_media->getItem($mediaid);
            $this->data['media'] = $media;
            $this->data['link'] = $this->url->getURL($media['alias'], 'media', $media['mediaid']);
        }

        $this->id = "introduce";
        $this->template = "dashboard/introduce.tpl";
        $this->render();
    }
}

?>