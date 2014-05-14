<?php
class ControllerSplashVisasplash extends Controller
{
    public function index()
    {
        $this->load->model("core/sitemap");
        $regions = $this->model_core_sitemap->getListNoLang(SITEID, " AND sitemap.moduleid = 'module/region'");
        $this->data['cbx_sitemap'] = $this->common->combobox($regions, "sitemapname", "sitemapid");
        $this->id = "visasplash";
        $this->template = "splash/visasplash.tpl";
        $this->render();
    }

    public function countries()
    {
        $parent = $this->request->get['id'];
        $this->load->model("core/sitemap");
        $countries = $this->model_core_sitemap->getListNoLang(SITEID, " AND sitemap.sitemapparent = '" . $parent . "'");
        $output = array();
        foreach ($countries as $c) {
            array_push($output, array("value" => $c["seo_url"], "display" => $c["sitemapname"]));
        }
        $this->data['output'] = json_encode($output);
        $this->id = "content";
        $this->template = "common/output.tpl";
        $this->render();
    }
}

?>