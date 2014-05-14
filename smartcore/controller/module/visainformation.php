<?php
include("simple_html_dom.php");
class ControllerModuleVisainformation extends Controller
{
    function __construct()
    {
        $this->load->helper('image');
        $this->load->model('core/mediafiledescription');
    }

    public function index()
    {
        //$this->smartweb->objectid, this->smartweb->sitemapid
        $this->load->helper('image');
        $this->load->model("core/media");
        $this->data['media'] = $this->model_core_media->getItem($this->smartweb->objectid);
        if (count($this->data['media']) != 0) {
            $this->data['media']['imagethumbnail'] = HelperImage::resizePNG($this->data['media']['imagepath'], 218, 148);
            //$where=" AND mediafileid='".$this->smartweb->objectid."' AND filetype='file'";
            //$this->data['media']['filedownload']=$this->model_core_mediafiledescription->getList($where);
        }
        /************************************
         * config
         ************************************/

        //set page title
        if ($this->data['media']['meta_title'] == "") {
            $this->document->setTitle($this->data['media']['title']);
        } else {
            $this->document->setTitle($this->data['media']['meta_title']);
        }

        //meta tag
        $meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'] . " " . $this->data['media']['metadescription'];
        $this->document->setDescription($meta_description);
        $meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'] . " " . $this->data['media']['metakeyword'];
        $this->document->setKeywords($meta_keywords);

        //link
        $this->document->addLink($this->url->getURL($this->data['media']['alias'], 'media', $this->data['media']['mediaid']));

        //OG
        //$this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);


        // get related details
        $description = htmlspecialchars_decode($this->data['media']['description']);

        $html = str_get_html($description);
        $sublinks = array();
        try {
            if ($html != "") {
                foreach ($html->find("a") as $e) {
                    $href = $e->href;
                    if ($href[0] == "#") {
                        $id = substr($e->href, 8);
                        array_push($sublinks, $id);
                    }

                }
            }
        } catch (Exception $e) {
        };

        if (count($sublinks) != 0) {
            $where = " AND id IN (";
            foreach ($sublinks as $s) {
                $where .= $s . ",";
            }
            $where = substr($where, 0, -1);
            $where .= ") ";
            $this->data['list_detail'] = $this->model_core_media->getListMediaNoLang($where);
        }


        //tempalte
        $this->id = "content";
        $this->template = "module/visainformation.tpl";
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
            $message['title'] = "Yên cầu thủ tục đăng kí visa";
            $message['description'] .= " Bạn nhận được một yêu cầu liên hệ thủ tục tư vấn đăng kí visa từ email: " . $data['email'] . "<br />";
            $message['description'] .= "Quốc tịch: " . $data['nationality'] . "<br />";
            $message['description'] .= "Nơi đến: " . $data['destination'] . "<br />";
            $message['description'] .= "Mục đích: " . $data['content'] . "<br />";
            if ($data['service'] == "information") {
                $message['description'] .= "Yêu cầu: Tự làm visa<br />";
            } else {
                $data['description'] .= "Tìm dịch vụ hỗ trợ<br />";
            }
            $message['folder'] = "inbox";

            $this->model_core_message->insert($message);

            $this->load->helper('mail');
            //Send mail
            $to = $site['contactemail'];
            // subject
            $subject = "[" . $this->config->get('config_sitename') . "]Liên hệ";


            // Mail it
            //$template = $this->language->get('message_template_recoverypassword');
            $template = "Xin chào,<br /><br />
	
								{description}<br /><br />
								
								Trân trọng và cám ơn,<br>
								{fullname}.
								
								<br /><br />
								Thông tin liên hệ.<br />
								Email: {email}.<br />
																
								";
            $param = array('{fullname}' => $message['fullname'], '{description}' => $message['description'], '{email}' => $message['email'],);
            $message = $this->string->inludeParameterToTemplate($param, $template);
            //HelperMail::sendmail($to, $subject, $message, $data['email'], "mail", $data['fullname']);
            HelperMail::sendEmail('elifepartners.com@gmail.com', $this->config->get('config_contactemail'), "elife partners", $subject, "", $message);
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
            $err["fullname"] = "Vui lòng nhập họ tên liên hệ.";
        } elseif ($data['nationality'] == "") {
            $err["nationality"] = "Vui lòng nhập quốc tịch.";
        } elseif ($data['destination'] == "") {
            $err["nationality"] = "Vui lòng nhập nơi đến.";
        } elseif ($data['email'] == "") {
            $err["email"] = "Vui lòng nhập email liên hệ.";
        } elseif ($this->validation->_checkEmail($data['email']) == false) {
            $err["email"] = "Email này không hợp lệ.";
        } elseif ($data['content'] == "") {
            $err["content"] = "Vui lòng nhập mục đích.";
        }

        return $err;
    }

}

?>