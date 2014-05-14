<?php
class ControllerModuleServiceregister extends Controller
{
    public function index()
    {
        $this->data['productid'] = $this->request->get['productid'];
        $this->data['service'] = $this->request->get['service'];
        $this->id = "content";
        $this->template = "module/service-register.tpl";
        $this->render();
    }

    public function sendMessage()
    {
        $data = $this->request->post;

        $error = $this->validate($data);

        if (count($error)) {
            foreach ($error as $item) {
                $this->data['output'] .= $item;
            }
        } else {

            $this->load->model("core/site");
            $this->load->model("core/message");

            $site = $this->model_core_site->getItem(SITEID);

            $message['to'] = $site['contactemail'];
            $message['from'] = '"' . $data['fullname'] . '" ' . $data['email'];
            $message['title'] = $this->language->get('text_order');
            $message['description'] .= $this->language->get('text_fullname') . ": " . $data['fullname'] . "<br>";
            $message['description'] .= $this->language->get('text_email') . ": " . $data['email'] . "<br>";
            $message['description'] .= $this->language->get('text_phone') . ": " . $data['telephone'] . "<br>";
            $message['description'] .= $this->language->get('text_product') . ": " . $data['package'] . "<br>";
            $message['description'] .= $this->language->get('text_registertime') . ": " . $data['duration'] . " " . $this->language->get('text_month') . "<br>";

            $message['folder'] = "inbox";

            $this->model_core_message->insert($message);

            $this->load->helper('mail');
            //Send mail
            $to = $site['contactemail'];
            // subject
            $subject = "[" . $this->config->get('config_sitename') . "] " . $this->language->get('text_order');

            // To send HTML mail, the Content-type header must be set
            $headers = 'MIME-Version: 1.0' . "\r\n";
            $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

            // Additional headers
            $headers .= 'From: ' . $data['fullname'] . $data['email'];

            // Mail it
            //$template = $this->language->get('message_template_recoverypassword');
            $template = "Xin chào,<br /><br />
							Bạn nhận được một đơn đặt hàng<br />
							Sản phẩm: {package}<br />
							Thời gian đăng kí: {duration} tháng<br />
							
							Trân trọng và cám ơn,<br>
							{fullname}.
							
							<br /><br />
							Thông tin liên hệ.<br />
							Họ tên: {fullname}
							Email: {email}.<br />
							Điện thoại: {telephone}.<br />
							
							";
            $param = array('{fullname}' => $data['fullname'], '{description}' => $data['description'], '{email}' => $data['email'], '{telephone}' => $data['telephone'], '{package}' => $data['package'], '{duration}' => $data['duration']

            );
            $message = $this->string->inludeParameterToTemplate($param, $template);
            HelperMail::sendEmail('elifepartners.com@gmail.com', $this->config->get('config_contactemail'), "Elife partners", $subject, "", $message);
            $this->data['output'] = "true";
        }

        $this->id = "content";
        $this->template = "common/output.tpl";

        $this->render();
    }

    private function validate($data)
    {
        $err = array();
        if ($data['fullname'] == "") {
            $err["fullname"] = $this->language->get('war_entercontactemail');
        } elseif ($data['email'] == "") {
            $err["email"] = $this->language->get('war_enteremail');
        } elseif ($this->validation->_checkEmail($data['email']) == false) {
            $err["email"] = $this->language->get('war_invalidemail');
        } elseif ($data['package'] == "") {
            $err["package"] = $this->language->get('war_notenterproject');
        }
        return $err;
    }
}

?>