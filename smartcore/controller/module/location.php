<?php

class ControllerModuleLocation extends Controller

{

    public function index()
    {

        $this->load->model("core/media");

        $mediaid = $this->smartweb->objectid;

        $this->data['location']['zoom'] = $this->model_core_media->getInformation($mediaid, 'zoom');

        if ($this->data['location']['zoom'] == "") {
            $this->data['location']['zoom'] = 5;
        }

        $this->data['location']['x'] = $this->model_core_media->getInformation($mediaid, 'x');

        if ($this->data['location']['x'] == "") {
            $this->data['location']['x'] = 14.058324;
        }

        $this->data['location']['y'] = $this->model_core_media->getInformation($mediaid, 'y');

        if ($this->data['location']['y'] == "") {
            $this->data['location']['y'] = 108.277199;
        }


        $this->id = "location";

        $this->template = "module/location.tpl";

        $this->render();

    }


    public function loadLocation($mediaid)
    {

        $this->load->model("core/media");

        $this->data['location']['zoom'] = $this->model_core_media->getInformation($mediaid, 'zoom');

        if ($this->data['location']['zoom'] == "") {
            $this->data['location']['zoom'] = 5;
        }

        $this->data['location']['x'] = $this->model_core_media->getInformation($mediaid, 'x');

        if ($this->data['location']['x'] == "") {
            $this->data['location']['x'] = 14.058324;
        }

        $this->data['location']['y'] = $this->model_core_media->getInformation($mediaid, 'y');

        if ($this->data['location']['y'] == "") {
            $this->data['location']['y'] = 108.277199;
        }


        $this->id = "location";

        $this->template = "module/location.tpl";

        $this->render();

    }

}

?>