<?php
class ControllerSplashProducttag extends Controller
{

    public function index()
    {
        $this->getList();
        $this->template = "splash/promotionproduct.tpl";
        $this->id = "content";
        $this->render();
    }

    private function getList()
    {

        $this->load->model("core/product");

        $limit = " LIMIT 0,8";

        //product tag
        $this->data['tagproducts'] = $this->model_core_product->getList(" AND p.image not like '' AND p.saleoff <> 0 ORDER BY date_modified DESC " . $limit, true);

        //new products
        $this->data['newproducts'] = $this->model_core_product->getList(" AND p.image not like '' ORDER BY date_modified DESC " . $limit, true);
    }

}

?>