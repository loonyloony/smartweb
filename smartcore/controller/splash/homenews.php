<?php
class ControllerSplashHomenews extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");
        $this->load->model("core/media");
        $this->data['news'] = $this->model_core_media->get1Item(" AND mediatype = 'media_homenews'");

        if (SKINID == 'elifesupport') {
            $this->load->model("core/sitemap");

            $strSitemap = $this->addSiteMapList('104');
            if ($strSitemap[strlen($strSitemap) - 1] == ",") {
                $strSitemap = substr($strSitemap, 0, -1);
            }

            $strSitemap = str_replace(",", "]%' OR refersitemap like '%[", $strSitemap);
            $strSitemap = " AND (refersitemap like '%[" . $strSitemap . "]%')";

            $where = $strSitemap . "  AND mediatype = 'media_news' ORDER BY position ASC, updateddate DESC, statusdate DESC LIMIT 0,2";
            $arrayOfNews = $this->model_core_media->getBlockNews($where);

            if (count($arrayOfNews) > 0) {
                foreach ($arrayOfNews as $news) {
                    $news['link'] = $this->url->getURL($news['alias'], 'media', $news['mediaid']);
                    $news['updateddate'] = $this->date->formatMySQLDate($news['updateddate'], 'longdate');
                    $news['summary'] = htmlspecialchars_decode($news['summary']);

                    $this->data['knowledges'][] = array('title' => $news['title'], 'imagethumbnail' => $news['imagethumbnail'], 'summary' => $news['summary'], 'updateddate' => $news['updateddate'], 'link' => $news['link'], 'imagepath' => $news['imagepath'], 'author' => $news['author'], 'source' => $news['source']);
                }
            }
        }

        if (SKINID == 'elifehosting') {
            $where = $strSitemap . "  AND mediatype = 'media_homenews' ORDER BY position ASC, updateddate DESC, statusdate DESC";
            $arrayOfNews = $this->model_core_media->getBlockNews($where);

            if (count($arrayOfNews) > 0) {
                foreach ($arrayOfNews as $news) {
                    $news['link'] = $this->url->getURL($news['alias'], 'media', $news['mediaid']);
                    $news['updateddate'] = $this->date->formatMySQLDate($news['updateddate'], 'longdate');
                    $news['summary'] = htmlspecialchars_decode($news['summary']);

                    $this->data['homenews'][] = array('title' => $news['title'], 'imagethumbnail' => $news['imagethumbnail'], 'summary' => $news['summary'], 'updateddate' => $news['updateddate'], 'link' => $news['link'], 'imagepath' => $news['imagepath'], 'author' => $news['author'], 'source' => $news['source']);
                }
            }
        }

        $this->id = "homenews";
        $this->template = "splash/homenews.tpl";
        $this->render();
    }

    private function addSiteMapList($sitemapid)
    {
        $strSitemap = "";
        $listSitemap = $this->model_core_sitemap->getList(SITEID, "AND sitemap.sitemapparent = " . $sitemapid . "");
        foreach ($listSitemap as $item) {
            $strSitemap .= $item['sitemapid'] . ",";
            $strSitemap .= $this->addSiteMapList($item['sitemapid']);
        }
        return $strSitemap;
    }
}

?>