<?php
class ControllerElifeSitemap extends Controller
{
    private $error = array();
    
    public function __construct() 
    {
        $this->load->language('elife/sitemap');
        $this->data['errors'] = array();
    }
    
    public function index()
    {
        $this->getList();
    }
    
    public function insert() {
        $this->data['heading_title'] = $this->language->get('heading_insert');
        
        $this->getForm();
    }
    
    public function update() {
        $this->data['heading_title'] = $this->language->get('heading_update');
        
        $this->getForm();
    }
    
    public function save()
    {
        $this->load->model("core/sitemap");
        
        $data = $this->request->post;
        
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm($data)) {
            foreach($this->document->getLanguage() as $key=>$value)
            {
                $sitemap_desc = $data['sitemap_'.$key];
                $data['sitemap'][$key] = $sitemap_desc;
                
            }
            $sitemapid = $this->model_core_sitemap->save($data);
            foreach($this->document->getLanguage() as $key=>$value)
            {
                $sitemap_desc = $data['sitemap_'.$key];
                $data['sitemap'][$key] = $sitemap_desc;
                $this->smartweb->saveSEOURL($data['sitemap'][$key]['seo_url'],"sitemap",$sitemapid,$key);
            }
            $this->data['output'] = "true";
            $this->template='common/output.tpl';    
        }
        else
        {
            foreach($this->error as $item)
                $this->data['output'] .= $item."<br />";    
            $this->template='common/output_error.tpl';  
        }
        
        $this->id='output';
        
