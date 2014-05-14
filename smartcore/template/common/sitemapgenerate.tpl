<html>
<head>
	<link rel="stylesheet" href="<?php echo DIR_CSS?>00elife_default.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo DIR_CSS?>00elife_style.css" type="text/css" />
	<script type="text/javascript" src="<?php echo DIR_JS?>jquery-1.9.0.min.js"></script>
</head>
<body>
	<p>
		<input type="button" class="elife-button" value="Gen sitemap" onclick="gensitemap()" />
    </p>
    <p>
    	<span id="result"></span>
    </p>
    <script type="text/javascript">
		function gensitemap() {

			$.post("?route=common/sitemapgenerate/genSitemap", null, function(data){
				if(data == "true") {
					$('#result').text('Gen sitemap successfully!!');
				} else {
					$('#result').text('Gen sitemap failed!!');
				}
			});
			
		}
	</script>
</body>
</html>