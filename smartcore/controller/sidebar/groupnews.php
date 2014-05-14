<?php
class ControllerSidebarGroupnews extends Controller
{
    public function index()
    {
        //load library
        $this->load->model("core/sitemap");
        $this->load->model("core/media");
        $this->load->helper("image");

        if (SKINID == "hatomex") {
            $this->data['news'] = $this->getAllNews();
            //template
            $this->template = "sidebar/hatomex_groupnews.tpl";
        } elseif (SKINID == "elifeprinting") {
            $this->data['news'] = $this->getListNews(2, 0, 30);
            $this->template = "sidebar/groupnews.tpl";
        } else {
            $this->getList();
            //template
            $this->template = "sidebar/groupnews.tpl";
        }
        $this->id = "content";
        $this->render();
    }

    private function getAllNews()
    {
        $where = " AND mediatype = 'media_news' ORDER BY position ASC, updateddate DESC, statusdate DESC LIMIT 0,5";
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

    public function getList()
    {

        //load page information
        $this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
        $this->data['description'] = $this->smartweb->sitemap['sitemap_description']['description'];

        $arrChildSitemap = $this->model_core_sitemap->getListByParent($this->smartweb->sitemap['sitemapparent'], "default", "1");
        foreach ($arrChildSitemap as $key => $item) {
            $arrChildSitemap[$key]['link'] = $this->url->getURL($item['seo_url'], "sitemap", $item['sitemapid']);
            $arrChildSitemap[$key]['news'] = $this->getListNews($item['sitemapid']);
        }

        $this->data['childSitemap'] = $arrChildSitemap;
    }

    private function getRootMenu($parentid)
    {
        $allsitemaps = $this->smartweb->allmainmenus;
        $rootid = $this->smartweb->rootsitemapid;
        $sitemaps = $this->common->search_array($allsitemaps, "sitemapparent", $parentid);
        if ($sitemaps == "") {
            return $parentid;
        }
    }

    private function getListNews($id, $begin = 0, $length = 10)
    {

        $where = " AND `refersitemap` LIKE '%[" . $id . "]%' AND mediatype = 'media_news' ORDER BY position ASC, updateddate DESC, statusdate DESC LIMIT " . $begin . "," . $length . "";
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