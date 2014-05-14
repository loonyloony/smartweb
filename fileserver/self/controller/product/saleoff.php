<?php
class ControllerProductSaleoff extends Controller
{
	private $error = array();
	
	public function index()
	{		
		$this->load->model("product/saleoff");
		$this->getList();
	}
	
	private function getList() 
	{
		$this->data['insert'] = $this->url->http('core/user/insert');
		$this->data['delete'] = $this->url->http('core/user/delete');		
		$this->load->model("product/product");
		
		$this->data['orders'] = array();
		$where = "";
		
		/*$datasearchlike['orderid'] = $this->request->get['orderid'];
		
		$datasearchlike['address'] = $this->request->get['address'];
		$datasearchlike['email'] = $this->request->get['email'];
		$datasearchlike['phone'] = $this->request->get['phone'];
		
		$datasearch['userid'] = $this->request->get['userid'];
		*/
		
		
		$datasearchlike['customername'] = $this->request->get['customername'];
		
		$datasearch['status'] = $this->request->get['status'];
		
		$arr = array();
		foreach($datasearchlike as $key => $item)
		{
			if($item !="")
				$arr[] = " AND " . $key ." like '%".$item."%'";
		}
		
		foreach($datasearch as $key => $item)
		{
			if($item !="")
				$arr[] = " AND " . $key ." = '".$item."'";
		}
		//Truong hop khac
		$datasearch['fromdate'] = $this->date->formatViewDate($this->request->get['fromdate']);
		$datasearch['todate'] = $this->date->formatViewDate($this->request->get['todate']);
		
		if($datasearch['fromdate'] != "")
			$arr[] = " AND purchasedate >= '".$datasearch['fromdate']."'";
		
		if($datasearch['todate'] != "")
			$arr[] = " AND purchasedate <= '".$datasearch['todate']."'";
		
		
		$where .= implode("",$arr);
		
		$where .= " ORDER BY  `user_saleoff`.`purchasedate` DESC ";
		
		$medias = $this->model_product_saleoff->getList($where);
		
		
		//Page
		$page = isset ( $_GET["page"] ) ? intval ( $_GET["page"] ) : 1;

		$limit = 10;
		
		$page_start = ( $page - 1 ) * $limit;
		$page_end = $page * $limit;
		
		$numberpage = ceil (count($medias) / $limit ); 
		
		//in ra tổng số trang
		if ( $numberpage > 1 )
		{
			$list_page = " <b> Page: </b>";
		
			for ( $i = 1; $i <= $numberpage; $i++ )
			{
				if ( $i == $page )
				{
					$list_page .= " <td>[ <b>{$i}</b> ]</td> ";
				}
				else
				{
					$list_page .= "<td><a href='?route=product/saleoff&page={$i}'> {$i} </a></td>";
				}
			}
		}
		
		$i = 0;
		
		if(count($medias) > 0)
		{
			foreach($medias as $key => $item)
			{
				if($i >= $page_start)
				{

					$product = $this->model_product_product->getItem($item['parentproduct']);
					
					$item['productname'] = $product['productname'];
					$this->data['orders'][] = $item;
					
					
				}
				
				$i++;
				
				if ($i >= $page_end)
				{
					break;
				}
			}
		}

		
		$this->data['listpage'] = $list_page;

		
		$this->data['refres']=$_SERVER['QUERY_STRING'];
		$this->id='content';
		$this->template="product/saleoff_list.tpl";
		$this->layout="layout/center";
		$this->render();
	}
	
	public function updatestatus()
	{
		$this->load->model("product/saleoff");
		
		$data = $this->request->post;
		
		$this->model_product_saleoff->updateStatus($data);
		
		$this->data['output'] = "true";
		
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
	public function delete()
	{
		$listid=$this->request->post['delete'];
				
		$this->load->model("product/saleoff");
		if(count($listid))
		{
			foreach($listid as $orderid)
			{
				$this->model_product_saleoff->delete($orderid);
			}
			$this->data['output'] = "Xóa thành công";
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
	}
	
}
?>