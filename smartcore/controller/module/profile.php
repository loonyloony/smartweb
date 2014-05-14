<?php
class ControllerModuleProfile extends Controller
{
    private $error = array();

    public function index()
    {
        $this->load->model('customer/customer');
        $this->data['customer'] = $this->model_customer_customer->getItemByEmail($this->session->data['email']);
        $this->id = "profile";
        $this->template = "module/profile.tpl";
        $this->render();
    }

    private function checkemail($email)
    {
        $message = "";
        (eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$", $string)) ? $message = false : $message = true;
        return $message;
    }


}

?>