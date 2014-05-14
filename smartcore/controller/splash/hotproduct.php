<?php
class ControllerSplashHotproduct extends Controller
{
    public function index()
    {
        $this->load->model("core/product");
        $arrayHotProductId = $this->string->matrixToArray($this->model_core_product->getListProductAddon("AND addonid = 'hot_product'"), "productid");
        $this->data['products'] = $this->model_core_product->getGroupList(" AND p.image not like '' AND p.productid IN (" . implode(",", $arrayHotProductId) . ") ORDER BY date_modified DESC LIMIT 0,6");
        $this->document->addStyle("elife_product_list.css");
        $this->document->addStyle("splash_lastestproduct.css");
        $this->id = "lastestproduct";
        $this->template = "splash/hotproduct.tpl";
        $this->render();
    }
}

?>