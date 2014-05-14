<?php
final class Config
{
    private $data = array();

    public function __construct()
    {
        $this->db = Registry::get('db');
        $this->loadSiteConfig();
    }

    public function get($key)
    {
        return (isset($this->data[$key]) ? $this->data[$key] : NULL);
    }

    public function set($key, $value)
    {
        $this->data[$key] = $value;
    }

    public function has($key)
    {
        return isset($this->data[$key]);
    }

    public function load($filename)
    {
        $file = DIR_CONFIG . $filename . '.php';

        if (file_exists($file)) {
            $_ = array();

            require($file);

            $this->data = array_merge($this->data, $_);
        } else {
            trigger_error('Error: Could not load config ' . $filename . '!');
            exit();
        }
    }

    public function loadSiteConfig()
    {
        //SITE & LOAD SITE SETTING
        $siteid = "default";
        if ($_GET['site']) {
            $siteid = mysql_escape_string($_GET['site']);
        }

        //Load tat ca setting trong table Site
        $sql = "Select `site`.* from `site` Where siteid = '" . $siteid . "'";
        $query = $this->db->query($sql);
        if (count($query->rows) > 0) {
            foreach ($query->row as $key => $value) {
                $this->set("config_" . $key, $value);
            }
        } else {
            trigger_error('Error: Could not found this website with code: ' . $siteid . '!');
            exit();
        }

        if ($this->get("config_skinid") == "") $this->set("config_skinid", "default");
        define('SKINID', $this->get("config_skinid"));
        define('PROJECTID', $this->get("config_projectid") != "" ? $this->get("config_projectid") : $this->get("config_skinid"));
        define('SITEID', $siteid);

        if ($_SESSION['lang'] == null) {
            //SET LANGUAGE DEFAULT CONFIG
            $arr_language = explode(",", $this->get("config_language"));
            $this->set('config_languageid', $arr_language[0]);
        } else
            $this->set('config_languageid', $_SESSION['lang']);
    }
}

?>