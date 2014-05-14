<?php 
 class ControllerAddonDownload extends Controller{
	
	private $error = array();
	
	public function index(){
		$this->getList();
	}
	
	public function getForm($title_heading){
		if($this->request->get["addonid"] != ""){
			$link = "&addonid="	. $this->request->get["addonid"];
		}
		$this->data['cancel'] = $this->url->http('addon/download' . $link);
		
		$this->data['title_heading'] = $title_heading;
		
		//libraries
		$this->load->model("core/site");
		$this->load->model("core/language");
		$this->load->model("addon/download");
		
		//multi language
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arr_site_language = explode(",", $site['language']);
		foreach($arr_site_language as $site_language){
			$language = $this->model_core_language->getLanguage(trim($site_language));
			if(isset($language)){
				$this->data['arr_language'][$language['languageid']] = $language['name'];
			}
		}
		
		$this->load->model("core/sitemap");
		//weblinkid means link
		
		//load sitemap
		$this->data['sitemaps'] = $this->model_core_sitemap->getList(SITEID);
		$this->model_core_sitemap->renderTreeView("",$this->data['sitemaps'], "treeicon", 15, "---");
		$this->data['sitemap'] = $this->common->combobox($this->data['sitemaps'], "treetext", "sitemapid",$this->request->get['weblinkid'], "----", "");
		
		//load item	
		if($this->request->get['weblinkid'] != ""){
			$this->data['weblinks'] = $this->model_addon_download->getList(" AND addonid = 'downloadmenu' AND link = '" . $this->request->get['weblinkid']. "'");
			
			//$this->data['download_description'] = $this->model_addon_download->getDescriptions($this->request->get['downloadid']);
		}
		
		$this->id='content';
		$this->template="addon/download_form.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function getList(){
		if($this->request->get["addonid"] != ""){
			$link = "&addonid="	. $this->request->get["addonid"];
		}
		$this->data['insert'] = $this->url->http('addon/download/insert' . $link);
		$this->data['delete'] = $this->url->http('addon/download/delete' . $link);
		$this->data['DIR_DELETE'] = HTTP_SERVER."?route=addon/download/delete";
		
		$this->data['title_heading'] = $this->language->get('label_weblink_management');
		
		$this->load->model("addon/download");
		
		$where = " AND link <> '' AND addonid = '" . $this->request->get['addonid'] . "'";
		
		$weblinks = $this->model_addon_download->getListText($where);
		
		//load sitemap
		$this->load->model("core/sitemap");
		
		if(count($weblinks) > 0){
			foreach($weblinks as $item){
				$sitemap = $this->model_core_sitemap->getDescription($item['link'], $this->config->get('config_languageid'));
				$this->data['weblinks'][$item['link']]['title'] = $sitemap[0]['sitemapname'];
				$this->data['weblinks'][$item['link']]['addonid'] = $item['addonid'];
				$this->data['weblinks'][$item['link']]['weblinkid'] = $item['link'];
				$this->data['weblinks'][$item['link']]['linkedit'] = '?route=addon/download/update&addonid=downloadmenu&weblinkid=' . $item['link'];
				$this->data['weblinks'][$item['link']]['weblink'][] = $item;				
			}
		}
		
		$this->id='content';
		$this->template="addon/download_list.tpl";
		$this->layout="layout/center";
		
		$this->render();
	}
	
	public function update(){
		$this->getForm($this->language->get('title_weblink_update'));	
	}
	
	public function insert(){
		$this->getForm($this->language->get('title_weblink_insert'));
	}
	
	public function save()
	{
		$this->load->model("addon/download");
		
		$data = $this->request->post;

		if($this->validateForm($data))
		{
			if($data['weblinkid']=="")
			{
				$this->model_addon_download->insert($data);
					
			}
			else
			{
				$this->model_addon_download->update($data);
			}
			
			$this->data['output'] = "true";
		}
		else
		{
			foreach($this->error as $item)
			{
				$this->data['output'] .= $item."<br>";
			}
		}
		$this->id='content';
		$this->template='common/output.tpl';
		$this->render();
	}
	
	private function validateForm($data){		
		if(count($this->error) == 0){
			return true;	
		} else {
			return false;
		}	
	}
	
	public function sortorder(){
		$this->load->model("splash/banner");
		$arrsort = $this->request->post['sortorder'];
		
		if(isset($arrsort)){
			foreach($arrsort as $key => $value){
				$this->model_splash_banner->sortorder($key, $value);
			}
		}
		
		$this->data['output'] = "true";
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();	
	}
	
	public function delete() 
	{
		$listid=$this->request->post['delete'];
		
		$this->load->model("addon/download");
		if(count($listid))
		{
			$this->model_addon_download->delete($listid);
		}
		$this->id="content";
		$this->template="common/output.tpl";
		$this->render();
  	}
}
 ?>