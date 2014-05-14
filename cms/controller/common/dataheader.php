<?php
	class ControllerCommonDataheader extends Controller
	{
		var $php_self;
		var $append = "";
		
		public function index()
		{
			$this->id="footer";
			$this->template="common/footer.tpl";
			$this->render();
		}
		
		public function displaysearch($column_list = array(),$module="", $link_xemtatca)
		{
			$this->load->language('common/dataheader');
			$this->load->model("common/control");
			$this->data = array_merge($this->data, $this->language->getData());
			
			$this->getURLDefault();
			if($link_xemtatca != "")
			{
				$this->data['link_xemtatca'] = $link_xemtatca;	
			}
			else
			{
				$this->data['link_xemtatca'] = $this->php_self;
			}
			
			//get all request
			
			
			$orderby = $this->request->get['orderby'];
			$ordertype = $this->request->get['ordertype'];
			$datefield = $this->request->get['datefield'];
			$textfield = $this->request->get['textfield'];
			$numbfield = $this->request->get['numbfield'];
			$numbtype = $this->request->get['numbtype'];
			
			//Sort
			$orderbylist = array();
			$ordertypelist = array("DESC"=>"Z-A","ASC"=>"A-Z");
			$searchlist = array();

			foreach($column_list as $key => $value)
			{
				$arr = explode(";",$value);
				$orderbylist[$arr[1]] = $arr[2];	
				$searchlist[$arr[0]][$arr[1]] = $arr[2];
			}
			
			$this->data['cbx_orderby'] = $this->model_common_control->getDataComboboxDefault($orderbylist, $orderby, "");
			$this->data['cbx_ordertype'] = $this->model_common_control->getDataComboboxDefault($ordertypelist, $ordertype, "");
			
			//search
			$this->data['flag_date'] = $this->data['flag_text'] = $this->data['flag_numb'] = false;
			if(count($searchlist["date"]) > 0) $this->data['flag_date'] = true;
			if(count($searchlist["text"]) > 0) $this->data['flag_text'] = true;
			if(count($searchlist["numb"]) > 0) $this->data['flag_numb'] = true;
			
			$this->data['cbx_date'] = $this->model_common_control->getDataComboboxDefault($searchlist["date"], $datefield, "");
			$this->data['cbx_text'] = $this->model_common_control->getDataComboboxDefault($searchlist["text"], $textfield, "");
			$this->data['cbx_numb'] = $this->model_common_control->getDataComboboxDefault($searchlist["numb"], $numbfield, "");
			
			//Number type
			$numbertypelist = array("="=>"=","<="=>"<=",">="=>">=","<>"=>"<>");
			$this->data['cbx_numbtype'] = $this->model_common_control->getDataComboboxDefault($numbertypelist, $numbtype,"1");
			
			foreach($this->request->get as $key => $value)
			{
				$this->data['datasearch'][$key] = urldecode($value);	
			}
			$this->data['module']=$module;
			$this->id="dataheader";
			$this->template="common/dataheader.tpl";
			$this->render();
		}
		
		private function getURLDefault()
		{
			$link = $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
			$link = str_replace("www.", "", $link);
			
			$http_server = str_replace('http://',"",$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
			$http_server = str_replace('www.',"",$http_server);
			
			$link = str_replace($http_server, "", $link);
			$link = str_replace($http_server, "", $link);
			
			$pos = strpos($link, "?");
			$this->php_self = substr($link,0,$pos);
			
			$append = str_replace($this->php_self."?","",$link);
			$pagetext = "page=".$this->page."&";
			$rpptext = "rpp=".$this->rows_per_page."&";
			$append = str_replace($pagetext, "", $append);
			$append = str_replace($rpptext, "", $append);
			$this->append = $append;	
		}
	}
?>