        $this->render();
    }
    
    public function updatelist()
    {
        $position=$this->request->post['position'];
        $this->load->model("core/sitemap");
        if(count($position))
        {
            foreach($position as $key=>$val)
            {
                $this->model_core_sitemap->updateSiteMapPosition($key,$val,SITEID);
            }
            $this->data['output'] = "Cập nhật vị trí thành công";
        }
        $this->id="content";
        $this->template="common/output.tpl";
        $this->render();
    }
    
    public function deletelist()
    {
        $arr=$this->request->post['delete'];
        if(count($arr))
        {
            $this->load->model("core/sitemap");
            foreach($arr as $key=>$val)
            {
                if($this->model_core_sitemap->deleteSiteMap($val, SITEID) == true)
                {
                    $this->data['output'] = "Xóa thành công";
                }
                else
                {
                    $this->data['output'] = "Danh mục có các menu con, không xóa được, vui lòng xóa tất cả phần tử trực thuộc";
                }
            }
            
        }
        $this->id="content";
        $this->template="common/output.tpl";
        $this->render();
    }
    
    
    //Cac ham private function
    private function getList() {
        $this->data['insert'] = $this->url->http('elife/sitemap/insert');
        $this->data['deletelist'] = $this->url->http('elife/sitemap/deletelist');
        $this->data['updatelist'] = $this->url->http('elife/sitemap/updatelist');
        
        //Load Model
        $this->load->model("core/sitemap");
        
        //Lay danh sach Sitemap
        $this->data['sitemaps'] = $this->model_core_sitemap->getList(SITEID);
        $this->model_core_sitemap->renderTreeView("",$this->data['sitemaps'], "treeicon");

        for($i=0;$i<count($this->data['sitemaps']);$i++)
        {
            $this->data['sitemaps'][$i]['previewlink'] = $this->url->getURL($this->data['sitemaps'][$i]['seo_url'], "sitemap", $this->data['sitemaps'][$i]['sitemapid']);
            $arrChildren = $this->model_core_sitemap->getListByParent( $this->data['sitemaps'][$i]['sitemapid'], SITEID, "");
            if(count($arrChildren) > 0)
            {
                $this->data['sitemaps'][$i]['flg_plus'] = "+";
            }
            if($this->data['sitemaps'][$i]['status'] == 0)
            {
                $this->data['sitemaps'][$i]['statustext'] = "<span class='status0'>".$this->language->get("text_status0")."</span>";
            }
            else
            {
                $this->data['sitemaps'][$i]['statustext'] = "<span class='status1'>".$this->language->get("text_status1")."</span>";
            }
        }
        
        
        $this->id='content';
        $this->template='elife/sitemap_list.tpl';
        $this->layout="layout/center";
        $this->render();
    }
    
    private function getForm() {
        //Load Model
        $this->load->model("core/sitemap");
        $this->load->model("core/module");
        $this->load->model("core/layout");
        
        //Get Sitemap ID
        $sitemapid = $this->request->get["sitemapid"];
        
        //Tab Languages
        $this->data['languages'] = $this->document->getLanguage();
        
        //Load Sitemap record
        if (isset($this->request->post['sitemap'])) {
            $this->data['sitemap'] = $this->request->post['sitemap'];
            foreach($this->document->getLanguage() as $key=>$value)
            {
                $sitemap_desc = $this->data['sitemap_'.$key];
                $this->data['sitemap'][$key] = $sitemap_desc;
            }
        } elseif (isset($this->request->get['sitemapid'])) {
            $this->data['sitemap'] = $this->model_core_sitemap->getItem($sitemapid, SITEID);
            foreach($this->document->getLanguage() as $key=>$value)
            {
                $sitemap_desc = $this->model_core_sitemap->getDescription($sitemapid, $key);
                $this->data['sitemap'][$key] = $sitemap_desc[0];
            }
        } else {
            $this->data['sitemap'] = array();
        }
        
        
        
        //Combobox Sitemap Parent
        $this->data['sitemaps'] = $this->model_core_sitemap->getList(SITEID);
        $this->model_core_sitemap->renderTreeView("",$this->data['sitemaps'], "treeicon", 15, "---");
        $this->data['cbx_sitemapparent'] = $this->common->combobox($this->data['sitemaps'], "treetext", "sitemapid", $this->data['sitemap']["sitemapparent"], "----", "");
        
        //Combobox Module
        $modules = $this->model_core_module->getSitemapModules();
        $this->data['cbx_moduleid'] = $this->common->combobox($modules, "modulename", "moduleid", $this->data['sitemap']["moduleid"]);
        
        //Combobox Layout
        $layouts = $this->model_core_layout->getList();
        $this->data['cbx_layout'] = $this->common->combobox($layouts, "layoutname", "layoutid", $this->data['sitemap']["layoutid"]);
        
        //Checkbox menu
        $top_mainmenu = $this->data['sitemap']['top_mainmenu'];
        if($top_mainmenu == "") $top_mainmenu = 1;
        $this->data['chk_top_mainmenu'] = $this->common->checkbox("Menu chính", "sitemap[top_mainmenu]", 1, $top_mainmenu);
        
        $top_footermenu = $this->data['sitemap']['top_footermenu'];
        if($top_footermenu == "") $top_footermenu = 0;
        $this->data['chk_top_footermenu'] = $this->common->checkbox("Menu cuối trang (footer)", "sitemap[top_footermenu]", 1, $top_footermenu);
        
        //Radio Hien thi
        $status = $this->data['sitemap']['status'];
        if($status == "") $status = 1;
        $arr_status = array("1"=>"Hiển thị", "0"=>"Tạm Ẩn");
        $this->data['rdb_status'] = $this->common->radiobutton($arr_status, "sitemap[status]", $status);
        
        
        $this->id='content';
        $this->template='elife/sitemap_form.tpl';
        $this->layout="layout/center";
        $this->render();
    }
    
    function validateForm($data)
    {
        $data = $this->request->post;
        foreach($this->document->getLanguage() as $key=>$value)
        {
            $sitemap_desc = $data['sitemap_'.$key];
            $data['sitemap'][$key] = $sitemap_desc;
        }
        
        if($data['sitemap']['sitemapid'] != "" )
        {
            if($data['sitemap']['sitemapparent'] == $data['sitemap']['sitemapid'])
            {
                $this->error['sitemapparent'] = $this->language->get('error_sitemapparent');
            }   
        }
        
        foreach ($this->document->getLanguage() as $language_id => $value) {
            if (trim($data['sitemap'][$language_id]['sitemapname']) == "") {
                $this->error['sitemapname'] = $this->language->get('error_sitemapname');
            }
            if($data['sitemap'][$language_id]['seo_url'] != "" )
            {
                if($this->smartweb->checkSEOURL($data['sitemap'][$language_id]['seo_url'], "sitemap", $data['sitemap']['sitemapid'], $language_id) == false)
                {
                    $this->error['seo_url'] = $this->language->get('error_seo_url')." : ".$data['sitemap'][$language_id]['seo_url'] ;
                }
            }
        }
        
        $this->data['errors'] = $this->error;
        if (!$this->error) {
            return true; 
        } else {
            return false;
        }
    }
    
    public function getAsShown(){
        $this->load->model("core/module");
        $moduleid = $this->request->post['moduleid'];
        
        $result = split("/", $moduleid);
        
        $module = $this->model_core_module->getModule($moduleid);
        

            
        if($module['asshown'] == 'none'){
            $file['asshown']  = $module['asshown'];
            $this->data['output'] = json_encode(array('file' => $file));    
        } else if ($module['asshown'] == 'list') {
            $file['asshown']  = $module['asshown']; 
            $file['list'] = glob('../smartcore/template/module/' . $result[1] . '_list*');
            $this->data['output'] = json_encode(array('file' => $file));
        } else if ($module['asshown'] == 'list,detail') {
            $file['asshown']  = $module['asshown'];
            $file['detail'] = glob('../smartcore/template/module/' . $result[1] . '_detail*');
            $arrayOfList = glob('../smartcore/template/module/' . $result[1] . '_list*');
            if(count($arrayOfList) > 0) { foreach($arrayOfList as $list) {
                $result = split("/", $list);
                $file['list'][] = $result[count($result) - 1];
            } }
            $this->data['output'] = json_encode(array('file' => $file));
        } else if ($mmodule['asshown'] = 'list,list,detail') {
            //
            $file['asshown']  = $module['asshown'];
            $file['list'] = glob('../smartcore/template/module/' . $result[1] . '_list*');
            $file['listlist'] = glob('../smartcore/template/module/' . $result[1] . '_list_list*');
            $file['detail'] = glob('../smartcore/template/module/' . $result[1] . '_detail*');
            $this->data['output'] = json_encode(array('file' => $file));
        }
        
        //$file = glob('../smartcore/template/module/' . $result[1] . '*');
        
        $this->id="content";
        $this->template="common/output.tpl";
        $this->render();
    }
}