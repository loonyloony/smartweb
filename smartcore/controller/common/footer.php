<?php
class ControllerCommonFooter extends Controller
{
    public function index()
    {
        if (SKINID == "sualaptopsg" || SKINID == "trungtambaohanhlaptop" || SKINID == "mayaothunquangcao" || SKINID == "hoangvu" || SKINID == "sualaptophochiminh" || SKINID == "sualaptophoangvu" || SKINID == "sualaptophv") {
            $this->load->model("sidebar/banner");
            $this->data['banner'] = $this->model_sidebar_banner->getListByAddonid("banner");
        }

        if (SKINID == "fanhanghieu") {

            //get list manufacturer
            $this->load->model("core/product");

            $this->data['viewdata']['manufacturerList'] = $this->model_core_product->getAllManufacturer(" ORDER BY pm.name");

            $this->load->model("product/filteroption");
            $languageid = $this->config->get('config_languageid');
            $typeProduct = 1;
            $this->data['viewdata']['typeProduct'] = $this->model_product_filteroption->getOptionValues(1, $languageid);

            $this->data['onlinevisitor'] = $this->config->get("config_countonlinevisitors");
            $this->data['indayvisitor'] = $this->config->get("setting_webcounter");
        }

        if (SKINID == "aothunvinhphat") {
            $this->load->model("sidebar/supportonline");
            $this->data['supportonline'] = $this->model_sidebar_supportonline->getListByAddonid("supportonline");
        }

        if (SKINID == "singapore") {
            $this->load->model("core/propertyproduct");
            $this->data['district'] = $this->model_core_propertyproduct->getDistrict("Singapore");
        }

        $this->id = "footer";
        $this->template = "common/footer.tpl";
        $this->render();
    }
}

?>