<?php
	class ControllerModuleActive extends Controller
	{
		
		public function index()
		{
			
			$this->data['output'] = "false";
			
			$customerid = $this->request->get['customerid'];
			$activecode = $this->request->get['activecode'];
			
			$this->load->model("customer/customer");
			$customers = $this->model_customer_customer->checkActive($customerid, $activecode);
			
			if(count($customers) > 0)
			{
				$this->model_customer_customer->updateStatus($customerid, '1');
			}
			else
			{
				$this->data['active'] = 'false';
			}
			
			$this->id="active";
			$this->template="module/active.tpl";

			$this->render();
		}
		
	}
?>