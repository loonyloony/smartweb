<?php
class ControllerModuleInformation extends Controller
{
    private $interdomainlist = array('com' => '240.000', 'net' => '240.000', 'org' => '240.000', 'biz' => '240.000', 'cc' => '730.000', 'ws' => '262.000', 'tv' => '850.000', 'mobi' => '430.000', 'eu' => '260.000', 'asia' => '385.000', 'me' => '577.000', 'tel' => '325.000', 'co' => '745.000', 'com.co' => '430.000', 'net.co' => '430.000', 'nom.co' => '430.000', 'us' => '240.000');
    private $vndomainlist = array('vn' => array('phikhoitao' => '350.000', 'phiduytri' => '480.000'), 'com.vn' => array('phikhoitao' => '350.000', 'phiduytri' => '350.000'), 'net.vn' => array('phikhoitao' => '350.000', 'phiduytri' => '350.000'), 'biz.vn' => array('phikhoitao' => '350.000', 'phiduytri' => '350.000'), 'edu.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'), 'gov.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'), 'org.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'), 'pro.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'), 'health.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'), 'int.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'), 'info.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'), 'name.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'), 'ac.vn' => array('phikhoitao' => '200.000', 'phiduytri' => '200.000'));

    function __construct()
    {
        $this->load->helper('image');
        $this->load->model('core/mediafiledescription');
    }

    public function index()
    {
        //$this->smartweb->objectid, this->smartweb->sitemapid
        $this->load->helper('image');
        $this->load->model("core/media");
        $this->data['media'] = $this->model_core_media->getItem($this->smartweb->objectid);
        $this->data['media']['imagethumbnail'] = HelperImage::resizePNG($this->data['media']['imagepath'], 218, 148);
        $where = " AND mediafileid='" . $this->smartweb->objectid . "' AND filetype='file'";
        //$this->data['media']['filedownload']=$this->model_core_mediafiledescription->getList($where);

        $this->children = array('common/contentsplash');

        /************************************
         * config
         ************************************/

        //set page title
        if ($this->data['media']['meta_title'] == "") {
            $this->document->setTitle($this->data['media']['title']);
        } else {
            $this->document->setTitle($this->data['media']['meta_title']);
        }
        //facebook
        if (SKINID == "labwell") {
            $this->load->model("core/media");
            $this->data['news'] = $this->model_core_media->getItem($this->smartweb->objectid);
            $this->load->model("core/sitemap");
            $parent_link = $this->model_core_sitemap->getItem(substr($this->data['news']['refersitemap'], 1, -1));
            $this->data['pageURL'] = $this->url->getURL($parent_link['seo_url'], 'sitemap', $parent_link['sitemapid']);
        }
        //meta tag
        $meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'] . " " . $this->data['media']['metadescription'];
        $this->document->setDescription($meta_description);
        $meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'] . " " . $this->data['media']['metakeyword'];
        $this->document->setKeywords($meta_keywords);

        //link
        $this->document->addLink($this->url->getURL($this->data['media']['alias'], 'media', $this->data['media']['mediaid']));

        //OG
        $og_title = $this->data['media']['title'];
        $og_url = $this->url->getURL($this->data['media']['alias'], 'media', $this->data['media']['mediaid']);
        $og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->data['media']['imagepath'];
        $og_summary = $this->data['media']['summary'];
        $og_description = $this->data['media']['metadescription'];
        $og_publicdate = str_replace("-", "/", $this->data['media']['statusdate']);
        $og_revisiondate = str_replace("-", "/", $this->data['media']['updateddate']);
        $this->smartweb->setOG($og_title, $og_url, $og_image, $og_description, $og_description, $og_publicdate, $og_revisiondate);

        //tempalte
        $this->id = "content";

        if (SKINID == "bbqspices") {
            switch ($this->smartweb->sitemapid) {
                case 7:
                    $this->template = "module/about-us.tpl";
                    break;
                case 8:
                    $this->template = "module/delivery.tpl";
                    break;
                case 9:
                    $this->template = "module/dining.tpl";
                    break;
                case 11:
                    $this->template = "module/event.tpl";
                    break;
                case 13:
                    $this->template = "module/orderlinks.tpl";
                    break;
                case 10:
                    $this->template = "module/menu.tpl";
                    break;
                default:
                    $this->template = "module/information.tpl";
                    break;
            }

        } elseif (SKINID == 'mercedes') {
            $this->load->model("core/sitemap");
            $sitemapParentId = $this->smartweb->sitemap['sitemapparent'];

            $sitemapParent = $this->model_core_sitemap->getItem($sitemapParentId);

            $where = " AND sitemapparent = '" . $sitemapParentId . "' ";
            $where .= " AND `sitemap`.status = '1' ";
            $where .= " AND `sitemap`.moduleid = 'module/information' ";
            $childSiteMaps = $this->model_core_sitemap->getList($this->config->get('config_siteid'), $where);

            $this->data['childSiteMaps'] = $childSiteMaps;
            if ($sitemapParent['moduleid'] == "module/groupsitemap") {
                $this->template = "module/advanceinformation.tpl";
            } else {
                $this->template = "module/information.tpl";
            }
        } elseif (SKINID == 'walktet2014') {
            switch ($this->smartweb->sitemapid) {
                case 20:
                    $this->template = "module/nam_du.tpl";
                    break;
                case 21:
                    $this->template = "module/chau_doc.tpl";
                    break;
                case 23:
                    $this->template = "module/top_of_top_party.tpl";
                    break;

            }
        } else {
            $this->template = "module/information.tpl";
        }

        $this->render();
    }

    public function checkDomain()
    {
        $data = $this->request->post;

        $domainname = $data['domain'];
        $arrayOfDomain = $data['tld'];

        @readfile("http://www.vnnic.net.vn/dk_tenmien/jsp/tracuu_domain_chitiet.jsp?type=abc.com");
        if (count($arrayOfDomain)) {
            foreach ($arrayOfDomain as $item) {
                $url = "http://www.pavietnam.vn/vn/whois.php?domain=" . $domainname . "." . $item . "&t=" . time();
                echo $url;
                $content = file_get_contents($url);

                //status = 0 that means domain_name has been registed
                $result[] = array('domainname' => $item, 'status' => $content);
            }
        }

        $this->data['output'] = json_encode($result);
        $this->id = "content";
        $this->template = "common/output.tpl";

        $this->render();
    }
}

?>