<?php
class ControllerModuleSmartcart extends Controller
{
    private $error;

    public function index()
    {

        $data = $this->request->post;
        $this->getList();
    }

    //load that products have been added to cart
    private function getList()
    {
        $this->getCart();
        $this->template = "module/cart_list.tpl";
        $this->id = "content";
        $this->render();
    }

    //use this function when the customers change the size product
    public function updateSize()
    {
        $data = $this->request->post;

        $cartitems = $this->session->data['cart'];
        $cartitems[$data['productid']]['sizeproduct'] = $data['size'];
        $this->session->set("cart", $cartitems);

        $this->data['output'] = "true";

        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }

    //use this function when the customers change the color product
    public function updateColor()
    {
        $data = $this->request->post;

        $cartitems = $this->session->data['cart'];
        $cartitems[$data['productid']]['colorproduct'] = $data['color'];
        $this->session->set("cart", $cartitems);

        $this->data['output'] = "true";

        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }

    //use this function when the customers change quantity
    public function updateQty()
    {
        $data = $this->request->post;

        $cartitems = $this->session->data['cart'];
        $cartitems[$data['productid']]['qtyincart'] = $data['qtyincart'];

        $this->load->model("customer/customer");
        $this->data['customer'] = $this->model_customer_customer->getItemByEmail($this->session->data['email']);

        //
        if (isset($cartitems) && count($cartitems) > 0) {
            $carttotal = 0;
            $discountfanprice = 0;
            $totaldiscountfanprice = 0;
            $carttotalnodiscount = 0;
            foreach ($cartitems as $item) {
                //add new elements
                //product size
                if ($item['size'] != "") {
                    $this->data['size'][$item['productid']] = explode(",", $item['size']);
                    if (!isset($cartitems[$item['productid']]['sizeproduct'])) {
                        $cartitems[$item['productid']]['sizeproduct'] = $this->data['size'][$item['productid']][0];
                    }
                }

                //product color
                if ($item['color'] != "") {
                    $this->data['color'][$item['productid']] = explode(",", $item['color']);
                    if (!isset($cartitems[$item['productid']]['colorproduct'])) {
                        $cartitems[$item['productid']]['colorproduct'] = $this->data['color'][$item['productid']][0];
                    }
                }

                //check product quantity in cart
                if ($item['qtyincart'] == 0 || !isset($item['qtyincart'])) {
                    $item['qtyincart'] = 1;
                }

                //calc price
                //discount products
                //use discountFlag to check discount for fan(false is discount, true is not discount)
                $discountFlag = "false";
                if ($item['saleoff'] > 0 && $item['saleoff'] < $item['price']) {
                    //$item['price'] = $item['saleoff'];
                    $carttotalnodiscount += $item['saleoff'] * $item['qtyincart'];
                    $discountFlag = "true";
                } else {
                    $carttotalnodiscount += $item['price'] * $item['qtyincart'];
                }

                //discount product price for fan except discount products
                if (isset($this->data['customer']['discount']) && $this->data['customer']['discount'] > 0 && trim($this->data['customer']['discount']) != "" && $discountFlag == "false") {
                    $discountfanprice = round($item['price'] * ($this->data['customer']['discount'] / 100), 2);
                    $totaldiscountfanprice += $discountfanprice * $item['qtyincart'];
                }

                //calc cart total
                //$carttotalnodiscount += $item['price'] * $item['qtyincart'];

                //discount price per each product for fan
                if ($item['saleoff'] == 0) {
                    if (isset($this->data['customer']['discount']) && $this->data['customer']['discount'] > 0 && trim($this->data['customer']['discount']) != "") {
                        //calc product price

                    }
                }


                //add more data for product item in cart
                $cartitems[$item['productid']]['price'] = $item['price'];
                $cartitems[$item['productid']]['qtyincart'] = $item['qtyincart'];
            }
        }

        //
        $this->session->set('totaldiscountfanprice', $totaldiscountfanprice);
        //confirm fan and in cart not a discount product
        if ($totaldiscountfanprice > 0) {
            $this->data['fan'] = "true";
        }

        $this->data['cart'] = $cartitems;
        //calc cart total
        $carttotal = $carttotalnodiscount - $totaldiscountfanprice;

        //set session
        $this->session->set('carttotalnodiscount', $carttotalnodiscount);


        //check promotion
        $this->load->model("core/order");
        $promotion = $this->model_core_order->getPromotion(" AND " . $carttotal . " >= amount ORDER BY amount DESC");
        if (count($promotion) > 0) {
            $this->session->set("carttotalnopromotion", $carttotal);
            $this->data['promotionstatus'] = "true";
            $this->data['promotion'] = $promotion;
            $discountPromotion = round($carttotal * ($this->data['promotion']['discount'] / 100), 2);
            $carttotal = $carttotal - $discountPromotion;

        }

        $this->session->set("carttotal", $carttotal);
        $this->session->set("cart", $cartitems);

        $this->data['output'] = "true";

        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }

