<?php
class ControllerModulePartners extends Controller
{
    function __construct()
    {
        $this->load->helper('image');
        $this->load->model('core/mediafiledescription');
    }

    public function index()
    {

        if ($this->smartweb->sitemapid != "" && $this->smartweb->objectid == "") {
            $this->document->addStyle("elife_partners.css");
            $this->getList();
            $this->template = "module/partners_list.tpl";
        } else {
            $this->getItem($this->smartweb->objectid);
            $this->template = "module/partners_detail.tpl";
        }

        $this->id = "content";
        $this->render();
    }

    private function getItem($mediaid)
    {
        $this->data['media'] = $this->model_core_media->getItem($mediaid);

        /************************************
         * config
         ************************************/

        //set page title
        if ($this->data['media']['meta_title'] == "") {
            $this->document->setTitle($this->data['media']['title']);
        } else {
            $this->document->setTitle($this->data['media']['meta_title']);
        }

        //meta tag
        $meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'] . " " . $this->data['media']['metadescription'];
        $this->document->setDescription($meta_description);
        $meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'] . " " . $this->data['media']['metadescription'];
        $this->document->setKeywords($meta_keywords);

        //link
        $this->document->addLink($this->url->getURL($this->data['media']['alias'], 'media', $this->data['media']['mediaid']));

        //OG
        $og_title = $this->data['media']['title'];
        $og_url = $this->url->getURL($this->data['media']['alias'], 'media', $this->data['media']['mediaid']);
        $og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->data['media']['imagepath'];
        $og_summary = $this->data['media']['summary'];
        $og_description = $this->string->getTextLength($this->data['media']['description'], 0, 100);
        $og_publicdate = str_replace("-", "/", $this->data['media']['statusdate']);
        $og_revisiondate = str_replace("-", "/", $this->data['media']['updateddate']);
        $this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);
    }


    private function getList()
    {
        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];

        $arr = $this->model_core_media->getList();
        $this->data['medias'] = array();
        if (isset($arr)) {
            foreach ($arr as $item) {
                $item['link'] = $this->url->getURL($item['alias'], 'media', $item['mediaid']);
                $item['updateddate'] = $this->date->formatMySQLDate($item['updateddate'], 'longdate');
                $item['summary'] = htmlspecialchars_decode($item['summary']);
                if ($item['imagepath'] != '') {
                    $item['imagethumbnail'] = HelperImage::resizePNG($item['imagepath'], 131, 65);
                }

                $this->data['medias'][] = array('title' => $item['title'], 'imagepath' => $item['imagepath'], 'summary' => $item['summary'], 'updateddate' => $item['updateddate'], 'link' => $item['link']);
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

        $this->template = $template['template'];
        $this->render();
    }

}

?>