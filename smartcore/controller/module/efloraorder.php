<?php
class ControllerModuleEfloraorder extends Controller
{
    public function index()
    {
        $floracart = $this->session->data['floracart'];
        $product = "";
        if (count($floracart) != 0) {
            foreach ($floracart as $item) {
                $product .= $item . ", ";
            }
        }
        $this->data['product'] = $product;
        $this->id = "content";
        $this->template = "module/efloraorder.tpl";
        $this->render();
    }

    public function colororder()
    {
        $this->load->model("splash/weblink");
        $banners = $this->model_splash_weblink->getListByAddonid("efloraorder");
        $hoa = array();

        foreach ($banners as $item) {
            $color = $item['link'];
            if (!is_array($hoa[$color])) {
                $hoa[$color] = array();
            }
            array_push($hoa[$color], $item);
        }
        $this->data['hoa'] = $hoa;

        //tempalte
        $this->id = "content";
        $this->template = "module/eflora_colororder.tpl";
        $this->render();
    }

    public function save_order()
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
            $message['title'] = "Đặt hàng";
            $message['description'] .= "Họ tên: " . $data['fullname'] . "<br>";
            $message['description'] .= "Email: " . $data['email'] . "<br>";
            $message['description'] .= "Địa chỉ: " . $data['address'] . "<br>";
            $message['description'] .= "Điện thoại: " . $data['telephone'] . "<br>";
            $message['description'] .= "Mã hoa: " . $data['productcode'] . "<br>";
            $message['description'] .= "Lời nhắn: " . $data['description'] . "<br>";

            $message['folder'] = "inbox";

            $this->model_core_message->insert($message);

            $this->load->helper('mail');
            //Send mail
            $to = $site['contactemail'];
            // subject
            $subject = "[" . $this->config->get('config_sitename') . "] Đặt hàng";

            // To send HTML mail, the Content-type header must be set
            $headers = 'MIME-Version: 1.0' . "\r\n";
            $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

            // Additional headers
            $headers .= 'From: ' . $data['fullname'] . $data['email'];

            // Mail it
            //$template = $this->language->get('message_template_recoverypassword');
            $template = "Xin chào,<br /><br />
							Bạn nhận được một đơn đặt hàng
							{description}<br /><br />
							
							Trân trọng và cám ơn,<br>
							{fullname}.
							
							<br /><br />
							Thông tin liên hệ.<br />
							Email: {email}.<br />
							Điện thoại: {telephone}.<br />
							
							";
            $param = array('{fullname}' => $data['fullname'], '{description}' => $data['description'], '{email}' => $data['email'], '{telephone}' => $data['telephone']

            );
            $message = $this->string->inludeParameterToTemplate($param, $template);
            HelperMail::sendEmail('elifepartners.com@gmail.com', $this->config->get('config_contactemail'), "Eflora", $subject, "", $message);
            $this->session->set("floracart", array());

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
            $err["fullname"] = "Vui lòng nhập họ tên liên hệ.";
        } elseif ($data['email'] == "") {
            $err["email"] = "Vui lòng nhập email liên hệ.";
        } elseif ($this->validation->_checkEmail($data['email']) == false) {
            $err["email"] = "Email này không hợp lệ.";
        } elseif ($data['productcode'] == "") {
            $err["code"] = "Bạn chưa chọn hoa";
        }
        return $err;
    }

    public function add()
    {
        $cart = $this->session->data['floracart'];
        $data = $this->request->post['name'];
        if (count($cart) != 0) {
            $exist = false;
            foreach ($cart as $item) {
                if ($item == $data) {
                    $exist = true;
                    break;
                }
            }

            if ($exist == true) {
                $this->data['output'] = "false";
            } else {
                array_push($cart, $data);
                $this->data['output'] = "true";
            }
        } else {
            $cart = array();
            array_push($cart, $data);
            $this->data['output'] = "true";
        }

        $this->session->set('floracart', $cart);

        $this->id = "content";
        $this->template = "common/output.tpl";

        $this->render();
    }

}

?>