    private function getCart()
    {
        $this->load->model("customer/customer");

        $this->data['customer'] = $this->model_customer_customer->getItemByEmail($this->session->data['email']);


        $cartitems = $this->session->data['cart'];

        if (isset($cartitems) && count($cartitems) > 0) {
            $carttotal = 0;
            $discountfanprice = 0;
            $totaldiscountfanprice = 0;
            $carttotalnodiscount = 0;
            foreach ($cartitems as $item) {
                //add new elements
                //product size
                if ($item['size'] != "") {
                    $this->data['size'][$item['productid']] = explode(",", $item['size']);
                    if (!isset($cartitems[$item['productid']]['sizeproduct'])) {
                        $cartitems[$item['productid']]['sizeproduct'] = $this->data['size'][$item['productid']][0];
                    }
                }

                //product color
                if ($item['color'] != "") {
                    $this->data['color'][$item['productid']] = explode(",", $item['color']);
                    if (!isset($cartitems[$item['productid']]['colorproduct'])) {
                        $cartitems[$item['productid']]['colorproduct'] = $this->data['color'][$item['productid']][0];
                    }
                }

                //check product quantity in cart
                if ($item['qtyincart'] == 0 || !isset($item['qtyincart'])) {
                    $item['qtyincart'] = 1;
                }

                //calc price
                //discount products
                //use discountFlag to check discount for fan(false is discount, true is not discount)
                $discountFlag = "false";
                if ($item['saleoff'] > 0 && $item['saleoff'] < $item['price']) {
                    //$item['price'] = $item['saleoff'];
                    $carttotalnodiscount += $item['saleoff'] * $item['qtyincart'];
                    $discountFlag = "true";
                } else {
                    $carttotalnodiscount += $item['price'] * $item['qtyincart'];
                }

                //discount product price for fan except discount products
                if (isset($this->data['customer']['discount']) && $this->data['customer']['discount'] > 0 && trim($this->data['customer']['discount']) != "" && $discountFlag == "false") {
                    $discountfanprice = round($item['price'] * ($this->data['customer']['discount'] / 100), 2);
                    $totaldiscountfanprice += $discountfanprice * $item['qtyincart'];
                }

                //calc cart total
                //$carttotalnodiscount += $item['price'] * $item['qtyincart'];

                //discount price per each product for fan
                if ($item['saleoff'] == 0) {
                    if (isset($this->data['customer']['discount']) && $this->data['customer']['discount'] > 0 && trim($this->data['customer']['discount']) != "") {
                        //calc product price

                    }
                }


                //add more data for product item in cart
                $cartitems[$item['productid']]['price'] = $item['price'];
                $cartitems[$item['productid']]['qtyincart'] = $item['qtyincart'];
            }

            //
            $this->session->set('totaldiscountfanprice', $totaldiscountfanprice);
            //confirm fan and in cart not a discount product
            if ($totaldiscountfanprice > 0) {
                $this->data['fan'] = "true";
            }

            $this->data['cart'] = $cartitems;
            //calc cart total
            $carttotal = $carttotalnodiscount - $totaldiscountfanprice;

            //set session
            $this->session->set('carttotalnodiscount', $carttotalnodiscount);

            //check promotion
            $this->load->model("core/order");
            $promotion = $this->model_core_order->getPromotion(" AND " . $carttotal . " >= amount ORDER BY amount DESC");
            if (count($promotion) > 0) {
                $this->session->set("carttotalnopromotion", $carttotal);
                $this->data['promotionstatus'] = "true";
                $this->data['promotion'] = $promotion;
                $discountPromotion = round($carttotal * ($this->data['promotion']['discount'] / 100), 2);
                $carttotal = $carttotal - $discountPromotion;

            }

            $this->session->set("carttotal", $carttotal);
            $this->session->set("cart", $cartitems);

        }
    }

