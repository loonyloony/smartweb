<?php
class ControllerModuleGroupsitemap extends Controller
{
    public function index()
    {
        $this->load->model("core/sitemap");
		$this->load->model("core/media");

        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];

        $arrayOfSitemap = array();
        if (SKINID == 'mercedes') {
            $where = " AND sitemapparent = '" . $this->smartweb->sitemapid . "' ";
            $where .= " AND `sitemap`.status = '1' ";
            $where .= " AND `sitemap`.moduleid = 'module/information' ";
            $arrayOfSitemap = $this->model_core_sitemap->getList($this->config->get('config_siteid'), $where);
        } else { 
            $arrayOfSitemap = $this->model_core_sitemap->getListByParent($this->smartweb->sitemapid);
        }

        if (count($arrayOfSitemap)) {
            foreach ($arrayOfSitemap as $item) {
                $sitemap['sitemapid'] = $item['sitemapid'];
                $sitemap['link'] = $this->url->getURL($item['seo_url'], 'sitemap', $item['sitemapid']);
                $sitemap['title'] = $item['sitemapname'];
                $sitemap['summary'] = html_entity_decode($item['description']);
				
				if($item['moduleid'] == "module/news"){
					$arrayOfNews = $this->model_core_media->getListMedia(" AND refersitemap like '%[" . $sitemap['sitemapid'] . "]%' AND imagepath <> '' ");
					$sitemap['imagepath'] = $arrayOfNews[0]['imagepath'];
				}

                if (SKINID == "aothunvinhphat") {
                    $sitemap['product'] = array();
                    $arrayOfProducts = array();
                    $strSitemapTree = '';
                    $strSitemapTree = $this->model_core_sitemap->getSitemapTree($item['sitemapid']);
                    $strSitemapTree .= $item['sitemapid'];

                    $this->load->model("core/product");
                    $arrayOfProducts = $this->model_core_product->getList(" AND p.sitemapid in (" . $strSitemapTree . ") ORDER BY `date_modified` DESC ", "true");

                    if (count($arrayOfProducts) > 0) {
                        $sitemap['product'] = $arrayOfProducts[0];
                    }
                }

                $this->data['medias'][] = $sitemap;
            }

            if (SKINID == 'mercedes') {
                $firstSitemap = $arrayOfSitemap[0];
                $media = $this->model_core_sitemap->getMediaBySitemap($firstSitemap['sitemapid']);
                $this->data['firstChildSiteMapId'] = $firstSitemap['sitemapid'];
                $this->data['media'] = $media;
            }

        }

        /************************************
         * config
         ************************************/

        //set page title
        if ($this->smartweb->sitemap['sitemap_description']['meta_title'] == "") {
            $this->document->setTitle($this->smartweb->sitemap['sitemap_description']['sitemapname']);
        } else {
            $this->document->setTitle($this->smartweb->sitemap['sitemap_description']['meta_title']);
        }

        //meta tag
        $meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'];
        $this->document->setDescription($meta_description);
        $meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'];
        $this->document->setKeywords($meta_keywords);

        //link
        $this->document->addLink($this->url->getURL($this->smartweb->sitemap['seo_url'], 'sitemap', $this->smartweb->sitemapid));

        //OG
        $og_title = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
        $og_url = $this->url->getURL($this->smartweb->sitemap['seo_url'], 'sitemap', $this->smartweb->sitemapid);
        $og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->smartweb->sitemap['imagepath'];
        $og_summary = $this->smartweb->sitemap['sitemap_description']['summary'];
        $og_description = $this->string->getTextLength($this->smartweb->sitemap['sitemap_description']['description'], 0, 100);
        $og_publicdate = "";
        $og_revisiondate = "";
        $this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);

        $this->template = "module/group_sitemap.tpl";
        $this->id = "content";
        $this->render();
    }
	
}

?>