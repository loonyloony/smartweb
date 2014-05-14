<div id="elife-logo">
	<?php if($logo == "") { ?>
	<a href="<?php echo HTTP_SERVER?>"><img src="<?php echo DIR_IMAGE?>logo.png" alt="logo" /></a>
    <?php } else { ?>
    <a href="<?php echo HTTP_SERVER?>"><img src="images/root/<?php echo $logo ?>" alt="logo" /></a>
    <?php } ?>
</div>
<div id="elife-header-content">
    <div class="elife-language elife-right">
        <div class="elife-wrapper">
            <?php echo $text_lang ?>:<br />
            <a id="lang_vn" ><img src="<?php echo DIR_COMMON?>assets/flags/vn_32.png" alt="Tiếng Việt"/></a>
            <a id="lang_en" ><img src="<?php echo DIR_COMMON?>assets/flags/en_32.png" alt="English"/></a>
        </div>
    </div>
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