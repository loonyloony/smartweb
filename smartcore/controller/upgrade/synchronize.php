<?php
class ControllerUpgradeSynchronize extends Controller
{
    public function index()
    {
        if (MAIN_SERVER == '' || SERVER_NAME == '') {
            $this->data['output'] = 'No server to synchronize';
        } else {
            $url = MAIN_SERVER . "index.php?route=upgrade/synchronize/viewlog&key=7d346e4d8df8d21f0ec4b079e650d6a4&server=" . SERVER_NAME;
            $url_clearlog = MAIN_SERVER . "index.php?route=upgrade/synchronize/clearlog&key=7d346e4d8df8d21f0ec4b079e650d6a4&server=" . SERVER_NAME;
            $log_str = @file_get_contents($url);
            if ($log_str != '') {
                $logs = json_decode($log_str, true);
                if (count($logs)) {
                    $count = 0;
                    foreach ($logs as $item) {
                        //array($type,$table,$field,$value,$where);
                        switch ($item[0]) {
                            case 'insertData':
                                $this->db->insertData($item[1], $item[2], $item[3]);
                                break;
                            case 'updateData':
                                $this->db->updateData($item[1], $item[2], $item[3], $item[4]);
                                break;
                            case 'deleteData':
                                $this->db->deleteData($item[1], $item[2], $item[3], $item[4]);
                                break;
                        }
                        $count++;
                        $this->data['output'] .= 'log 1: ' . $item[0] . ' for table ' . $item[1] . ' : done <br />';
                    }
                }
            }
            $return = @file_get_contents($url_clearlog);
        }
        if ($this->data['output'] == '') {
            $this->data['output'] = 'nothing to synchronize';
        }
        $this->template = "common/output.tpl";
        $this->render();

    }

    public function viewlog()
    {
        //authentication
        if ($this->request->get['key'] != '7d346e4d8df8d21f0ec4b079e650d6a4') {
            return;
        }

        //check right server
        $server = $this->request->get['server'];
        if ($server == '') {
            return;
        }

        $file = dirname(__FILE__) . '/../../../elog/log_' . $server . '.txt';
        // Open the file to get existing content
        $string = @file_get_contents($file);

        $logs = array();
        if ($string != '') {
            // decrypt
            $key = pack('H*', "bcb04b7e10abefd8b5476fd34cef08bc55abedeefdebae54a6717e2cbed960a3");
            $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
            $ciphertext_dec = $string;

            # retrieves the IV, iv_size should be created using mcrypt_get_iv_size()
            $iv_dec = substr($ciphertext_dec, 0, $iv_size);

            # retrieves the cipher text (everything except the $iv_size in the front)
            $ciphertext_dec = substr($ciphertext_dec, $iv_size);

            # may remove 00h valued characters from end of plain text
            $plaintext_dec = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);

            $str_after_convert = mb_convert_encoding($plaintext_dec, 'UTF-16', 'UTF-8');
            $plaintext_dec = rtrim($plaintext_dec, "\0");
            $this->data['output'] = $plaintext_dec;
            $this->template = "common/output.tpl";
            $this->render();
        }


    }

    public function clearlog()
    {
        //authentication
        if ($this->request->get['key'] != '7d346e4d8df8d21f0ec4b079e650d6a4') {
            return;
        }

        $server = $this->request->get['server'];
        if ($server == '') {
            return;
        }

        $file = dirname(__FILE__) . '/../../../elog/log_' . $server . '.txt';
        file_put_contents($file, '');
        $this->data['output'] = "true";
        $this->template = "common/output.tpl";
        $this->render();
    }


}

?>