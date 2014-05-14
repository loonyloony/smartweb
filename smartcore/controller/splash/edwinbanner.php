<?php
class ControllerSplashEdwinbanner extends Controller
{
    public function index()
    {
        $this->load->model("splash/weblink");
        $this->data['banner'] = $this->model_splash_weblink->getListByAddonid("edwinbanner");

        if (SKINID == 'bbqspices') {
            $this->data['effectsetting'] = array(0 => 'data-transition="fadeup" data-startalign="center,top" data-zoom="in" data-zoomfact="2" data-endalign="center,bottom" data-panduration="5" data-colortransition="4"', 1 => 'data-transition="fadeup" data-startalign="left,top" data-zoom="in" data-zoomfact="2" data-endalign="right,bottom" data-panduration="5" data-colortransition="4"', 2 => 'data-transition="fadeup" data-startalign="center,bottom" data-zoom="in" data-zoomfact="2" data-endalign="center,top" data-panduration="5" data-colortransition="4"', 3 => 'data-transition="fadeup" data-startalign="right,center" data-zoom="in" data-zoomfact="2" data-endalign="left,center" data-panduration="5" data-colortransition="4"');
        }

        $this->id = "edwinbanner";
        $this->template = "splash/edwinbanner.tpl";
        $this->render();
    }
}

?>