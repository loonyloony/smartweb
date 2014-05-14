<?php
	include('config.php');
	include('../../config.php');
	require_once(DIR_SYSTEM . 'startupcms.php');
	if(FILE_SERVER != "" && $_GET['return'] == "")
	{
		//header( 'Location: '.FILE_SERVER.'component/elifeupload/index.php?&domain='.HTTP_SERVER.'&site='.md5(SKINID) ) ;
		//header( 'Location: '.FILE_SERVER.'component/elifeupload/test1.php' ) ;
		//header( 'Location: http://pqtuan:81/fileserver/component/elifeupload/test1.php?return=sdasdsad' ) ;
		//header( 'Location: test1.php?return=sdasdsad' ) ;
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="EN"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>Upload File</title> 
<script src="js/jquery.min.js"></script>
<style type="text/css"> 
html {overflow: auto;} 
html, body, div, iframe {margin: 0px; padding: 0px; height: 100%; border: none;} 
iframe {display: block; width: 100%; border: none; overflow-y: auto; overflow-x: hidden;} 
</style>
<script> 
function getReturn(sReturn)
{
	window.returnValue = sReturn;
	window.opener.document.getElementById('upload_return').value = sReturn;
	window.close();
}
<?php
	$projectid = "";
	if ($_SESSION['username'] != "") {
		$projectid = PROJECTID;
	};
	if($_GET['return'] != "")
	{
?>
		getReturn('<?php echo $_GET['return']?>');
<?php
	}
 ?>
</script>
</head> 
<body> 
<iframe id="tree" name="tree" src="<?php echo IMAGE_SERVER.'component/elifeupload/index.php?domain='.ROOT_HTTP_SERVER.'&site='.md5($projectid."20485")?>" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%" scrolling="auto"></iframe> 

</body> 
</html>


