<?php
$skinid = "";
define('TOKE', '20485');
switch ($_GET['site']) {
	case md5("dongduong" . TOKE):
        $skinid = "dongduong";
        break;
    case md5("walktet2014" . TOKE):
        $skinid = "walktet2014";
        break;
	case md5("op" . TOKE):
        $skinid = "op";
        break;
}
if ($skinid == "") {
    header("Location: error.html");
} else {
    define("DIR_FILE", "../../file_" . $skinid . "/file/");
}

?>