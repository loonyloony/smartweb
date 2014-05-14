<?php
include('jsmin.php');
$files = $_GET['script'];
$skinid = $_GET['skinid'];
$key = md5($files);
$file = 'js/cachejs.'. $skinid . '.' . $key.'.js.php';

//check if we have cache
if(file_exists($file))
{
	header( 'Location: '.$file );
}
else
{
	$array_file = explode(",",$files);
	$output = "";
	foreach ($array_file as $item) {
		if ($item != "")
			$output .= file_get_contents("js/". trim($item));
	}
	//$output=JSMin::minify($output);
	//$this->data['output'] = $output;
	
	if (!is_dir('js/'))
	mkdir('js/' , 0777 );
	$handle = fopen($file, 'w');
	
	//begin compose content and gzip
	$offset = '$offset';
	$expire = '$expire';
	$buffer = '$buffer';
	$gzheader = "<?php ob_start ('ob_gzhandler');
   	header ('content-type: application/javascript; charset: UTF-8');
   	header ('cache-control: must-revalidate');
   	$offset = 7 * 24 * 60 * 60;
   	$expire = 'expires: ' . gmdate ('D, d M Y H:i:s', time() + $offset) . ' GMT';
   	header ($expire);
	header ('Last-Modified:' . gmdate ('D, d M Y H:i:s', time()) . ' GMT');
	?>";
	$gzfooter = "<?php if(extension_loaded('zlib')){ob_end_flush();}?>";
	
	fwrite($handle, $gzheader);
	fwrite($handle, $output);
	fwrite($handle, $gzfooter);
	
	fclose($handle);
	//end write file
	
	
	header( 'Location: '.$file );
	
	//$this->id="style";
	//$this->template="common/script.tpl";
	//$this->render();
}
?>