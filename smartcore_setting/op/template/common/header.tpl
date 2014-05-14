<div id="elife-logo">
	<?php if($logo == "") { ?>
	<a href="<?php echo HTTP_SERVER?>"><img class="img-responsive" src="<?php echo DIR_IMAGE?>logo.jpg" alt="logo" /></a>
    <?php } else { ?>
    <a href="<?php echo HTTP_SERVER?>"><img class="img-responsive" src="images/root/<?php echo $logo ?>" alt="logo" /></a>
    <?php } ?>
</div>
<div id="header-content" class="elife-right">
	<a>Trang chủ</a>&nbsp;&nbsp; |&nbsp;&nbsp;
	<a>Liên hệ</a>&nbsp;&nbsp; | &nbsp;&nbsp;
	<a>Sitemap</a>&nbsp;&nbsp; | &nbsp;&nbsp;
	<a>FAQs</a>&nbsp;&nbsp; | &nbsp;&nbsp;
	<input type="text" class="searchText" placeholder="Enter keywords...">
	<a><img src="<?php echo DIR_IMAGE?>bt-search.png" alt="search" style="vertical-align:middle;"/></a>
</div>

<div class="clearer"></div>

<div id="lang" class="elife-right">
   	<span><a id="lang_vn" >Vietnamese</a></span>
    <span>&nbsp;||&nbsp;</span>
   	<span><a id="lang_en" >English</a></span>
</div>

<div class="clearer"></div>


<script>

	$("#lang_vn").click(function() {
		$.post("<?php echo HTTP_SERVER?>?route=common/language&language=vn", {url: document.URL}, function (data) {
			window.location.href = data;
		});
	})
	
	$("#lang_en").click(function() {
		$.post("<?php echo HTTP_SERVER?>?route=common/language&language=en", {url: document.URL}, function (data) {
			window.location.href = data;
		});
	})   
</script>