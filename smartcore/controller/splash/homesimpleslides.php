<?php
class ControllerSplashHomesimpleslides extends Controller
{
    public function index()
    {
        require_once(DIR_SERVERROOT . "simple_html_dom.php");
        $this->load->model("splash/weblink");
        $this->data['banner'] = $this->model_splash_weblink->getListByAddonid("homesimpleslides");

        //load filter and filter option
        if (SKINID == 'mercedes') {

            $this->load->model("product/filter");
            //$this->load->model("product/filteroption.php");
            $filters = $this->model_product_filter->getList();
            if (count($filters) > 0) {
                $filterFirst = $filters[0];
                $filterOptions = $this->model_product_filter->getFilterOptionValues($filterFirst['filterid']);
                $this->data['html_first_option_filter'] = $this->common->combobox($filterOptions, 'name', 'filter_value_id');
            }

            $html_fitlers = $this->common->combobox($filters, 'name', 'filterid');
            $this->data['html_fitlers'] = $html_fitlers;

            $html_option_filters = "<div style='display:none'>";
            foreach ($filters as $filter) {
                $filterOptions = $this->model_product_filter->getFilterOptionValues($filter['filterid']);
                $html_option = "<div id='filter-" . $filter['filterid'] . "'>";
                $html_option .= $this->common->combobox($filterOptions, 'name', 'filter_value_id');
                $html_option .= "</div>";
                $html_option_filters .= $html_option;
            }
            $html_option_filters .= "</div>";

            $this->data['html_option_filters'] = $html_option_filters;

        }


        $this->id = "homesimpleslides";
        $this->template = "splash/homesimpleslides.tpl";
        $this->render();
    }
}

?>