<?php
class ControllerModuleAdvanceSearch extends Controller
{

    public function index()
    {
        $keyword = trim($this->request->get['key']);
        if ($keyword != "") {
            $this->getList(0, 5, "", "module/advance_search_list.tpl", $keyword);
        } else {
            $this->template = "module/advance_search_list.tpl";
            //$this->data['empty_key'] = "Vui lòng nhập từ khóa để tìm kiếm";
            $this->data['empty_key'] = $this->language->get('warn_required_keyword');
        }

        $this->render();
    }

    public function getList($from, $to, $totalrow, $template, $keyword)
    {

        $decode_keyword = urldecode($keyword);

        $this->data['from'] = $from;
        $this->data['to'] = $to;
        $this->data['key'] = $decode_keyword;


        $this->load->model("core/advancesearch");
        $this->load->helper("image");

        $result_search = $this->model_core_advancesearch->getListByKeyword("", $decode_keyword, $from, $to);

        if ($totalrow . "" == '') {
            $totalRows = $this->model_core_advancesearch->getListByKeyword("", $decode_keyword, "", $to);
            $this->data['totalrow'] = count($totalRows);
        }

        $this->data['result_search'] = array();

        if (isset($result_search)) {

            foreach ($result_search as $result) {

                $result['link'] = $this->url->getURL($result['seo_url'], $result['objtype'], $result['objid']);
                $result['updateddate'] = $this->date->formatMySQLDate($result['updateddate'], 'longdate');
                $result['summary'] = htmlspecialchars_decode($result['summary']);

                /*
                if($result['imagepath'] != ''){
                    $result['imagethumbnail'] = HelperImage::resizePNG($result['imagepath'], 200, 0);
                }
                */

                $this->data['results'][] = array('title' => $result['title'], 'summary' => $result['summary'], 'updateddate' => $result['updateddate'], 'link' => $result['link'], 'imagepath' => $result['imagepath']);
            }


            $countNext = $this->model_core_advancesearch->getListByKeyword("", $decode_keyword, $from + 5, $to + 5);
            if (count($countNext) > 0) {
                $this->data['flag'] = 'true';
            } else {
                $this->data['flag'] = 'false';
            }

        }

        $this->template = $template;
        $this->render();
    }

    public function getListPage()
    {
        $data = $this->request->post;
        if ($data['key'] != "") {
            $template = "module/advance_search_list_page.tpl";
            $arr = array($data['from'], $data['to'], $data['totalrow'], $template, $data['key']);
            $this->data['output'] = $this->loadModule("module/advancesearch", "getList", $arr);

            $this->template = "common/output.tpl";
            $this->render();
        }
    }


}

?>