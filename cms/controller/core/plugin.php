<?php 
class ControllerCorePlugin extends Controller{
	
	public function index(){
		
		$this->getList();
		
		$this->id='content';
		$this->template='core/plugin_list.tpl';
		$this->layout="layout/center";	
		$this->render();
	}
	
	public function getList(){
		$route = $this->getRoute();
		
		$this->data['insert'] = $this->url->http('core/plugin/insert');
		$this->data['delete'] = $this->url->http('core/plugin/remove');
		
		$this->load->model("core/plugin");
		
		$where = " AND language_id = '" . $this->language->getCode() . "'";
		$arr_plugin = $this->model_core_plugin->getList($where);
		
		foreach($arr_plugin as $item){
			$item['link'] = $this->url->http('core/plugin/update&code='.$item['code']);
			
			$this->data['plugin'][] = $item;
		}
	}
	
	public function update(){
		$this->getForm();	
	}
	
	public function getForm(){
		$this->load->model("core/plugin");
		$this->load->model("core/language");
		
		$this->data['module'] = $this->model_core_plugin->getModule();
		
		$arr_language = $this->model_core_language->getLanguages();
		$this->data['language'] = $this->string->matrixToArray($arr_language, "code");
		
		if($this->request->get['code'] != ""){
			$arr_plugin = $this->model_core_plugin->getItem($this->request->get['code']);
			
			$this->data['plugin']['code'] = $this->request->get['code'];
			$this->data['plugin']['moduleid'] = $arr_plugin[0]['moduleid'];
			foreach($arr_plugin as $item){
				$language_id = $item['language_id'];
				$this->data['plugin'][$language_id]['name'] = $item['plugin_name'];
				$this->data['plugin'][$language_id]['id'] = $item['plugin_id'];
			}
		}
		
		
		$this->id='content';
		$this->template='core/plugin_form.tpl';
		$this->layout="layout/center";	
		$this->render();		
	}
	
	public function insert(){
		$this->getForm();
	}
	
	public function save(){
		$this->load->model("core/plugin");
		$data = $this->request->post;
			
		if($this->validateForm($data)){
			if($data['id'][0] != ""){
				foreach($data['name'] as $key => $value){
					$item['language_id'] = $key;
					$item['plugin_name'] = $value;
					$item['moduleid'] = $data['moduleid'];
					$item['code'] = $data['code'];
					$item['plugin_id'] = $data['id'][$key];
					
					$this->model_core_plugin->update($item);
				}
			}else{
				if(isset($data['name'])){
					foreach($data['name'] as $key => $value){
						$item['language_id'] = $key;
						$item['plugin_name'] = $value;
						$item['moduleid'] = $data['moduleid'];
						$item['code'] = $data['code'];
						
						$this->model_core_plugin->insert($item);
					}	
				}	
			}
			
			$this->data['output'] = "true";
		}else{
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item."<br>";
			}
		}
		
		$this->id='content';
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function validateForm($data){
		if(trim($data['code']) == ''){
			$this->error['code'] = $this->data['warning_code_plugin'];
		}
		
		if(count($this->error) > 0){
			return false;	
		}else{
			return true;
		}
	}
}
?>