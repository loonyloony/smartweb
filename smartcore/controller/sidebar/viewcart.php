<?php
class ControllerSidebarViewcart extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");
        $my_cart = $this->session->data['cart'];

        $this->data['totalproductincart'] = count($my_cart);


        if ($my_cart != "" && count($my_cart) != 0) {
            $arr_prd = "";

            foreach ($my_cart as $prd) {
                if ($prd['product-id'] != "") {
                    $arr_prd .= $prd['product-id'] . ",";
                }
            }
            $arr_prd = substr($arr_prd, 0, -1);

            if ($arr_prd != "") {
                $where = "AND p.productid in (" . $arr_prd . ")";

                $this->load->model("core/product");
                $products = $this->model_core_product->getGroupList($where);
                $total = 0;
                foreach ($products as $prd) {
                    if ($prd['saleoff'] != 0) {
                        $prd['price'] = $prd['saleoff'];
                    }

                    $my_cart[$prd['productid']]['image'] = $prd['image'];
                    $my_cart[$prd['productid']]['name'] = $prd['name'];
                    $my_cart[$prd['productid']]['link'] = $prd['link'];
                    $my_cart[$prd['productid']]['price'] = $prd['price'];
                    $my_cart[$prd['productid']]['subtract_stock'] = $prd['subtract_stock'];
                    $total += $prd['price'] * $my_cart[$prd['productid']]['product-qty'];
                }
            }
        }
        $this->session->set('cart_total', $total);

        $this->data['cart_total'] = $this->session->data['cart_total'];
        $this->id = "viewcart";
        $this->template = "sidebar/viewcart.tpl";
        $this->render();
    }

    public function addProductToCart()
    {
        $data = $this->request->get;

        $this->load->model("core/product");

        if (!preg_match("/^[0-9]/", $data['quantity']) || $data['quantity'] == "" || $data['quantity'] == 0) {
            $data['quantity'] = 1;
        }

        $this->data['product'] = $this->model_core_product->getItem($data['productid']);

        $_SESSION['cart'][$this->data['product']['productid']]['product-id'] = $this->data['product']['productid'];

        $_SESSION['cart'][$this->data['product']['productid']]['product-qty'] += $data['quantity'];

        $this->id = "addproducttocart";
        $this->template = "sidebar/add_product_to_cart.tpl";
        $this->render();
    }

    public function addProductOptionToCart()
    {

        $data = $this->request->post;

        //load product

        //select option

        //check option value

        $this->load->model("core/product");

        $this->data['product'] = $this->model_core_product->getItem($data['productid']);


        $_SESSION['cart'][$this->data['product']['productid']]['product-id'] = $this->data['product']['productid'];
        $_SESSION['cart'][$this->data['product']['productid']]['type'] = $data['type'];

        if (trim($data['checkboxoption']) != "") {
            $checkbox = substr($data['checkboxoption'], 0, -1);
            $arrCheckbox = explode(",", $checkbox);
            if (count($arrCheckbox) > 0) {
                foreach ($arrCheckbox as $item) {
                    $optionvalue = $this->model_core_product->getItemOptionValueByProductIdandOptionValueId(trim($data['productid']), $item);

                    if ($optionvalue['image'] != "") {
                        $_SESSION['cart'][$this->data['product']['productid']]['image'][] = $optionvalue['image'];
                    }
                }

                if (count($arrCheckbox) != 0) {
                    $_SESSION['cart'][$this->data['product']['productid']]['product-qty'] = count($arrCheckbox);
                } else {
                    $_SESSION['cart'][$this->data['product']['productid']]['product-qty'] += 1;
                }
            }
        }

        if (trim($data['cboptionvalue']) != "") {
            $_SESSION['cart'][$this->data['product']['productid']]['product-option-value']['cboptionvalue'] = $data['cboptionvalue'];
        }

        $this->id = "addproducttocart";
        $this->template = "sidebar/add_product_to_cart.tpl";
        $this->render();
    }

    public function getTotalProduct()
    {
        $my_cart = $this->session->data['cart'];

        if ($my_cart != "" && count($my_cart) != 0) {
            $arr_prd = "";
            foreach ($my_cart as $prd) {
                if ($prd['product-id'] != "") {
                    $arr_prd .= $prd['product-id'] . ",";
                }
            }
            $arr_prd = substr($arr_prd, 0, -1);

            if ($arr_prd == "") {
                $where = "AND p.productid in (" . $arr_prd . ")";

                $this->load->model("core/product");
                $products = $this->model_core_product->getGroupList($where);
                $total = 0;
                foreach ($products as $prd) {
                    if ($prd['saleoff'] != 0) {
                        $prd['price'] = $prd['saleoff'];
                    }

                    $my_cart[$prd['productid']]['image'] = $prd['image'];
                    $my_cart[$prd['productid']]['name'] = $prd['name'];
                    $my_cart[$prd['productid']]['link'] = $prd['link'];
                    $my_cart[$prd['productid']]['price'] = $prd['price'];
                    $my_cart[$prd['productid']]['subtract_stock'] = $prd['subtract_stock'];
                    $total += $prd['price'] * $my_cart[$prd['productid']]['product-qty'];
                }
            }
        }
        $this->session->set('cart_total', $total);

        $this->data['output'] = count($this->session->data['cart']) . "-" . $this->string->numberFormate($this->session->data['cart_total']);

        $this->template = "common/output.tpl";
        $this->render();
    }
}

?>