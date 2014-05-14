<?php
class ControllerDashboardMusicplayer extends Controller
{
    public function index()
    {
        $src = array('santa-claus.mp3', 'lastchristmas.mp3', 'jingle-bells.mp3');
        $x = rand(0, 2);
        $this->data['src'] = $src;
        $this->data['x'] = $x;
        $this->id = "musicplayer";
        $this->template = "dashboard/musicplayer.tpl";
        $this->render();
    }
}

?>