<?php
class ControllerProductFilter extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");

        //$this->load->model("sidebar/banner");
        //$this->data['banner'] = $this->model_sidebar_banner->getListByAddonid("banner");

        $this->load->model("product/filter");
        $this->load->model("product/filteroption");


        $filters = $this->model_product_filter->getOptionList();
        $this->data['viewdata']['listfilter'] = $filters;

        foreach ($filters as $filter) {
            $this->data['viewdata'][$filter['filterid']] = $this->model_product_filteroption->getOptionValueDescriptions($filter['filterid']);
        }

        $this->id = "filterproduct";
        $this->template = "product/filter.tpl";
        $this->render();
    }
}

?>