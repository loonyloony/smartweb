<?php
// HTTP
$root_http_server = "http://localhost/smartweb_dd/";
$file_server = "http://localhost/smartweb_dd/fileserver/";
//$min_file_server = "http://localhost:81/min/f=smartweb/fileserver/"; //host: $min_file_server = "http://css.webe.vn/min/f=";
$min_file_server = "http://localhost/smartweb_dd/fileserver/";
$image_server = "http://localhost/smartweb_dd/fileserver/";


//Set language for website
if ($_GET['lang'] == "" ) {
	$langs = $_SESSION['lang_session'] == "" ? "vn" : $_SESSION['lang_session'];
} else {
	$langs = $_GET['lang'];
}

$langs = $langs == "vn" ? "vi" : $langs;
$_SESSION['language'] = $langs == "vi" ? "vn" : $langs;
$_SESSION['lang'] = $langs == "vi" ? "vn" : $langs;
$_SESSION['lang_session'] = $langs == "vi" ? "vn" : $langs;

//server for synchronize
define('MAIN_SERVER', ''); 
define('CHILD_SERVER', '');
define('SERVER_NAME', ''); 

define('DOMAIN_ROOT', ''); 
define('ROOT_HTTP_SERVER', $root_http_server);
define('HTTP_SERVER', $root_http_server.$langs.'/');
define('FILE_SERVER', $file_server);
define('MIN_FILE_SERVER', $min_file_server);
define('IMAGE_SERVER', $image_server);
//define('FILE_SERVER', 'http://t2086.elifepartners.net/');
define('HTTP_WEB', $root_http_server.$langs.'/');

// HTTPS
define('HTTPS_SERVER', '');
define('HTTPS_IMAGE', '');

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'root');
define('DB_DATABASE', 'smartweb_op');   
define('DB_PREFIX', '');




















//SMARTWEB DIR
define('DIR_APPLICATION', 'smartcore/');
define('DIR_CONTROLLER','smartcore/controller/');
define('DIR_MODEL','smartcore/model/');
define('DIR_TEMPLATE','smartcore/template/');
define('DIR_LANGUAGE', 'smartcore/language/');

define('DIR_COMMON',FILE_SERVER.'common/');

define('DIR_JS',MIN_FILE_SERVER.'common/js/');

define('DIR_DATABASE', 'system/database/');
define('DIR_COMPONENT', 'component/');
define('DIR_SYSTEM', 'system/');

define('DIR_SERVERROOT', '');
define('TOKE', '20485');
?>