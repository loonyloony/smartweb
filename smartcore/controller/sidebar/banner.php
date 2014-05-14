<?php
class ControllerSidebarBanner extends Controller
{
    public function index()
    {
        //$this->document->addScript("jquery.themepunch.kenburn.min.js");
        //$this->document->addStyle("sidebar_productcategory.css");
        $this->load->model("sidebar/banner");
        $this->data['banner'] = $this->model_sidebar_banner->getListByAddonid("banner");

        if (SKINID == 'singapore') {
            $this->load->model("property/propertytype");
            $this->load->model("core/country");
            $this->load->model("property/roomtype");

            $arrPropertyType = $this->model_property_propertytype->getPropertyTypes();
            $arrDictrict = $this->model_core_country->getZones(" AND countryid = 188");
            $arrRoomType = $this->model_property_roomtype->getRoomTypes();

            $this->data['cboPropertyType'] = $this->common->combobox($arrPropertyType, "name", "propertytypeid");
            $this->data['cboZone'] = $this->common->combobox($arrDictrict, "zonename", "zoneid");
            $this->data['cboRoomType'] = $this->common->combobox($arrRoomType, "name", "roomtypeid");

            if (SKINID == 'singapore') {
                $this->generateFacebookLink();
            }
        }

        $this->id = "banner";
        $this->template = "sidebar/banner.tpl";
        $this->render();
    }

    public function generateFacebookLink()
    {

        require_once(DIR_SYSTEM . 'library/facebooksdk/facebook.php');

        //app create with account dung4488@yahoo.com facebook
        // Create our Application instance (replace this with your appId and secret).
        if (SKINID == 'singapore') {
            $facebook = new Facebook(array('appId' => '402431456526786', 'secret' => 'e8225c835ac331792ca718fcbaf682dd',));
        }
        //$facebook->destroySession();

        // Get User ID
        $user = $facebook->getUser();

        if ($user) {
            try {
                // Proceed knowing you have a logged in user who's authenticated.
                $user_profile = $facebook->api('/me');
            } catch (FacebookApiException $e) {
                error_log($e);
                $user = null;
            }
        }

        // Login or logout url will be needed depending on current user state.
        if ($user) {
            $logoutUrl = $facebook->getLogoutUrl();
            $this->data['logoutFBLink'] = $logoutUrl;

            /*
            $profile['firstname'] = $user_profile['first_name'];
            $profile['lastname'] = $user_profile['last_name'];
            $profile['email'] = $user_profile['email'];
            $profile['password'] = "abc123";

            $this->load->model("customer/customer");
            $customer = $this->model_customer_customer->getItemByEmail($profile['email']);
            if(count($customer) <= 0) {
                //register
                $customerid = $this->model_customer_customer->insert($profile);
                //approved
                $this->model_customer_customer->updateStatus($customerid, 1);
            }

            //login
            $isLogin = $this->member->login($profile['email'],  md5($profile['password']), SITEID);
            if($isLogin) {
                echo "da login;";
            } else {
                echo "login failed;";
            }

            echo "email = " . $this->member->getEmail();
            */

        } else {
            $statusUrl = $facebook->getLoginStatusUrl();

            $params = array('scope' => 'email');

            $loginUrl = $facebook->getLoginUrl($params);
            $this->data['loginFBLink'] = $loginUrl;
        }


    }
}

?>