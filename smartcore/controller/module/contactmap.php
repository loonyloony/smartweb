<?php
class ControllerModuleContactmap extends Controller
{
    function __construct()
    {
        $this->load->helper('image');
        $this->load->model('core/mediafiledescription');
    }

    public function index()
    {
        $this->document->addStyle("elife_partners.css");
        $this->document->addScript("jquery.blockUI.min.js");
        $mediaid = $this->smartweb->objectid;

        //load contact information
        if ($mediaid != '') {
            $this->data['contact'] = $this->model_core_media->getItem($mediaid);
        }

        //load google map
        $this->data['contactmap'] = $this->loadModule('module/location', 'loadLocation', array($mediaid));

        if (SKINID == "huutoan") {
            $this->load->model("core/email");
            $this->data['email'] = $this->model_core_email->getList();
        }

        /************************************
         * config
         ************************************/

        //set page title
        if ($this->data['contact']['meta_title'] == "") {
            $this->document->setTitle($this->data['contact']['title']);
        } else {
            $this->document->setTitle($this->data['contact']['meta_title']);
        }

        //meta tag
        $meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'] . " " . $this->data['contact']['metadescription'];
        $this->document->setDescription($meta_description);
        $meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'] . " " . $this->data['contact']['metadescription'];
        $this->document->setKeywords($meta_keywords);

        //link
        $this->document->addLink($this->url->getURL($this->data['contact']['alias'], 'media', $this->data['contact']['mediaid']));

        //OG
        $og_title = $this->data['contact']['title'];
        $og_url = $this->url->getURL($this->data['contact']['alias'], 'media', $this->data['contact']['mediaid']);
        $og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->data['contact']['imagepath'];
        $og_summary = $this->data['contact']['summary'];
        $og_description = $this->string->getTextLength($this->data['contact']['description'], 0, 100);
        $og_publicdate = str_replace("-", "/", $this->data['contact']['statusdate']);
        $og_revisiondate = str_replace("-", "/", $this->data['contact']['updateddate']);
        $this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);

        $this->template = "module/contact_map.tpl";
        $this->id = "content";
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
            $message['title'] = $this->language->get('text_contact');
            if (SKINID == "labwell") {
                $message['description'] = "Địa chỉ giao hàng:" . $data['shipaddress'] . "\r\n";
            }

            $message['description'] .= $this->language->get('text_content') . ": \r\n" . $data['description'] . "<br>";
            $message['description'] .= $this->language->get('text_phone') . ": " . $data['telephone'] . "\r\n";


            $message['folder'] = "inbox";

            $this->model_core_message->insert($message);

            $this->load->helper('mail');
            //Send mail

            if (SKINID == "huutoan") {
                $to = $data['department'];

                if ($to == "") {
                    $to = $site['contactemail'];
                }
            } else {
                $to = $site['contactemail'];
            }

            // subject
            $subject = "[" . $this->config->get('config_sitename') . "] " . $this->language->get('text_contact');

            // To send HTML mail, the Content-type header must be set
            $headers = 'MIME-Version: 1.0' . "\r\n";
            $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

            // Additional headers
            $headers .= 'From: ' . $data['fullname'] . $data['email'];

            // Mail it
            //$template = $this->language->get('message_template_recoverypassword');
            //$template = $this->language->get('text_template_contactmap');

            $template = "Xin chào,<br />
						Bạn có thư liên hệ từ {site}<br />
						
						Nội dung:<br />
						{description}<br /><br /> 								 								
						
						Trân trọng và cám ơn,<br>
						{fullname}.						 								
						<br /><br />	
						
						Thông tin liên hệ.<br />
						Tên: {fullname}.<br />
						Email: {email}.<br />
						Điện thoại: {telephone}.<br />
						";

            if ($data['shipaddress'] != "") {
                $template .= "Địa chỉ giao hàng: {shipaddress}";
            }


            $param = array('{site}' => $this->config->get('config_sitename'), '{fullname}' => $data['fullname'], '{description}' => htmlspecialchars_decode($data['description']), '{email}' => $data['email'], '{telephone}' => $data['telephone'], '{shipaddress}' => $data['shipaddress']);
            $message = htmlspecialchars_decode($this->string->inludeParameterToTemplate($param, $template));

            if (SKINID == "huutoan") {
                HelperMail::sendmail($to, $subject, $message, $data['email'], "mail", $data['fullname']);
            } else {
                HelperMail::sendEmail($data['email'], $this->config->get('config_contactemail'), "elife partners", $subject, "", $message);
            }

            /*$mail['from'] = $data['email'];
            $mail['FromName'] = $data['fullname'];
            $mail['to'] = $site['contactemail'];
            $mail['name'] = $site['sitename'];
            $mail['subject'] =  "Liên hệ";
            $arr = array($message['description']);
            $mail['body'] = $this->loadModule('module/contactmap','createEmailTemplate',$arr);

            $this->mailsmtp->sendMail($mail);*/
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
            $err["fullname"] = $this->language->get('war_entercontactname');
        } elseif ($data['email'] == "") {
            $err["email"] = $this->language->get('war_entercontactemail');
        } elseif ($this->validation->_checkEmail($data['email']) == false) {
            $err["email"] = $this->language->get('war_invalidemail');
        }

        return $err;
    }

    public function createEmailTemplate($contact)
    {
        $this->data['contact'] = $contact;

        $this->id = "content";
        $this->template = "common/email.tpl";

        $this->render();

    }
}

?>