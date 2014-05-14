<?php
class ControllerSidebarProductcollection extends Controller
{
    public function index()
    {
        $this->document->addScript("jquery.jcontent.0.8.js");
        $this->document->addScript("jquery.easing.min.1.3.js");
        $this->load->model("sidebar/product");

        $this->data['products'] = $this->model_sidebar_product->getProductAddonByAddonid("productcollection");

        $this->id = "supportonline";
        $this->template = "sidebar/product_collection.tpl";
        $this->render();
    }
}

?>