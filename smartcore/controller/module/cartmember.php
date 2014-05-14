<?php
class ControllerModuleCartmember extends Controller
{
    public function index()
    {
        if ($this->member->getId() == '') {
            $this->data['output'] = $this->language->get('war_logintopay');
            $this->id = "content";
            $this->template = "common/output.tpl";
            $this->render();
            return;
        } else {
            if (SKINID == 'fanhanghieu') {
                $this->getSmartOrderList();
            } else {
                $this->getList();
            }

        }
    }

    private function getList()
    {
        $this->load->model("core/order");
        $this->data['list_order'] = $this->model_core_order->getList(" AND `customerid` = '" . $this->member->getID() . "'", "status DESC");
        $this->data['stt_map'] = array("%" => $this->language->get('text_all'), "pending" => $this->language->get('text_pending'), "active" => $this->language->get('text_active'), "deliver" => $this->language->get('text_deliver'), "cancel" => $this->language->get('text_cancel'),);
        $this->template = "module/order_member.tpl";
        $this->id = "content";

        $this->render();
    }

    public function getSmartOrderList()
    {
        $this->load->model("customer/customer");

        // init value
        $itemperpage = 10;
        $data = $this->request->get;

        $page = $data['page'] == "" ? 1 : $data['page'];

        //search
        $where .= " AND customerid = " . $this->member->getID();
        $where .= " AND `status` = 'deliver'";

        //get order and pagination
        $this->load->model("core/smartorder");
        $total = $this->model_core_smartorder->count_total($where);
        $totalPage = ceil($total['cnt'] / $itemperpage);
        $this->data['paginate'] = $this->paginate($page, $totalPage);

        $limit = " LIMIT " . ($page - 1) * $itemperpage . ", " . $itemperpage . " ";
        $arrOrders = $this->model_core_smartorder->getListFull($where, "orderid DESC", $limit);
        if (count($arrOrders) > 0) {
            foreach ($arrOrders as $item) {
                //variables
                $totalorder = 0;

                //load customer information
                $customer = $this->model_customer_customer->getItem($item['customerid']);
                $item['customer'] = $customer;

                //load products
                $item['products'] = $this->model_core_smartorder->getProductsByOrderid($item['orderid']);

                //discount orders have total which greater than 1,000,000 or 2,000,000
                if (count($item['products'])) {
                    foreach ($item['products'] as $product) {
                        $totalorder += $product['subtotal'];
                    }
                }
                //load khuyen mai
                //if($totalorder > 0){
                //	$item['promotion'] = $this->model_core_smartorder->getPromotionByOrderTotal($totalorder);
                //}
                $this->data['orders'][] = $item;
            }
        }

        $this->template = "module/smartorder.tpl";
        $this->id = "content";
        $this->render();
    }

    private function paginate($page, $total)
    {
        $result .= "<ul class='elife-pagination elife-right'>";
        if ($total == 1 || $total == 0) {
            return;
        }

        if ($page != 1) {
            $result .= "<li><a onclick='paginate(1)' ><<</a></li>";
            $result .= "<li><a onclick='paginate(" . ($page - 1) . ")' ><</a></li>";
        }
        for ($i = $page - 5; $i <= $page; $i++) {
            $pg = $i;
            if ($pg > 0) {
                if ($pg != $page) {
                    $result .= "<li><a onclick='paginate(" . $pg . ")'>" . $pg . "</a></li>";
                } else {
                    $result .= "<li><a class='current' onclick='paginate(" . $pg . ")' >" . $pg . "</a></li>";
                }
            }
        }
        for ($i = $page + 1; $i <= $page + 5; $i++) {
            $pg = $i;
            if ($pg <= $total) {
                if ($pg != $page) {
                    $result .= "<li><a onclick='paginate(" . $pg . ")'>" . $pg . "</a></li>";
                } else {
                    $result .= "<li><a class='current' onclick='paginate(" . $pg . ")'>" . $pg . "</a></li>";
                }
            }
        }

        if ($page != $total && $total != 0) {
            $result .= "<li><a onclick='paginate(" . ($page - 1) . ")' >></a></li>";
            $result .= "<li><a onclick='paginate(" . ($total) . ")' >>></a></li>";
        }
        $result .= "<div class='clearer'></div>";
        $result .= "</ul>";
        return $result;
    }

}

?>