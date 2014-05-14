<div class="contact-channel">
	CÁC KÊNH LIÊN LẠC HỖ TRỢ NHANH VỚI CHÚNG TÔI
</div>

<div>
    <div class="cc-item elife-left">
        <a href="http://www.elifepartners.com/vi/contact-us.html" target="_blank"><img src="<?php echo DIR_IMAGE ?>contact-sale.png" /></a>
    </div>
    
    <div class="cc-item elife-left">
        <a href="http://www.elifepartners.com/vi/contact-us.html" target="_blank"><img src="<?php echo DIR_IMAGE ?>contact-support.png" /></a>
    </div>
    
    <div class="cc-item elife-left">
        <img src="<?php echo DIR_IMAGE ?>phone-sale.png" />
        <div class="title-cc-item">
        	<?php echo $supportonline[0]['telephone'] ?>
        </div>
    </div>
    
    <div class="cc-item elife-left">
        <img src="<?php echo DIR_IMAGE ?>phone-support.png" />
        <div class="title-cc-item">
        	<?php echo $supportonline[1]['telephone'] ?>
        </div>
    </div>
    
    <div class="cc-item elife-left">
        <a href="ymsgr:sendIM?<?php echo $supportonline[0]['yahoo']?>"><img src="<?php echo DIR_IMAGE ?>yahoo-chat.png" /></a>
    </div>
    
    <div class="cc-item elife-left">
        <a href="skype:<?php echo $supportonline[0]['skype']?>?chat"><img src="<?php echo DIR_IMAGE ?>skype-chat.png" /></a>
    </div>
    
    <div class="clearer"></div>
</div>

<script language="javascript">
	$(document).ready(function(e) {
        $('.cc-item').hover(function(){
			$(this).css('cursor', 'pointer');
			$(this).children('.title-cc-item').slideToggle('fast');
		});
    });
</script>