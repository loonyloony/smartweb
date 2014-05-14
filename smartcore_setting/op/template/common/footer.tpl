<div id="line-1"></div>
<div id="line-2"></div>
<div id="line-3">
	<div class="elife-left">
		<p style="color:#22b431; font-weight:bold; font-size:1.2em">OPODIS PHARMA</p>
		<img src="<?php echo DIR_IMAGE?>logo.png" alt="logo" width="60px" class="elife-left">
		<p style="font-weight: bold">Lô 78, Khu CX & CN Linh Trung III, Trảng Bàng, Tây Ninh, Việt Nam</p>
		<p style="font-weight: bold">Tel: (066) 3898 656</p>
		<p style="font-weight: bold">Fax: (84.66) 3898 655</p>
		<div class="clearer"></div>
		<img src="<?php echo DIR_IMAGE?>hotline.png" alt="hotline" width="30px" style="vertical-align:middle;">
		<span style="color:red; font-weight:bold; font-size:1.4em;">Hotline: (08) 3758 4032</span>
	</div>
	<div class="footerNavCol elife-right footerNavColLast">
			<div class="contact-email-title">Email sign up</div>
			<div class="contact-email-content"><?php echo ($this->request->get[lang] == 'vi' || $this->request->get[lang] == '') ? 'Để nhận thông tin khuyến mãi và sản phẩm mới nhất, vui lòng đăng ký địa chỉ thư điện tử của Quý khách.' : 'To receive promotional information and latest products, please register e-mail address of the customer.' ?> </div>
			<div class="contact-email-box">
				<input type="text" id="email" value="<?php echo $text_enteryouremail ?>" name="email">
				<a class="elife-button" id="btnReceivedEmail"> <?php echo $button_send ?> </a>
			</div>
		
		<div class="clearer"></div>    
	</div>
	<div class="clearer"></div>
	<div style="text-align:center; font-weight:bold">
		Copyright &copy; OPODIS Pharma . All Rights Reserved
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