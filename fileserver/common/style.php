<?php
include('jsmin.php');
$files = $_GET['style'];
$skinid = $_GET['skinid'];
$key = md5($files);
$file = '../smartweb_'.$skinid.'/css/cachecss.' . $key.'.css.php';

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
		{
			$output .= file_get_contents('../smartweb_'.$skinid.'/css/'.trim($item));
		}
	}
	$output = str_replace('; ',';',str_replace(' }','}',str_replace('{ ','{',str_replace(array("\r\n","\r","\n","\t",'  ','    ','    '),"",preg_replace('!/\*[^*]*\*+([^/][^*]*\*+)*/!','',$output)))));
	
	//$output=JSMin::minify($output);
	//$this->data['output'] = $output;
	
	if (!is_dir('../smartweb_'.$skinid.'/css/'))
	mkdir('../smartweb_'.$skinid.'/css/', 0777 );
	$handle = fopen($file, 'w');
	
	
	//begin compose content and gzip
	$offset = '$offset';
	$expire = '$expire';
	$buffer = '$buffer';
	$gzheader = "<?php ob_start ('ob_gzhandler');
   	header ('content-type: text/css; charset: UTF-8');
   	header ('cache-control: must-revalidate');
   	$offset = 7 * 24 * 60 * 60;
   	$expire = 'expires: ' . gmdate ('D, d M Y H:i:s', time() + $offset) . ' GMT';
   	header ($expire);
	header ('Last-Modified:' . gmdate ('D, d M Y H:i:s', time()) . ' GMT');
	
	ob_start('compress');
	function compress($buffer) {
		$buffer = preg_replace('!/\*[^*]*\*+([^/][^*]*\*+)*/!', '', $buffer);
		return $buffer;
	}
	?>";
	$gzfooter = "<?php if(extension_loaded('zlib')){ob_end_flush();}?>";
    
	fwrite($handle, $gzheader);
	fwrite($handle, $output);
	fwrite($handle, $gzfooter);
	
	fclose($handle);
	//end gzip and write file
	
	header( 'Location: '.$file );
	
	//$this->id="style";
	//$this->template="common/script.tpl";
	//$this->render();
}
?>