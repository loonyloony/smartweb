<div id="footerNavLinks">
	<div class="footerNavCol fBR1Grey footerNavColFirst elife-left">
    	<div class="footNavTitle">
        	DONG DUONG BM CO., LTD
        </div>
        <div class="footColLinks">
        	<div>ADD: 268 Ly Thuong Kiet Str., Dist 10, HCMC</div>
            <div>Tel: (84-8) 3.8650891 - 3.8652631</div>
            <div>Fax: (84-8) 3.8659070</div>
            <div>Email: sales@dongduong.com.vn</div>
        </div>
    </div>
    <div class="footerNavCol fBR1Grey footerNavColSecond elife-left">
    	<div class="footNavTitle">
        	DONG DUONG HA NOI BRANCH
        </div>
        <div class="footColLinks">
        	<div>ADD: Tan My Str, My Dinh National Stadium, Tu Liem Ward, Ha Noi </div>
            <div>Tel: (084-4) 38535985</div>
            <div>Fax: (084-4-38537716</div>
            <div>Email: srhanoi@dongduong.com.vn</div>
        </div>
    </div>
    <div class="footerNavCol fBR1Grey elife-left">
    	<div class="footNavTitle">
        	Support Online
        </div>
        <div class="footColLinks">
        	<div class="contact-infor-item">
            	<label>Hà Nội:</label>
                <a href="ymsgr:sendIM?hakuna_matata04">
                	<img border="0" style="" src="http://opi.yahoo.com/online?u=hakuna_matata04&m=g&t=1">
                </a>
            </div>
            <div class="contact-infor-item">
            	<label>Hồ Chí Minh:</label>
                <a href="ymsgr:sendIM?hakuna_matata04">
                	<img border="0" style="" src="http://opi.yahoo.com/online?u=hakuna_matata04&m=g&t=1">
                </a>
            </div>
        </div>
    </div>
    <div class="footerNavCol elife-left footerNavColLast">
    	<div class="contact-email-title">Email sign up</div>
        <div class="contact-email-content"><?php echo ($this->request->get[lang] == 'vi') ? 'Để nhận thông tin khuyến mại và sản phẩm mới nhất, vui lòng đăng ký địa chỉ thư điện tử của Quý khách.' : 'To receive promotional information and latest products, please register e-mail address of the customer.' ?> </div>
        <div class="contact-email-box">
        	<input type="text" id="email" value="<?php echo $text_enteryouremail ?>" name="email">
        	<a class="elife-button" id="btnReceivedEmail"> <?php echo $button_send ?> </a>
        </div>
    </div>
    <div class="clearer"></div>
    <div class="footerCopy">
    	Copy &copy; 2014 by Dong Duong Company
    </div>
</div>

<script language="javascript">
	<?php 
		if($this->smartweb->sitemap["moduleid"] == "module/gallery")
			echo "jQuery.noConflict();";
	?>
	$("#email").click(function(){
		$("#email").val('')	
	});
	
	$("#email").focusout(function(e) {
		if($("#email").val() == "")
		{
        	$("#email").val('<?php echo $text_enteryouremail ?>')
		}
    });
	
	$("#btnReceivedEmail").click(function(){
		var email = $("#email").val();
		var anoun = "<?php echo $text_enteryouremail ?>";
		if(email == '' || email == anoun){
			alert('Vui lòng nhập địa chỉ email');
		} else {
			var url = "?route=sidebar/email/register";
			$.post(url, {email : email, fullname : 'anonymous'}, function(data){
				if(data == "true") {
					alert('<?php echo $war_contactsuccess ?>');
					$("#email").val('<?php echo $text_enteryouremail ?>')
				} else {
					alert(data);
				}
			});
		}
	});
</script>