<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">

<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>Elife Partners Content Management System</title>
	<meta name="description" content=""/>
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<link rel="stylesheet" type="text/css" href="<?php echo DIR_CSS?>style.css" media="screen" />
    <link rel='stylesheet' type='text/css' href='<?php echo DIR_VIEW?>css/navigation.css'>
	<link rel='stylesheet' type='text/css' href='<?php echo DIR_CSS?>blockui.css'>
	<link rel='stylesheet' type='text/css' href='<?php echo DIR_CSS?>jquery-ui.css'>
    <link rel='stylesheet' type='text/css' href='<?php echo DIR_CSS?>jquery.tabs.css'>
    <link rel='stylesheet' type='text/css' href='<?php echo DIR_CSS?>elife.css'>
    <link rel='stylesheet' type='text/css' href='<?php echo DIR_CSS?>sitemapmenu.css'>
    <link rel='stylesheet' type='text/css' href='<?php echo DIR_CSS?>jelife_stack.css'>
    <link rel="stylesheet" type='text/css' href="<?php echo DIR_CSS?>jquery.treeview.css" />
    
    
    <script src="<?php echo DIR_JS?>jquery.js" type="text/javascript"></script>
	<script src="<?php echo DIR_JS?>00elife_core.js" type="text/javascript"></script>
    <script src="<?php echo DIR_JS?>jquery.ui.core.js"></script>
    
    
    <script src='<?php echo DIR_JS?>jquery.ui.datepicker.js' type='text/javascript' language='javascript'> </script>
    <script type='text/javascript' language='javascript' src='<?php echo DIR_JS?>jquery.blockUI.js'></script>
	<script type='text/javascript' language='javascript' src='<?php echo DIR_COMPONENT?>ckeditor/ckeditor.js'></script>
    
    <script src="<?php echo DIR_JS?>jquery.ui.widget.js"></script>
    <script src="<?php echo DIR_JS?>jquery.ui.mouse.js"></script>
    <script src="<?php echo DIR_JS?>jquery.ui.draggable.js"></script>
    <script src="<?php echo DIR_JS?>jquery.ui.droppable.js"></script>
    <script src="<?php echo DIR_JS?>jquery.ui.sortable.js"></script>
    <script src="<?php echo DIR_JS?>jquery.ui.tabs.js" type="text/javascript"></script>
    
    <script src="<?php echo DIR_JS?>jelife.jqDock.min.js" type="text/javascript"></script>
    <script src="<?php echo DIR_JS?>jelife.stack2.js" type="text/javascript"></script>
    
    <script src="<?php echo DIR_JS?>jquery.cookie.js" type="text/javascript"></script>
    
    
    <script src="<?php echo DIR_JS?>00elife_default.js" type="text/javascript"></script>
    
    
    
    
    
    
    
	
    
    
	
    
    <script src="<?php echo DIR_JS?>jquery.treeview.js" type="text/javascript"></script>
    <script src="<?php echo DIR_JS?>jquery.treeview.edit.js" type="text/javascript"></script>
    <script src="<?php echo DIR_JS?>jquery.cookie.js" type="text/javascript"></script>
	<script src="<?php echo DIR_JS?>jquery.ui.dialog.js" type="text/javascript"></script>
    
    
	
    
    <script src="<?php echo DIR_JS?>order.js" type="text/javascript"></script>
    
    <script src="<?php echo DIR_JS?>menu-collapsed.js" type="text/javascript"></script>
    
    
   
    <script src="<?php echo DIR_JS?>elife.js" type="text/javascript"></script>
    <script src="<?php echo DIR_JS?>control.js" type="text/javascript"></script>
     
    <script language="javascript">
		var HTTP_SERVER="<?php echo HTTP_SERVER ?>";
		var SKIN_PATH = "../<?php echo $this->smartweb->skinpath?>/css/00elife_style.css";
	</script>
    
    
    <!--[if lt IE 7]>
	<link rel='stylesheet' type='text/css' href='<?php echo DIR_CSS?>jquery.tabs-ie.css'>
	<link href="<?php echo DIR_VIEW?>css/ie_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<?php echo DIR_JS?>js/ie_png.js"></script>
    <script type="text/javascript">
       ie_png.fix('.png, #content .pagenavi, .aside ');
	</script>
<![endif]-->
</head>




<body>
    <div id="site-wrapper">
    
        <div id="header">
            <?php echo $header?>
        </div>
    
        <div class="main" id="main-two-columns-left">
        	<div class="right sidebar" id="sidebar">
        
                <?php echo $sidebar?>
                
                <div class="clearer">&nbsp;</div>
                
            </div>
            
            <div class="left" id="main-content">
        
                <?php echo $content?>
                
                <div id="cpanel-section" style="display:none">
                	<div class="section">
                    	<div class="section-title">
                        	<div class="titletext left"></div>
                            <div class="button right"><a id="closecpanel" class="button">Đóng</a></div>
                            <div class="clearer">&nbsp;</div>
                        </div>
                        <div class="section-content">
                        	<div class="loading"></div>
                        </div>
                    </div>
                	
                </div>
            
            </div>
            
            <div class="clearer">&nbsp;</div>

            
        </div>
    
        <div id="footer">
            <?php echo $footer?>
        </div>
    
    </div>
	<div id="popup" style="display:none">
        <div id="popup-content"></div>
        <div class="right">
            <input type="button" class="button" value="Đóng" onclick="closePopup()" />
        </div>
    </div>
</body>

</html>
