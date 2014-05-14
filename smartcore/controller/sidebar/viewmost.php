<?php
class ControllerSidebarViewmost extends Controller
{
    public function index()
    {
        if (SKINID == 'labwell') {
            $this->load->model("core/media");
            $where = " AND mediatype = 'media_blog' AND groupkeys LIKE '%Chủ đề nhiều người quan tâm%' ";
            $array_labwell = $this->model_core_media->getListMedia($where, 0, 10);
            $this->data['newsbytag'] = $array_labwell;
        } elseif (SKINID == 'quocca') {
            if ($this->smartweb->sitemapid == '63' || $this->smartweb->sitemapid == '64') {
                $this->load->model("core/media");
                $where = " AND mediatype = 'media_news'";
                $array_quocca = $this->model_core_media->getListMedia($where, 0, 8);
                $this->data['newsupdate'] = $array_quocca;
            } else {
                $this->load->model("core/media");
                $where = " AND mediatype = 'media_blog'";
                $array_quocca = $this->model_core_media->getListMedia($where, 0, 8);
                $this->data['newupdate'] = $array_quocca;
            }
        } else {
            //load library
            $this->load->model("core/media");
            $this->load->model("core/sitemap");

            //
            $strSitemap = $this->addSiteMapList($this->model_core_sitemap->getRoot($this->smartweb->sitemapid));
            if ($strSitemap[strlen($strSitemap) - 1] == ",") {
                $strSitemap = substr($strSitemap, 0, -1);
            }

            $strSitemap = str_replace(",", "]%' OR refersitemap like '%[", $strSitemap);
            $strSitemap = " AND (refersitemap like '%[" . $strSitemap . "]%')";

            $where = $strSitemap . "  AND mediatype = 'media_news' ORDER BY viewcount DESC, position ASC, updateddate DESC, statusdate DESC LIMIT 0,8";
            $arrayOfNews = $this->model_core_media->getBlockNews($where);

            if (count($arrayOfNews) > 0) {
                foreach ($arrayOfNews as $news) {
                    $news['link'] = $this->url->getURL($news['alias'], 'media', $news['mediaid']);
                    $news['updateddate'] = $this->date->formatMySQLDate($news['updateddate'], 'longdate');
                    $news['summary'] = htmlspecialchars_decode($news['summary']);

                    $this->data['news'][] = array('title' => $news['title'], 'imagethumbnail' => $news['imagethumbnail'], 'summary' => $news['summary'], 'updateddate' => $news['updateddate'], 'link' => $news['link'], 'imagepath' => $news['imagepath'], 'author' => $news['author'], 'source' => $news['source']);
                }
            }
        }
        $this->id = "viewmost";
        $this->template = "sidebar/viewmost.tpl";
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