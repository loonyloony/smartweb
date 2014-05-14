<?php
class ControllerSidebarLogin extends Controller
{
    public function index()
    {
        $this->id = "login";
        $this->template = "sidebar/login.tpl";
        $this->render();
    }

    public function checkLogin()
    {

        $remember = $this->request->post['remember'];
        if ($this->member->login(@$this->request->post['email'], @$this->request->post['password'], @$this->request->post['siteid'])) {

            if ($remember == 1) {
                setcookie("token", md5($this->session->data['customerid']), time() + 3600 * 24 * 30, "/");
                setcookie("password", $this->request->post['password'], time() + 3600 * 24 * 30, "/");
            }
            $this->load->model('customer/customer');
            $customer = $this->model_customer_customer->getItemByEmail($this->session->data['email']);

            // check if user become official member but not yet complete the profile
            if ($customer['completed_profile'] != 1 && $customer['usertype'] != $this->language->get('text_default_user_type')) {
                $this->data['output'] = "profile";
            } else {
                $this->data['output'] = "true";
            }

            //add point 0.5 when login in day
            $lastLogin = $this->date->formatMySQLDate($customer['lastlogin'], 'DMY', '/');
            //update lastLogin on customer
            $this->model_customer_customer->updateLastLogin($customer['email']);

            if (SKINID == 'fanhanghieu') {
                $now = $this->date->formatMySQLDate(date('Y-m-d'), 'DMY', '/');

                if ($lastLogin != $now) {
                    $this->model_customer_customer->addPoint($customer['email'], 0.5);
                }
            }


        } else {
            $this->data['output'] = $this->language->get('war_incorrectemailorpass');
        }

        $this->template = "common/output.tpl";
        $this->render();

    }

    public function logout()
    {
        setcookie('token', '', time() - 3600, "/");
        setcookie('password', '', time() - 3600, "/");
        $this->member->logout();

        $this->data['output'] = "true";
        $this->template = "common/output.tpl";
        $this->render();
    }
}

?>