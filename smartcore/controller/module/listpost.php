<?php
class ControllerModuleListPost extends Controller
{

    public function index()
    {
        $this->getListProperty();
    }

    public function getListProperty()
    {
		if($this->request->get['page'] != '') {
				$page = (int)trim(@$this->request->get['page']);
			} else {
				$page = 1;	
			}
			//number of row per page
			$numpage = 20;
		
        $this->load->model('core/propertyproduct');
		
		//get total of records
		
		$where = " AND p.customerid = '" . $this->member->getId() . "' ";
		$total = $this->model_core_propertyproduct->countProduct($where);
		$total_page =  ceil($total/$numpage);
		
		$link = $this->smartweb->weburl;
				
		$pagination = "";
		// generate pagination; 5 before and 5 after page
		for ($i = $page -5; $i < $page; $i++) {
			if($i<1) continue;
			$pagination .= "<li><a href='".$link."?page=".$i."' >".$i."</a></li>";
		}
		
		for ($i = $page; $i <= $page+5; $i++) {
			if($i>$total_page) break;
			if($page == $i)
				$pagination .= "<li class='active'><a>".$i."</a></li>";
			else 
				$pagination .= "<li><a href='".$link."?page=".$i."' >".$i."</a></li>";
		}
		
		$this->data['pagination_li'] = $pagination;
		
		$limit_from = ($page-1)*$numpage;
		
		$where .= " LIMIT ".$limit_from.",".$numpage." ";
		
        $this->data['products'] = $this->model_core_propertyproduct->getList($where, false, false);
        $arrStatus = array(array("display" => "Published", "value" => "1"), array("display" => "Hidden", "value" => "2"));
        foreach ($this->data['products'] as $key => $item) {
            $this->data['products'][$key]['cboStatus'] = $this->common->combobox($arrStatus, "display", "value", $item['status']);
            if (SKINID == 'singapore') {
                $this->data['products'][$key]['link_edit'] = "free-listing.html?step=1&productid=" . $item['productid'];
            }
        }
        $this->template = "module/listpost_propertyproduct.tpl";
        $this->id = "content";
        $this->render();
    }

    public function updatePropertyStatus()
    {
        $productid = $this->request->post['productid'];
        $status = $this->request->post['status'];
        if ($productid == '' || $status == '') {
            $this->data['output'] = "error1";
        } else {
            $this->load->model('core/propertyproduct');
            $product = $this->model_core_propertyproduct->getItemBasic($productid);
            if ($product == '') {
                $this->data['output'] = "error2";
            } else {
                //check if product belong to user
                if ($product['customerid'] != $this->member->getId()) {
                    $this->data['output'] = "error3";
                } else {
                    $this->model_core_propertyproduct->updateStatus($productid, $status);
                    $this->data['output'] = "true";
                }
            }
        }
        $this->template = "common/output.tpl";
        $this->render();
    }
}

?>