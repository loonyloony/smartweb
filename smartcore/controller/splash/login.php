<?php
class ControllerSplashLogin extends Controller
{
    public function index()
    {
        $this->data['linkImg'] = $this->getCaptcha();

        $this->id = "login";
        $this->template = "splash/login.tpl";
        $this->render();
    }

    private function getCaptcha()
    {

        include('simple_html_dom.php');
        $curlit = curl_init();
        $formurl = ROOT_HTTP_SERVER . "helpdesk/client/?route=common/loginclient";
        $useragent = $_SERVER['HTTP_USER_AGENT'];
        $strCookie = 'PHPSESSID=' . $_COOKIE['PHPSESSID'] . '; path=/';
        session_write_close();
        curl_setopt_array($curlit, array(CURLOPT_URL => $formurl, CURLOPT_COOKIE => $strCookie, CURLOPT_HEADER => true, CURLOPT_RETURNTRANSFER => true, CURLOPT_USERAGENT => $useragent,//CURLOPT_COOKIEJAR => dirname(__FILE__)."/cookie.txt",
            //CURLOPT_COOKIEFILE => dirname(__FILE__)."/cookie.txt"
        ));
        //session_write_close();
        $result = curl_exec($curlit);
        $html = str_get_html($result);
        $cnt = 0;
        $src = "";
        foreach ($html->find("img") as $e) {
            $cnt++;
            if ($cnt == 2) {
                $src = $e->src;
            }
        }
        $src = substr($src, 2);
        return ROOT_HTTP_SERVER . "helpdesk" . $src;

    }

    public function login()
    {
        $curlit = curl_init();
        $formurl = ROOT_HTTP_SERVER . "helpdesk/client/?route=common/loginclient";
        $useragent = $_SERVER['HTTP_USER_AGENT'];
        $strCookie = 'PHPSESSID=' . $_COOKIE['PHPSESSID'] . '; path=/';
        session_write_close();
        curl_setopt_array($curlit, array(CURLOPT_URL => $formurl, CURLOPT_COOKIE => $strCookie, CURLOPT_HEADER => true, CURLOPT_RETURNTRANSFER => true, CURLOPT_USERAGENT => $useragent, CURLOPT_POSTFIELDS => array('email' => $_POST['email'], 'password' => $_POST['password'], 'code' => $_POST['code']),//CURLOPT_POSTFIELDS => array('cpanel_jsonapi_module'=>'Passwd','cpanel_jsonapi_func'=>'change_password','cpanel_jsonapi_apiversion'=>'2','newpass'=>'dat@123','oldpass'=>'ghfnu@dsusl','enablemysql'=>'1'),
            //CURLOPT_COOKIEJAR => dirname(__FILE__)."/cookie.txt",
            //CURLOPT_COOKIEFILE => dirname(__FILE__)."/cookie.txt"
        ));

        $result = curl_exec($curlit);
        curl_close($curlit);
        $pos = strpos($result, "index.php?route=page");
        if ($pos !== false) { // note: three equal signs
            $this->data['output'] = "true";
        } else {
            $this->data['output'] = $this->getCaptcha();
        }

        $this->id = "content";
        $this->template = "common/output.tpl";

        $this->render();

    }
}

?>