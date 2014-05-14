<?php
class ControllerModuleGroupnews extends Controller
{
    public function index()
    {
        //load library
        $this->load->model("core/sitemap");
        $this->load->model("core/media");
        $this->load->helper("image");

        //get list
        $this->getList();

        //template
        $this->template = "module/groupnews.tpl";
        $this->id = "content";
        $this->render();
    }

    public function getList()
    {

        //load page information
        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
        $this->data['description'] = $this->smartweb->sitemap['sitemap_description']['description'];

        $arrChildSitemap = $this->model_core_sitemap->getListByParent($this->smartweb->sitemapid, "default", "1");
        foreach ($arrChildSitemap as $key => $item) {
            $arrChildSitemap[$key]['link'] = $this->url->getURL($item['seo_url'], "sitemap", $item['sitemapid']);
            $arrChildSitemap[$key]['news'] = $this->getListNews($item['sitemapid']);
        }

        $this->data['childSitemap'] = $arrChildSitemap;


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
    }

    private function getListNews($id)
    {

        $where = " AND `refersitemap` LIKE '%[" . $id . "]%' AND mediatype = 'media_news' ORDER BY position ASC, updateddate DESC, statusdate DESC LIMIT 0,10";
        $arrayOfNews = $this->model_core_media->getBlockNews($where);

        if (count($arrayOfNews) > 0) {
            foreach ($arrayOfNews as $news) {
                $news['link'] = $this->url->getURL($news['alias'], 'media', $news['mediaid']);
                $news['updateddate'] = $this->date->formatMySQLDate($news['updateddate'], 'longdate');
                $news['summary'] = htmlspecialchars_decode($news['summary']);
                if ($news['imagepath'] != '') {
                    $news['imagethumbnail'] = HelperImage::resizePNG($news['imagepath'], 200, 0);
                }
            }
        }
        return $arrayOfNews;

    }
}

?>