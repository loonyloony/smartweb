<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">

<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta name="description" content=""/>
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<link rel="stylesheet" type="text/css" href="<?php echo DIR_CSS?>style-login.css" media="screen" />
	<title>Elife Partners Content Management System</title>
</head>
<!--[if lt IE 7]>
	<link href="<?php echo DIR_VIEW?>css/ie_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<?php echo DIR_JS?>js/ie_png.js"></script>
    <script type="text/javascript">
       ie_png.fix('.png, #content .pagenavi, .aside ');
	</script>
<![endif]-->

<script type='text/javascript' language='javascript' src='<?php echo DIR_VIEW?>js/jquery.js'></script>
<body>

    <div id="site-wrapper">
    	<div class="header">
        	<div id="weblogo" class="left"> 	 
                <a href="<?php echo $WebsiteURL ?>" target="_blank">		
                    <img src="view/skin1/image/elife_logo_white.png" alt="Elife Logo White"  />
                </a>
            </div>
            <div id="language" class="right">
            	Ngôn ngữ/Language: <br />
				<a title="Việt Nam"><img src="view/skin1/image/flags/flag_vn.png" alt="Việt Nam" /></a>
                <a title="English"><img src="view/skin1/image/flags/flag_en.png" alt="English" /></a>
            </div>
            <div class="clearer">&nbsp;</div>
        </div>
        <div class="main">
            <?php echo $content?>
        </div>
    
        <div id="footer">
            <?php echo $footer?>
        </div>
    
    </div>

</body>

</html>
