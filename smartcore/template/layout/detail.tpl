<?php 
	if(extension_loaded('zlib')) {
		ob_start ('ob_gzhandler');
  }
  
  function compress_html($buffer) {
  	$options = array('cssMinifier' => true, 'jsMinifier' => false, 'jsCleanComments' => false, 'xhtml' => true);
  	$html = Minify_HTML::minify($buffer, $options);
    return $html;
  }
  
  ob_start('compress_html');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- Document Title -->
<title><?php echo $title; ?></title>
<base href="<?php echo HTTP_SERVER; ?>" />
<?php if ($icon) { ?>
<link rel="shortcut icon" href="images/root/<?php echo $icon; ?>" />
<?php } ?>

<!-- SEO meta -->
<?php if ($meta_description) { ?>
<meta name="description" content="<?php echo $meta_description; ?>" />
<?php } ?>
<?php if ($meta_keywords) { ?>
<meta name="keywords" content="<?php echo $meta_keywords; ?>" />
<?php } ?>
<meta name="robots" content="index,follow" />
<!--<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>-->
<link rel="canonical" href="<?php echo $this->smartweb->weburl?>" />
<!-- OG Feed meta -->
<meta property="og:site_name" content="<?php echo $og_site_name; ?>" />
<meta property="og:type" content="article" />
<meta property="og:title" content="<?php echo $og_title; ?>" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<meta property="og:image" content="<?php echo $og_image; ?>" />
<meta property="og:description" content="<?php echo $og_description; ?>" />
<meta name="OriginalPublicationDate" content="<?php echo $og_publicdate; ?>"/>
<META name="REVISION_DATE" content="<?php echo $og_revisiondate; ?>"/>
<!-- Auto refresh -->
<!--<meta http-equiv="refresh" content="360"/>-->
<!--RSS-->
<link rel="alternate" type="application/rss+xml" title="YourSite - RSS" href="/RSS/GL/trang-chu.rss" />
<!-- Default Style -->
<link rel="stylesheet" href="<?php echo DIR_CSS?>00elife_default.css" type="text/css" />
<link rel="stylesheet" href="<?php echo DIR_CSS?>00elife_style.css" type="text/css" />
<link rel="stylesheet" href="<?php echo DIR_CSS?>00elife_layout.css" type="text/css" />
<link rel="stylesheet" href="<?php echo DIR_CSS?>elife_product_list.css" type="text/css" />
<link rel="stylesheet" href="<?php echo DIR_CSS?>elife_manufacturer_list.css" type="text/css" />
<link rel="stylesheet" href="<?php echo DIR_CSS?>00elife_theme.css" type="text/css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo DIR_CSS.$style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!-- Default Javascript -->
<!--[if lt IE 7]>
	<link href="<?php echo DIR_VIEW?>css/00elife_ie_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<?php echo DIR_JS?>ie_png.js"></script>
    <script type="text/javascript">
       ie_png.fix('.png');
	</script>
<![endif]-->

<!-- Javascript -->
<script type="text/javascript" src="<?php echo DIR_JS?>jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="<?php echo DIR_JS?>jquery-mousewheel.js"></script>
<script type="text/javascript" src="<?php echo DIR_JS?>elife_scroll.js"></script>
<script type="text/javascript" src="<?php echo DIR_USERJS?>elife_default.js"></script>


<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo DIR_JS.$script; ?>"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>

<?php ob_flush(); ?>

<body id="layout_<?php echo $layoutid?>">
<div id="elife-main">
    <div id="elife-main-bgtop">       	
    	<?php echo $content?>
    </div>
</div>
<div id="elife-fixbackground"></div>
</body>
</html>

<?php 
	ob_end_flush();
	if(extension_loaded('zlib')){ob_end_flush();}
?>