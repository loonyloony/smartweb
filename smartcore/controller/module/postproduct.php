<?php
class ControllerModulePostproduct extends Controller
{
    private $error = array();

    public function index()
    {
        $anonymous = $this->request->get["anonymous"];
        if ($anonymous == "" && $this->member->getEmail() == "") {
            $this->response->redirect(HTTP_WEB . "register.html?prevaction=postads");
        } else {

            $step = $_GET['step'];
            if ($step == 2) {
                $this->step2();
            } elseif ($step == 3) {
                $this->preview();
            } else {
                $this->step1();
            }
        }
    }

    private function step1()
    {

        $this->load->model("core/country");
        $this->load->model("core/station");
        $this->load->model("property/propertytype");
        $this->load->model("property/roomtype");
        $this->load->model("property/product");

        //get component default
        //------------------------------------------------------------------------------------
        //component upload
        $this->data['form_upload'] = $this->loadModule("common/upload");

        //location default
        if (SKINID == 'singapore') {
            //default location is Singapore
            $this->data['locationmap']['zoom'] = 11;
            $this->data['locationmap']['x'] = 1.3563407932818987;
            $this->data['locationmap']['y'] = 103.82155629980468;
        } else {
            //default location is VietNam
            $this->data['locationmap']['zoom'] = 5;
            $this->data['locationmap']['x'] = 14.058324;
            $this->data['locationmap']['y'] = 108.277199;
        }

        //get zone
        $arrZone = $this->model_core_country->getZones(" AND countryid = 188");
        $this->data["cboZone"] = $this->common->combobox($arrZone, "zonename", "zoneid");

        //get station
        $arrStation = $this->model_core_station->getStations();
        $this->data["cboStation"] = $this->common->combobox($arrStation, "name", "stationid");

        //get propertytypes
        $arrPropertyType = $this->model_property_propertytype->getPropertyTypes();
        $this->data["arrPropertyType"] = $arrPropertyType;

        //get roomtypes
        $arrRoomType = $this->model_property_roomtype->getRoomTypes();
        $this->data["arrRoomType"] = $arrRoomType;
        //end get component default -----------------------------------------------------------------


        //for form edit
        $productid = $this->request->get['productid'];
        if ($productid != "") {
            $productEdit = $this->model_property_product->getItem($productid);
            $this->data['productedit'] = $productEdit;
        }

        $this->template = "module/post_product_form.tpl";
        $this->id = "content";
        $this->render();
    }

    public function step2()
    {

        $this->load->model("property/additionalsource");
        $this->load->model("property/product");
        $this->load->model("property/productadditional");

        //load component default
        $this->data['additional_source'] = $this->model_property_additionalsource->getAll();

        //for form edit
        $productid = $this->request->get['productid'];
        if ($productid != "") {
            $productEdit = $this->model_property_product->getItem($productid);
            $this->data['productedit'] = $productEdit;
            $productAdditionals = $this->model_property_productadditional->getListByProductId($productid);

            foreach ($productAdditionals as $additional) {
                $this->data['productedit']['additional'][$additional['additionalsourceid']] = $additional['value'];
            }

        }

        $this->template = "module/post_product_form_step2.tpl";
        $this->id = "content";
        $this->render();
    }

    public function preview()
    {

        $this->load->model("property/additionalsource");

        $this->data['arrAdditionalSource'] = $this->model_property_additionalsource->getAll();

        $this->template = "module/propertyproduct_preivew.tpl";
        $this->id = "content";
        $this->render();
    }

    public function poststep1()
    {
        $data = $this->request->post;

        if ($this->validatePostStep1($data)) {

            $folderUpload = "guest/";
            if ($this->member->getId() != "") {
                $folderUpload = "user" . $this->member->getId() . "/";
            }

            $arrImages = explode(";", $data['upload_files']);
            $lengthArrImages = count($arrImages) - 1;
            if ($lengthArrImages > 0) {
                $data['image'] = $folderUpload . $arrImages[0];
            }
            for ($i = 1; $i < $lengthArrImages; $i++) {
                $data['product_image'][$i]['image'] = $folderUpload . $arrImages[$i];
            }

            //format price, floorsize
            $data['price'] = $this->string->toNumber($data['price']);
            $data['length'] = $this->string->toNumber($data['length']);

            //var_dump($data);
            $data['locationmap'] = $data['zoom'] . "##" . $data['x'] . "##" . $data['y'];

            //merge with old session
            $productSession = $this->session->data["PostPropertyProduct"];
            if (isset($productSession)) {
                $product_description = array_merge($productSession['product_description'][$_SESSION['lang_session']], $data['product_description'][$_SESSION['lang_session']]);
                $data['product_description'][$_SESSION['lang_session']] = $product_description;
                $data = array_merge($productSession, $data);
            }

            $this->session->set("PostPropertyProduct", $data);
            $this->data['output'] = "true";

        } else {

            foreach ($this->error as $message) {
                $this->data['output'] .= $message . "<br/>";
            }
        }

        $this->template = "common/output.tpl";
        $this->render();
    }

