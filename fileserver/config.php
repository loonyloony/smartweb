<?php
// HTTP
define('DOMAIN_ROOT', ''); 
define('HTTP_SERVER', 'http://localhost/smartweb/');
define('FILE_SERVER', 'http://localhost/fileserver/');
define('HTTP_WEB', HTTP_SERVER);

// HTTPS
define('HTTPS_SERVER', '');
define('HTTPS_IMAGE', '');

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'root');
define('DB_DATABASE', 'smartweb_football'); 
define('DB_PREFIX', '');




















//SMARTWEB DIR
define('DIR_APPLICATION', 'smartcore/');
define('DIR_CONTROLLER','smartcore/controller/');
define('DIR_MODEL','smartcore/model/');
define('DIR_TEMPLATE','smartcore/template/');
define('DIR_LANGUAGE', 'smartcore/language/');

define('DIR_COMMON',FILE_SERVER.'common/');

define('DIR_JS',FILE_SERVER.'common/js/');

define('DIR_DATABASE', 'system/database/');
define('DIR_COMPONENT', 'component/');
define('DIR_SYSTEM', 'system/');

define('DIR_SERVERROOT', '');
?>