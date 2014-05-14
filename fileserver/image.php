<?php
@ini_set('session.use_cookies', '1');
@ini_set('session.use_trans_sid', 'false');
@session_set_cookie_params(0, '/');
session_start();


//error_reporting(0);
define("DIR_FILE","file_".$_GET['site']."/file/");
define("DIR_WEBFILE","");
require_once("system/library/image.php");
require_once("system/helper/image.php");
$path = $_GET['path'];
$width = $_GET['width'];
$height = $_GET['height'];
$resizetype = $_GET['type'];

if ($path!="" && $resizetype!="" && file_exists(DIR_FILE.$path)) {
	switch($resizetype)
	{
		case "resize":
			$file = DIR_FILE.HelperImage::resize($path,$width,$height);
		break;
		case "resizeblack":
			$file = DIR_FILE.HelperImage::resize($path,$width,$height,"#090909");
		break;
		case "resizepng":
			$file = DIR_FILE.HelperImage::resizePNG($path,$width,$height);
		break;
		case "autosize":
			$file = DIR_FILE.HelperImage::autosizePNG($path,$width,$height);
		break;
		case "fixsize":
			$file = DIR_FILE.HelperImage::fixsize($path,$width,$height);
		break;
		case "root":
			$file = DIR_FILE.HelperImage::getroot($path);
		break;
		default:
			$file = DIR_FILE.HelperImage::resize($path,$width,$height);
		break;	
	}
    
  if(file_exists($file))
	{
		$info = getimagesize($file);
		$imageinfor = array(
			"width"  => $info[0],
			"height" => $info[1],
			"bits"   => $info["bits"],
			"mime"   => $info["mime"],
			'type'	 => $info[2]
		);
		$mime = $imageinfor['mime'];
		
		//header for file's image
		header('Content-Type: '.$mime);
		//header ('Cache-Control: must-revalidate');
		header("Cache-Control: private, max-age=604800, pre-check=10800");
		header("Pragma: private");
		$offset = 2 * 24 * 60 * 60;
		$expire = 'Expires: ' . gmdate ('D, d M Y H:i:s', time() + $offset) . ' GMT';
		header ($expire);
		header ('Last-Modified:' . gmdate ('D, d M Y H:i:s', time()) . ' GMT');
		if(isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])){
			// if the browser has a cached version of this image, send 304
			header('Last-Modified: '.$_SERVER['HTTP_IF_MODIFIED_SINCE'],true,304);
			exit;
		}
		header('Content-Length: ' . filesize($file));
		ob_clean();
		flush();
		
		readfile($file);
	}
	else
	{
		echo $file;
	}
}
else
{
	//echo DIR_FILE.$path;	
	
	$file = DIR_FILE.$path;
	
	$info = getimagesize($file);
	$imageinfor = array(
		"width"  => $info[0],
		"height" => $info[1],
		"bits"   => $info["bits"],
		"mime"   => $info["mime"],
		'type'	 => $info[2]
	);
	$mime = $imageinfor['mime'];
	
	//header for file's image
	header('Content-Type: '.$mime);
	//header ('Cache-Control: must-revalidate');
	header("Cache-Control: private, max-age=604800, pre-check=10800");
	header("Pragma: private");
	$offset = 2 * 24 * 60 * 60;
	$expire = 'Expires: ' . gmdate ('D, d M Y H:i:s', time() + $offset) . ' GMT';
	header ($expire);
	header ('Last-Modified:' . gmdate ('D, d M Y H:i:s', time()) . ' GMT');
	if(isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])){
  	// if the browser has a cached version of this image, send 304
  	header('Last-Modified: '.$_SERVER['HTTP_IF_MODIFIED_SINCE'],true,304);
  	exit;
	}
	header('Content-Length: ' . filesize($file));
	ob_clean();
	flush();
		
	readfile($file);
	
}
?>