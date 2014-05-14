<?php
class ControllerModuleGalleryalbum extends Controller
{
    public function index()
    {

        if ($this->smartweb->sitemapid != "" && $this->smartweb->objectid == "") {
            $this->getList();
            $this->template = "module/galleryalbum_list.tpl";
        } else {
            $this->getItem();
            $this->template = "module/galleryalbum_detail.tpl";
        }

        $this->id = "content";
        $this->render();
    }

    public function getList()
    {
        $this->load->model("core/media");
        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];

        $arrayOfGalleryAlbum = $this->model_core_media->getList();
        if (isset($arrayOfGalleryAlbum)) {
            foreach ($arrayOfGalleryAlbum as $gallery) {
                $gallery['link'] = $this->url->getURL($gallery['alias'], 'media', $gallery['mediaid']);
                $gallery['updateddate'] = $this->date->formatMySQLDate($gallery['updateddate'], 'longdate');
                $gallery['summary'] = htmlspecialchars_decode($gallery['summary']);
                $gallery['files'] = $this->model_core_media->getFileByMediaId($gallery['mediaid'], "image");

                $this->data['galleryalbum'][] = array('title' => $gallery['title'], 'imagethumbnail' => $gallery['imagethumbnail'], 'summary' => $gallery['summary'], 'updateddate' => $gallery['updateddate'], 'link' => $gallery['link'], 'imagepath' => $gallery['imagepath'], 'files' => $gallery['files']);
            }

        }
        /************************************
         * config
         ************************************/

        //set page title
        $this->document->setTitle($this->smartweb->sitemap['sitemap_description']['sitemapname']);

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

    public function getItem()
    {
        $this->load->model("core/media");

        $this->data['media'] = $this->model_core_media->getItem($this->smartweb->objectid);
        $this->data['files'] = $this->model_core_media->getFileByMediaId($this->data['media']['mediaid'], "image");

        /************************************
         * config
         ************************************/

        //set page title
        $this->document->setTitle($this->data['media']['title']);

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
}

?>