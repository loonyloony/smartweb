<div id="elife-logo">
	<?php if($logo == "") { ?>
	<a href="<?php echo HTTP_SERVER?>"><img src="<?php echo DIR_IMAGE?>logo.png" alt="logo" /></a>
    <?php } else { ?>
    <a href="<?php echo HTTP_SERVER?>"><img src="images/root/<?php echo $logo ?>" alt="logo" /></a>
    <?php } ?>
</div>
<div id="slogan">
	<h2><?php echo $dongduong_slogan ?></h2>
</div>

<div id="elife-header-content">
    <div class="elife-language elife-right">
        <div class="elife-wrapper">
        	<div id="navHeader">
        		<a href="<?php echo ($this->request->get[lang] == 'vi' || $this->request->get[lang] == '') ? 'so-do-trang.html' : 'sitemap.html' ?>"><?php echo $text_sitemap ?></a>
                <a href="<?php echo ($this->request->get[lang] == 'vi' || $this->request->get[lang] == '') ? 'dich-vu-khach-hang.html' : 'customer-services.html' ?>"><?php echo $customer_services ?></a>
                <a href="<?php echo ($this->request->get[lang] == 'vi' || $this->request->get[lang] == '') ? 'lien-he.html' : 'contact.html' ?>"><?php echo $text_contact ?></a>
            </div>
            <div id="lang">
            	<span><a id="lang_vn" >Tiếng Việt</a></span>
                <span>&nbsp;||&nbsp;</span>
            	<span><a id="lang_en" >English</a></span>
            </div>
        </div>
    </div>
    <div class="clearer"></div>
</div>


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