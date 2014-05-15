<?php 
 class ControllerSplashBanner extends Controller{
    
    private $error = array();
    
    public function index(){
        $this->getList();
    }
    
    public function getForm($title_heading){
        if($this->request->get["addonid"] != ""){
            $link = "&addonid=" . $this->request->get["addonid"];
        }
        $this->data['cancel'] = $this->url->http('splash/banner' . $link);
        
        $this->data['title_heading'] = $title_heading;
        
        //libraries
        $this->load->model("core/site");
        $this->load->model("core/language");
        $this->load->model("splash/banner");
        $this->load->model("core/sitemap");

        //get sitemap list
        //Load Model
        $this->load->model("core/sitemap");
        $this->load->model("common/control");

        //Combobox Sitemap Parent
        if($this->request->get[addonid] == "catbanner")
        {
            $this->data['sitemaps'] = $this->model_core_sitemap->getList(SITEID);
            $this->model_core_sitemap->renderTreeView("",$this->data['sitemaps'], "treeicon", 15, "---");
            $this->data['cbx_sitemapparent'] = $this->common->combobox($this->data['sitemaps'], "treetext", "sitemapid", $this->data['sitemap']["sitemapparent"], "----", "");
        }

        //language base on member site
        $site = $this->model_core_site->getItem($this->member->getSiteId());
        $arr_site_language = explode(",", $site['language']);
        foreach($arr_site_language as $site_language){
            $language = $this->model_core_language->getLanguage(trim($site_language));
            if(isset($language)){
                $this->data['language'][$language['languageid']] = $language['name'];
            }
        }
        
        if($this->request->get['weblinkid'] != ""){
            $this->data['weblink'] = $this->model_splash_banner->getItem($this->request->get['weblinkid']);
            
            $this->data['weblink_description'] = $this->model_splash_banner->getDescriptions($this->request->get['weblinkid']);
        }
        
        $this->data['cbx_sitemapparent'] = $this->common->combobox($this->data['sitemaps'], "treetext", "sitemapid", $this->data['sitemap']["sitemapparent"], "----", "");
        
        $this->id='content';
        $this->template="splash/banner_form.tpl";
        $this->layout="layout/center";
        
        $this->render();
    }
    
    public function getList(){

        if($this->request->get["addonid"] != ""){
            $link = "&addonid=" . $this->request->get["addonid"];
        }
        $this->data['insert'] = $this->url->http('splash/banner/insert' . $link);
        $this->data['delete'] = $this->url->http('splash/banner/delete' . $link);
        $this->data['DIR_DELETE'] = HTTP_SERVER."?route=splash/banner/delete";
        
        $this->data['title_heading'] = $this->language->get('label_weblink_management');
        
        $this->load->model("splash/banner");
        
        $where = " AND addonid = '" . $this->request->get['addonid'] . "'";
        
        $this->data['weblinks'] = $this->model_splash_banner->getList($where);
        
        $this->id='content';
        $this->template="splash/banner_list.tpl";
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
        $this->load->model("splash/banner");
        $this->load->model("core/sitemap");
        
        $data = $this->request->post;
        
        if($this->validateForm($data))
        {
            if(trim($data['sitemap']) != "")
            {
                $sitemap = $this->model_core_sitemap->getDescriptions($data['sitemap']);
                if(count($sitemap) > 0)
                {
                    foreach ($sitemap as $key => $item) {
                        $fmSitemap[$item['languageid']] = $item['seo_url'];
                    }
                }

                if(count($data['weblink_description']) > 0)
                {
                    foreach ($data['weblink_description'] as $key => $item) {
                        $data['weblink_description'][$key]['link'] = $fmSitemap[$key];
                    }
                }
            }

            if($data['weblinkid']=="")
            {
                $this->model_splash_banner->insert($data);
                    
            }
            else
            {
                $this->model_splash_banner->update($data);
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
        
        $this->load->model("splash/banner");
        
        if(isset($data['weblink_description'])){
            foreach($data['weblink_description'] as $description){
                if(trim($description['title']) == ''){
                    $this->error['title'] = $this->language->get('warning_title_null');
                }   
            }
        }
        
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
        
        $this->load->model("splash/banner");
        if(count($listid))
        {
            $this->model_splash_banner->delete($listid);
        }
        $this->id="content";
        $this->template="common/output.tpl";
        $this->render();
    }
}
 ?>