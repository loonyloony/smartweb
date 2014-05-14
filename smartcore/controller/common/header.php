<?php
class ControllerCommonHeader extends Controller
{
    public function index()
    {

        $this->document->addScript("jquery.blockUI-1.9.min.js");
        //$this->document->addScript("jquery.blockUI.min.js"); use for old smartweb

        $this->data['logo'] = $this->config->get('config_logo');

        if (SKINID == "ginseng") {
            $this->load->model("sidebar/supportonline");
            $this->data['supportonline'] = $this->model_sidebar_supportonline->getListByAddonid("supportonline");
        }

        if (SKINID == 'singapore') {
            if ($this->smartweb->sitemap['moduleid'] != "module/postproduct" && isset($this->session->data['PostPropertyProduct'])) {
                $this->session->remove("PostPropertyProduct");
                echo "remove post product";
            }

            $this->checkLoginFacebook();
        }

        $this->id = "header";
        $this->template = "common/header.tpl";
        $this->render();
    }

    public function checkLoginFacebook()
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

            $profile['firstname'] = $user_profile['first_name'];
            $profile['lastname'] = $user_profile['last_name'];
            $profile['email'] = $user_profile['email'];
            //$profile['password'] = "abc123";
            $profile['password'] = $this->string->generateRandStr(6);

            $this->load->model("customer/customer");
            $customer = $this->model_customer_customer->getItemByEmail($profile['email']);
            if (count($customer) <= 0) {

                //register
                $customerid = $this->model_customer_customer->insert($profile);
                //approved
                $this->model_customer_customer->updateStatus($customerid, 1);


                //send email
                //Load libraries
                $this->load->helper('mail');
                //Send mail
                $to = $profile['email'];
                // subject
                $subject = "[" . $this->config->get('config_sitename') . "] " . $this->language->get('text_register_complete');

                // Additional headers
                $headers = 'From: ' . $this->config->get('config_email');

                // To send HTML mail, the Content-type header must be set
                $headers .= 'MIME-Version: 1.0' . "\r\n";
                $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

                $template = htmlspecialchars_decode($this->language->get('text_mail_genaccount_facebook'));
                $param = array('{customer}' => $profile['firstname'] . " " . $profile['lastname'], '{email}' => $profile['email'], '{password}' => $profile['password'], '{website}' => $this->config->get('config_sitename'), '{site_email}' => $this->config->get('config_email'));

                $message = htmlspecialchars_decode($this->string->inludeParameterToTemplate($param, $template));
                HelperMail::sendEmail($this->config->get('config_contactemail'), $to, $this->config->get('config_sitename'), $subject, "", $message);
            }

            //login
            $isLogin = $this->member->loginAfterAuthenExternalSystem($profile['email'], SITEID);

        } else {
            $statusUrl = $facebook->getLoginStatusUrl();
            $loginUrl = $facebook->getLoginUrl();
            $this->data['loginFBLink'] = $loginUrl;
        }


    }


}

?>