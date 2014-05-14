<?php
error_reporting(0);
include("config.php");
require_once(DIR_SYSTEM . 'startup.php');
require_once(DIR_SYSTEM."library/image.php");
require_once(DIR_SYSTEM."helper/image.php");
$path = $_GET['path'];
$width = $_GET['width'];
$height = $_GET['height'];
$resizetype = $_GET['type'];
if(FILE_SERVER != "")
{
	switch($resizetype)
	{
		case "root":
			header( 'Location: '.IMAGE_SERVER.'images/smartweb_'.PROJECTID.'/root/'.$path ) ;
		break;
		default:
			header( 'Location: '.IMAGE_SERVER.'images/smartweb_'.PROJECTID.'/'.$resizetype.'-'.$width.'x'.$height.'/'.$path ) ;
		break;	
	}
}
else
{
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
			
			header('Content-Type: '.$mime);
			readfile($file);
		}
		else
		{
			echo $file;
		}
	}
	else
	{
		echo DIR_FILE.$path;	
	}	
}
?>