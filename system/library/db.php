<?php
final class DB
{
    private $driver;
    private $prefix;

    public function __construct($driver, $hostname, $username, $password, $database, $prefix = NULL)
    {
        if (!@require_once(DIR_DATABASE . $driver . '.php')) {
            exit('Error: Could not load database file ' . $driver . '!');
        }
        $this->driver = new $driver($hostname, $username, $password, $database, $prefix);

    }

    public function query($sql)
    {
        return $this->driver->query($sql);
    }

    public function escape($value)
    {
        return $this->driver->escape($value);
    }

    public function countAffected()
    {
        return $this->driver->countAffected();
    }

    public function getLastId()
    {
        return $this->driver->getLastId();
    }

    public function getNextId($tablename, $tableid)
    {
        return $this->driver->getNextId($tablename, $tableid);
    }

    public function getNextIdVarChar($tablename, $tableid, $prefix)
    {
        return $this->driver->getNextIdVarChar($tablename, $tableid, $prefix);
    }

    public function getNextIdVarCharNumber($tablename, $tableid, $prefix)
    {
        return $this->driver->getNextIdVarCharNumber($tablename, $tableid, $prefix);
    }

    public function insertData($tablename = NULL, $fields = NULL, $values = NULL)
    {
        //$this->saveLog('insertData', $tablename, $fields, $values, $where);
        return $this->driver->insertData($tablename, $fields, $values);
    }

    public function updateData($tablename = NULL, $fields = NULL, $values = NULL, $where = NULL)
    {
        //$this->saveLog('updateData', $tablename, $fields, $values, $where);
        return $this->driver->updateData($tablename, $fields, $values, $where);
    }

    public function deleteData($tablename = NULL, $where = NULL)
    {
        //$this->saveLog('deleteData', $tablename, $fields, $values, $where);
        return $this->driver->deleteData($tablename, $where);
    }

    private function saveLog($type, $table, $field, $value, $where)
    {
        /*
        if(CHILD_SERVER == '') return;
        else {
            $servers = explode(',',CHILD_SERVER);
        }
        $new_log = array($type,$table,$field,$value,$where);

        foreach ($servers as $item) {
            if($item == '') continue;
            $file = dirname(__FILE__).'/../../elog/log_'.$item.'.txt';
            // Open the file to get existing content
            $string = @file_get_contents($file);

            $logs = array();
            if($string != '') {
                // decrypt
                $key = pack('H*', "bcb04b7e10abefd8b5476fd34cef08bc55abedeefdebae54a6717e2cbed960a3");
                $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
                $ciphertext_dec = $string;

                # retrieves the IV, iv_size should be created using mcrypt_get_iv_size()
                $iv_dec = substr($ciphertext_dec, 0, $iv_size);

                # retrieves the cipher text (everything except the $iv_size in the front)
                $ciphertext_dec = substr($ciphertext_dec, $iv_size);

                # may remove 00h valued characters from end of plain text
                $plaintext_dec = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key,
                                                $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);

                $str_after_convert = mb_convert_encoding($plaintext_dec, 'UTF-16', 'UTF-8');
                $plaintext_dec = rtrim($plaintext_dec, "\0");
                $logs = json_decode($plaintext_dec,true);
            }


            $logs[] = $new_log;
            $str = json_encode($logs);

            //encrypt
            $key = pack('H*', "bcb04b7e10abefd8b5476fd34cef08bc55abedeefdebae54a6717e2cbed960a3");
            $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
            $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);

            $ciphertext = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key,
                                     $str, MCRYPT_MODE_CBC, $iv);

            $output = $iv.$ciphertext;

            // Write the contents back to the file
            file_put_contents($file, $output);
        }
        */
    }

}

?>