    public function confirmOrder()
    {
        $data = $this->request->post;

        //check shopping cart config at site table: required login or not
        if ($this->validateOrder($data)) {
            $this->data['output'] = "true";
        } else {
            $this->data['output'] = json_encode($this->error);
        }

        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }

    private function validateOrder($data)
    {
        $this->load->model("core/product");
        if (count($data['cartitems']) > 0) {
            foreach ($data['cartitems'] as $item) {
                $product = $this->model_core_product->getItem($item['productid']);
                //check subtract stock
                if ($product['subtract_stock'] == '1') {
                    $productinventory = $product['quantity'] - $item['qtyincart'];
                    //check quantity
                    if ($productinventory < 0 && $product['quantity'] > 0) {
                        $err = $this->language->get('war_lackofqty') . " " . $product['quantity'];
                    } elseif ($product['quantity'] <= 0) {
                        $err = $this->language->get('war_outofstock');
                    }
                }

                if ($err != "") {
                    $this->error[$item['productid']] = $err;
                }

            }
        }

        if (count($this->error) > 0) {
            return false;
        } else {
            return true;
        }
    }

    public function validate()
    {
        $my_cart = $this->request->post['prd'];

        $flag = true;
        foreach ($my_cart as $key => $item) {
            $data['product-id'] = $key;
            $data['product-qty'] = $item['product-qty'];
            if (!$this->validate_prd($data)) {
                $flag = false;
            }
        }
        if ($flag) {
            /*$new_cart = array();
            foreach ($my_cart as $key => $value) {
                if ($value != 0) {
                    $new_cart[$key]['product-id'] = $key;
                    $new_cart[$key]['product-qty'] = $value;
                }
            }*/
            $this->session->set('cart', $my_cart);
            $this->data['output'] = "true";
        } else {
            $this->data['output'] = json_encode($this->err);
        }
        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }

    private function validate_prd($data)
    {
        $productid = $data['product-id'];
        $productqty = $data['product-qty'] - 0;

        if ($productqty == "" && $productqty != 0) {
            $err = $this->language->get('war_invalidqty');
        } elseif (!is_int($productqty)) {
            $err = $this->language->get('war_invalidqty');
        } else {
            // check config
            $strictPrice = $this->config->get('config_strictPrice');

            $this->load->model("core/product");
            $product = $this->model_core_product->getItem($productid);
            //check het hang
            if (SKINID != "mesushop" && SKINID != "hatomex") {
                if (($product['price'] == 0 && $strictPrice == 1) || $product['quantity'] == 0) {
                    $err = $this->language->get('war_outofstock');
                } elseif ($product['quantity'] < $productqty) {
                    $err = $this->language->get('war_lackofqty') . " " . $qty_left . " " . $this->language->get('text_product');
                }
            }
        }

        if ($err == "") {
            return true;
        } else {
            $this->err[$productid] = $err;
            return false;
        }
    }

    public function validate_qty()
    {
        $data = $this->request->post;
        $prd['product-id'] = $data['id'];
        $prd['product-qty'] = $data['qty'];
        if ($this->validate_prd($prd)) {
            $this->data['output'] = "true";
        } else {
            $this->data['output'] = $this->err[$prd['product-id']];
        }
        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }

    //delete items in cart
    public function delete()
    {
        $data = $this->request->post['delete'];
        $cartitems = $this->session->data['cart'];
        if (count($data) > 0) {
            foreach ($data as $item) {
                unset($cartitems[$item]);
            }
        }

        $this->session->set("cart", $cartitems);

        $this->data['output'] = "true";

        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }

    public function addToCart()
    {
        //load library files
        $this->load->model("core/product");

        //receive data from product-detail.tpl by post method
        $cartitem = $this->request->post;

        //load product item
        $product = $this->model_core_product->getItem($cartitem['productid']);

        //add data to cart
        $cartitems[$product['productid']] = $product;

        //set session shopping cart
        if (!isset($this->session->data['cart'])) {
            $this->session->set("cart", $cartitems);
        } else {
            $my_cart = $this->session->data['cart'];
            $my_cart[$product['productid']]['qtyincart'] += 1;
            $my_cart[$product['productid']] = $product;
            $this->session->set("cart", $my_cart);
        }

        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }
}

?>