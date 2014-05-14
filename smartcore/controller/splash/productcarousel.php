<?php
class ControllerSplashProductCarousel extends Controller
{
    public function index()
    {
        $this->document->addScript("jquery.easing.min.1.3.js");
        $this->document->addScript("jquery-mousewheel.js");
        $this->document->addScript("jquery.contentcarousel.js");

        $this->document->addStyle("jquery.jscrollpane.css");
        $this->document->addStyle("contentcarousel.css");

        $this->load->model("core/product");
        $products = $this->model_core_product->getProductTop(16);

        $this->data['products'] = $products;

        $this->id = "productcarousel";
        $this->template = "splash/productcarousel.tpl";
        $this->render();
    }
}

?>