<?php
class ControllerSidebarEmail extends Controller
{
    public function index()
    {
        $this->id = "email";
        $this->template = "sidebar/email.tpl";
        $this->render();
    }

    public function register()
    {
        $this->load->model("sidebar/receivedemail");

        $data = $this->request->post;

        if ($data['email'] != "" && $this->validation->_checkEmail($data['email'])) {
            $email = $this->model_sidebar_receivedemail->getItemByEmail($data['email']);
            if (count($email) > 0) {
                $this->data['output'] = $this->language->get('war_emailhasused');
            } else {
                $this->model_sidebar_receivedemail->insert($data);

                if (strcmp(SKINID, "marketingonline") == 0) {
                    $this->load->helper('mail');

                    $arr = array($data);
                    $body = $this->loadModule('sidebar/email', 'emailTemplate', $arr);

                    HelperMail::sendEmail('elifepartners.com@gmail.com', $data['email'], $data['fullname'], '[Elife partners] Gửi tài liệu marketing', '', $body);
                }

                $this->data['output'] = "true";
            }
        } else {
            $this->data['output'] = $this->language->get('war_invalidemail');
        }


        $this->id = "content";
        $this->template = "common/output.tpl";

        $this->render();
    }

    public function emailTemplate($data)
    {
        $this->data['dataview']['fullname'] = $data['fullname'];
        $this->data['dataview']['title'] = "50 cách đo lường hiệu quả marketing";
        $this->data['dataview']['website'] = "Elife Partners";
        $this->data['dataview']['link'] = ROOT_HTTP_SERVER . "images/root/upload/marketing.pdf";

        $this->id = "content";
        $this->template = "common/email.tpl";

        $this->render();
    }
}

?>