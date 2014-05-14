<?php
class ControllerSidebarThreenewslides extends Controller
{
    public function index()
    {
        $this->load->model("core/media");
        $this->load->helper("image");

        if (SKINID == "huutoan") {
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[28]%' OR refersitemap LIKE '%[96]%' ";
        } elseif (SKINID == "chothuemaychieu" || SKINID == "mayaothundongphuc" || SKINID == "sualaptoplaylien" || SKINID == "applerepair" || SKINID == "suaipaduytin" || SKINID == "suamacbookuytin" || SKINID == "sualaptopsaigon") {
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[95]%' AND imagepath <> '' ";
        } elseif (SKINID == "ngocminhthy") {
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[166]%' AND imagepath <> '' ";
        } elseif (SKINID == "sualaptoplongxuyen") {
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[48]%' AND imagepath <> '' ";
        } elseif (SKINID == "labwell") {
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[176]%' ";
        } elseif (SKINID == "sualaptopsg" || SKINID == "sualaptoplongxuyen") {
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[7]%' AND imagepath <> '' ";
		} elseif (SKINID == "op") {
            $where = " AND mediatype = 'media_information' AND imagepath <> '' ";

        } elseif (SKINID == "marketingonline") {

            $where = " AND mediatype != 'media_contactmap'";
        } elseif (SKINID == "quocca") {
            $where = " AND mediatype = 'media_news' AND refersitemap LIKE '%[64]%' AND imagepath <> '' ";
            $this->data['nghesitre'] = $this->model_core_media->getListMedia($where, 0, 1);
        } else {
            $where = " AND mediatype = 'media_news' OR 	mediatype = 'media_information' ";
        }


        $maxRows = 9; //default
        if (SKINID == "aothunvinhphat") {
            $maxRows = 5;
            $where .= " AND mediatype = 'media_news' ";
        }
        if (SKINID == "marketingonline" || SKINID == "fanhanghieu") {
            $maxRows = 4;
            $this->data['news'] = $this->model_core_media->getListMedia($where, 0, $maxRows);
        } else {
            $this->data['news'] = $this->model_core_media->getListNews($where, 0, $maxRows);
        }

        $this->id = "newslides";
        $this->template = "sidebar/threenewslides.tpl";
        $this->render();
    }
}

?>