<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/fileserver/self/');
define('DBNAME_PREFIX','smartweb_');







// HTTPS
define('HTTPS_SERVER', '');
define('HTTPS_IMAGE', '');
define('LANGUAGE_DEFAULT','vn');
// DB
define('SITEID', 'default');

//SMARTWEB DIR
define('DIR_APPLICATION', '');
define('DIR_CONTROLLER','controller/');
define('DIR_MODEL','model/');
define('DIR_LANGUAGE', 'language/');

define('DIR_VIEW','view/skin1/');
define('DIR_TEMPLATE','view/skin1/template/');
define('DIR_IMAGE', 'view/skin1/image/');
define('DIR_CSS', 'view/skin1/css/');
define('DIR_JS', 'view/skin1/js/');
define('DIR_XML', 'view/skin1/xml/');

define('DIR_DATABASE', '../system/database/');
define('DIR_COMPONENT', '../component/');
define('DIR_SYSTEM', '../system/');

//DEFINE FILE PATH
define('DIR_SERVERROOT', '../');











define('TOKE','20485');
$token = "";
$database_name = "";

if($_GET['token'] != "")
{
	$token = $_GET['token'];
}
elseif($_SESSION['token'] != "")
{
	$token = $_SESSION['token'];
}

switch($token)
{
	case md5("htn".TOKE):
		$database_name = DBNAME_PREFIX."htn";
	break;
	case md5("vinguyen".TOKE):
		$database_name = DBNAME_PREFIX."vinguyen";
	break;
	case md5("buffethanoi".TOKE):
		$database_name = DBNAME_PREFIX."hanoi";
	break;
	case md5("tulap".TOKE):
		$database_name = DBNAME_PREFIX."tulap";
	break;
	default:
		//exit("Nice to meet you!");
	break;
}
 
if($database_name != "")
{
	$_SESSION['token'] = $token;
}
else
{
	exit("Nice to meet you!");	
}

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'root');
define('DB_DATABASE', $database_name); 
define('DB_PREFIX', '');














?>