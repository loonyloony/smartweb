<?php
class ControllerSplashLastestproduct extends Controller
{
    public function index()
    {
        $this->load->model("core/product");
        $this->data['products'] = $this->model_core_product->getGroupList(" AND p.image not like '' ORDER BY date_modified DESC LIMIT 0,3 ");
        $this->document->addStyle("elife_product_list.css");
        $this->document->addStyle("splash_lastestproduct.css");
        $this->id = "lastestproduct";
        $this->template = "splash/lastestproduct.tpl";
        $this->render();
    }
}

?>