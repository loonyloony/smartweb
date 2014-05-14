<?php

if (md5($_GET['key']) != '7d346e4d8df8d21f0ec4b079e650d6a4' )
	die('invalid authentication');
$server = $_GET['server'];
if($server == '') {
	die('no server detected');	
}

@unlink("elog/log_".$server.".txt");

echo "done";
?>
