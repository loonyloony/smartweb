<?php
class ControllerSplashHotandnewproducts extends Controller
{
    public function index()
    {
        $this->load->model("core/product");
        $arrayHotProductId = $this->string->matrixToArray($this->model_core_product->getListProductAddon("AND addonid = 'productcollection'"), "productid");

        if (count($arrayHotProductId)) {
            $this->data['hotproducts'] = $this->model_core_product->getGroupList(" AND p.image not like '' AND p.productid IN (" . implode(",", $arrayHotProductId) . ") ORDER BY date_modified DESC LIMIT 0,3");
        }

        //new products
        $this->data['newproducts'] = $this->model_core_product->getGroupList(" AND p.image not like '' ORDER BY date_modified DESC LIMIT 0,3 ");

        $this->document->addStyle("elife_product_list.css");
        $this->document->addStyle("splash_lastestproduct.css");
        $this->id = "lastestproduct";
        $this->template = "splash/hotandnewproducts.tpl";
        $this->render();
    }
}

?>