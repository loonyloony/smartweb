<?php $this->document->addScript("mediaelement-and-player.js"); ?>
<?php $this->document->addStyle("mediaelementplayer.css"); ?>
<div class="elife-foot">
    <div class="elife-left info">
        <h2>INFORMATION</h2>
        <a href="">Về chúng tôi</a><br />
        <a href="">Tuyển dụng</a><br />
        <a href="">Blog - chia sẻ kiến thức</a><br />
        <a href="">Liên hệ</a><br />
    </div>
    
    <div class="elife-left mxh">
        <h2>MẠNG XÃ HỘI</h2>
        <a href="http://facebook.com"><img src="<?php echo DIR_IMAGE;?>fb.png" alt="facebook smartweb" /></a>
        <a href="http://youtube.com"><img src="<?php echo DIR_IMAGE;?>utube.png" alt="facebook smartweb" /></a>
    </div>
    
    <div class="elife-left dvu">
        <h2>DỊCH VỤ CỦA ELIFE PARTNERS</h2>
        <a href="">Thiết kế web</a>, <a href="">Thiết kế web với smartweb</a>, <a href="">email marketing</a>, <a href="">email server</a>, <a href="">hosting</a>, <a href="">tên miền</a>, <a href="">marketing online trọn gói</a>, <a href="">tối ưu hóa công cụ tìm kiếm (SEO Google)</a>, <a href="">giải pháp trọn gói web groupon (hotdeal, muachung, cungmua...)</a> 
    </div>
    
    <div class="elife-right player_div">
        <h2>CHRISTMAS SONGS</h2>
        <audio id="media_player" width="242px" src="<?php echo DIR_IMAGE.$src[$x]; ?>" type="audio/mp3" controls="controls">
    </div>
    <div class="clearer"></div>
<div class="elife-foot">
<script> 
	var x = <?php echo $x ?>;
	var src = <?php echo json_encode($src); ?>;
	$('audio,video').mediaelementplayer({
		success: function (mediaElement, domObject) { 		
			mediaElement.addEventListener('ended', function(e) {
				if (x == <?php echo count($src) - 1;?>)
				{
					x = 0;	
				} else 
				{
					x++;	
				}
				mediaElement.setSrc('<?php echo DIR_IMAGE;?>' + src[x] );
				mediaElement.play();
			}, false);
			 
			// call the play method
			mediaElement.play();
			 
		}
	});	
</script>