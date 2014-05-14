<?php
class ControllerModuleRegister extends Controller
{
    private $error = array();

    public function index()
    {
        if ($this->request->get["type"] == "profile") {
            $this->load->model('customer/customer');
            $this->data['customer'] = $this->model_customer_customer->getItemByEmail($this->session->data['email']);
            $this->id = "profile";
            $this->template = "module/profile.tpl";
        } else {
            $this->id = "register";

            //get customertype
            $text_tenant = $this->language->get("text_customertype_tenant");
            $text_landlord = $this->language->get("text_customertype_landlord");
            $text_agent = $this->language->get("text_customertype_agent");
            $arrCustomerType = array($text_tenant => $text_tenant, $text_landlord => $text_landlord, $text_agent => $text_agent);
            $this->data["arrCustomerType"] = $this->common->radiobutton($arrCustomerType, "customertype", $text_tenant);

            $this->template = "module/register.tpl";
        }
        $this->render();
    }

    public function register()
    {
        //load library
        $this->load->model("customer/customer");

        //data
        $data = $this->request->post;
        if ($this->validate($data)) {
            //Gui ma kich hoat vo email cua member
            $activecode = $this->string->generateRandStr(10);
            $data["activecode"] = $activecode;

            $customerid = $this->model_customer_customer->insert($data);

            //register for receive news
            if ($data['subcribe']) {
                $this->load->model("sidebar/receivedemail");
                if ($data['email'] != "" && $this->validation->_checkEmail($data['email'])) {
                    $email = $this->model_sidebar_receivedemail->getItemByEmail($data['email']);
                    if (count($email) <= 0) {
                        $emailRegisterData['fullname'] = $data['firstname'] . " " . $data['lastname'];
                        $emailRegisterData['email'] = $data['email'];
                        $this->model_sidebar_receivedemail->insert($emailRegisterData);
                    }
                }
            }

            //send mail
            if ($customerid) {
                //Load libraries
                $this->load->helper('mail');

                //Send mail
                $to = $data['email'];

                // subject
                $subject = "[" . $this->config->get('config_sitename') . "] " . $this->language->get('text_register_complete');

                // Additional headers
                $headers = 'From: ' . $this->config->get('config_email');

                // To send HTML mail, the Content-type header must be set
                $headers .= 'MIME-Version: 1.0' . "\r\n";
                $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
                $link_active = HTTP_SERVER . 'kich-hoat.html?customerid=' . $customerid . '&activecode=' . $data['activecode'];
                $template = htmlspecialchars_decode($this->language->get('text_email_register_tempate'));
                $param = array('{customer}' => $data['firstname'] . " " . $data['lastname'], '{email}' => $data['email'], '{website}' => $this->config->get('config_sitename'), '{link_registration}' => "<a href= '" . $link_active . "' >" . $link_active . "</a>", '{active_number}' => $data['activecode'], '{site_email}' => $this->config->get('config_email'),);

                $message = htmlspecialchars_decode($this->string->inludeParameterToTemplate($param, $template));

                if (SKINID == 'mesushop') {
                    if (HelperMail::sendmail($to, $subject, $message, "")) {
                        //$this->model_customer_customer->changePassword($customer['customerid'],$customer['password']);
                    }
                } else {
                    HelperMail::sendEmail($this->config->get('config_contactemail'), $to, $this->config->get('config_sitename'), $subject, "", $message);
                }
            }

            $this->data['output'] = "true";
        } else {
            foreach ($this->error as $item) {
                $this->data['output'] .= $item . "<br/>";
            }
        }

        $this->template = "common/output.tpl";
        $this->render();
    }

    private function validate($data)
    {

        $isValid = true;
        if($isValid && $data['password'] == "")
        {
            $this->error['password'] = $this->language->get('war_passwordnotnull');
            $isValid = false;
        }
        if($isValid && $data['password'] != $data['repassword'])
        {
            $this->error['repassword'] = $this->language->get('war_confirmpasswordnotcorrect');
            $isValid = false;
        }
        //rule Singapore
        $pattern = "/([a-zA-Z0-9]){6,}/";
        if($isValid && SKINID == 'singapore' && !preg_match($pattern, $data['password'])) {
            $this->error['password'] = $this->language->get('war_password_rule_6_characters_numbers');
            $isValid = false;
        }

        if (!filter_var(trim($data['email']), FILTER_VALIDATE_EMAIL)) {
            $this->error['email'] = $this->language->get('war_invalidemail');
        } else {

            $customer = $this->model_customer_customer->getItemByEmail(trim($data['email']));
            if (count($customer)) {
                $this->error['email'] = $this->language->get('war_emailhasused');
            }
        }

        if (count($this->error)) {
            return false;
        } else {
            return true;
        }
    }

    private function checkemail($email)
    {
        $message = "";
        (eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$", $string)) ? $message = false : $message = true;
        return $message;
    }

    public function active()
    {
        $this->data['output'] = "false";

        $customerid = $this->request->get['customerid'];
        $activecode = $this->request->get['activecode'];

        $this->load->model("customer/customer");
        $customers = $this->model_customer_customer->checkActive($customerid, $activecode);

        if (count($customers) > 0) {
            $this->model_customer_customer->updateStatus($customerid, '1');
            $this->data['output'] = "true";
        }

        $this->id = "content";
        $this->template = "nhacxuan/active.tpl";
        $this->render();
    }
}

?>