    public function validatePostStep1($data)
    {

        if ($data["product_description"][$_SESSION['lang_session']]["name"] == "") {
            $this->error['name_empty'] = $this->language->get("war_product_name_empty");
        }

        if ($data['location'] == "") {
            $this->error['location_empty'] = $this->language->get("war_product_location_empty");
        }

        if ($data['price'] <= 0) {
            $this->error['price_empty'] = $this->language->get("war_product_price_empty");
        }

        if ($data['length'] <= 0) {
            $this->error['size_empty'] = $this->language->get("war_product_floorsize_empty");
        }

        //partern check dd/mm/yyyy
        $patternDate = "/^[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4}$/";
        if ($data['date_available_from'] == "") {
            $this->error['date_available_from_empty'] = $this->language->get("war_product_availabledate_empty");
        } elseif (preg_match($patternDate, $data['date_available_from']) == 0) {

            $this->error['date_available_from_empty'] = $this->language->get("war_product_availabledate_invalid");
        }

        if (count($this->error) > 0) {
            return false;
        }
        return true;
    }


    public function previewProduct()
    {
        $data = $this->request->post;

        if ($this->validatePostStep2($data)) {

            $productSession = $this->session->data['PostPropertyProduct'];
            if (isset($productSession)) {
                $guestinfo = "";
                if ($this->member->getEmail() == "") {
                    $guestinfo .= "Fullname: " . $data['firstname'] . " " . $data['lastname'] . "<br/>";
                    $guestinfo .= "Email: " . $data['email'] . "<br/>";
                    $guestinfo .= "Phone: " . $data['phone'] . "<br/>";
                    $data['guestinfo'] = $guestinfo;
                }

                if (isset($productSession)) {
                    $product_description = array_merge($productSession['product_description'][$_SESSION['lang_session']], $data['product_description'][$_SESSION['lang_session']]);
                    $data['product_description'][$_SESSION['lang_session']] = $product_description;
                    $data = array_merge($productSession, $data);
                }
                $this->session->set("PostPropertyProduct", $data);
                $this->data['output'] = "true";
            } else {
                $this->data['output'] = "lostsession";
            }

        } else {

            foreach ($this->error as $message) {
                $this->data['output'] = $message . "<br />";
            }

        }

        $this->template = "common/output.tpl";
        $this->render();
    }

    public function poststep2()
    {

        $data = $this->request->post;
        if ($this->validatePostStep2($data)) {

            $productSession = $this->session->data['PostPropertyProduct'];
            if (isset($productSession)) {
                $guestinfo = "";
                if ($this->member->getEmail() == "") {
                    $guestinfo .= "Fullname: " . $data['firstname'] . " " . $data['lastname'] . "<br/>";
                    $guestinfo .= "Email: " . $data['email'] . "<br/>";
                    $guestinfo .= "Phone: " . $data['phone'] . "<br/>";
                    $guestinfo .= "Customertype: " . $data['customertype'] . "<br/>";
                    $data['guestinfo'] = $guestinfo;
                }

                if (isset($productSession)) {
                    $product_description = array_merge($productSession['product_description'][$_SESSION['lang_session']], $data['product_description'][$_SESSION['lang_session']]);
                    $data['product_description'][$_SESSION['lang_session']] = $product_description;
                    $data = array_merge($productSession, $data);
                }

                $this->load->model("property/product");
                if ($productSession['productid'] == '') {
                    $this->model_property_product->insert($data);
                    $this->data['output'] = "insert";
                } else {
                    $this->model_property_product->update($data);
                    $this->data['output'] = "update";
                }

                //var_dump($data);
                $this->session->remove("PostPropertyProduct");
            } else {
                $this->data['output'] = "lostsession";
            }

        } else {

            foreach ($this->error as $message) {
                $this->data['output'] = $message . "<br/>";
            }

        }

        $this->template = "common/output.tpl";
        $this->render();
    }

    public function validatePostStep2($data)
    {

        if ($data["product_description"][$_SESSION['lang_session']]["description"] == "") {
            $this->error['description_error'] = $this->language->get('war_product_description_empty');
        }

        if (count($this->error) > 0) {
            return false;
        }
        return true;
    }


    //save ad after preview
    public function postpreview()
    {

        $productSession = $this->session->data['PostPropertyProduct'];
        if (isset($productSession)) {
            $this->load->model("property/product");
            if ($productSession['productid'] == '') {
                $this->model_property_product->insert($productSession);
                $this->data['output'] = "insert";
            } else {
                $this->model_property_product->update($productSession);
                $this->data['output'] = "update";
            }
            $this->session->remove("PostPropertyProduct");
        } else {
            $this->data['output'] = "lostsession";
        }

        $this->template = "common/output.tpl";
        $this->render();
    }

    private function validateForm($data)
    {
        //$this->load->model("property/product");

        if (isset($data['product_description'])) {
            foreach ($data['product_description'] as $key => $description) {
                if (trim($description['name']) == '') {
                    $this->error['name'] = $this->language->get('warning_product_name_null');
                }
                if (!$this->smartweb->checkSEOURL($description['seo_url'], "propertyproduct", $data['productid'], $key)) {
                    $this->error['seo_url'] = $this->language->get('warning_seo_url_existed');
                }
            }
        }

        if (count($this->error) == 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}

?>