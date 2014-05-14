<?php
set_time_limit(300);
define('SERVER_NAME','server1');
define('SERVER_URL','http://gau-map:81/smartweb/fileserver/file_fanhanghieu/file/');

$file = "elog/mylog.txt";
if(SERVER_NAME == '')
	die('no synchronize');

// check internal log, if internal log null -> get external log
$str = @file_get_contents($file);
if($str == '') {
	$str = @file_get_contents(SERVER_URL."elog/log_".SERVER_NAME.".txt");
	$clear = @file_get_contents(SERVER_URL."clearlog.php?key=someonelikeyou&server=".SERVER_NAME);
}

//if both don't have log, die
if($str == '') {
	die('nothing to synchronize');
} else {
	$logs = explode(";",$str);
	if(count($logs)) {
		foreach($logs as $item) {
			if($item == '')
				continue;
			list($type,$filename) = explode(":",$item);
			$filename_get = str_replace(" ","%20",$filename);
			if($type == 'insert') {
				$str1 = @file_get_contents(SERVER_URL."upload/".$filename_get);
				file_put_contents("upload/".$filename,$str1);
				$str2 = @file_get_contents(SERVER_URL."thumbnails/".$filename_get);
				file_put_contents("thumbnails/".$filename,$str2);			
			} else if($type == 'delete') {
				if (file_exists("upload/".$filename))
					@unlink("upload/".$filename);
				if (file_exists("thumbnails/".$filename))	
					@unlink("thumbnails/".$filename);
			}
			
			$replace = $type.":".$filename.";";
			$str = preg_replace("/".$replace."/","",$str,1);
			file_put_contents($file,$str);
			echo $type." : ".$filename."<br/>";
		}
	}
}
@unlink($file);
echo "finished!!! try 1 more time until nothing to synchronize appears!";



?>
