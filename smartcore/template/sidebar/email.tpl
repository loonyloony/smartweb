<div class="received-email-title"> Đọc tin qua E-mail </div>
<div class="received-email-content">
	<?php echo $text_registernowtoreceive ?>
</div>
<div class="txt-but-received-email">
	<div class="elife-left received-email-input">
		<input type="text" size="22" name="email" id="email" value="<?php echo $text_enteryouremail ?>" />
    </div>
    <div class="received-email-button elife-left">
    	<?php echo $text_register ?>
    </div>
    <div class="clearer">&nbsp;</div>
</div>

<script language="javascript">
	$("#email").click(function(){
		$("#email").val('')	
	});
	
	$("#email").focusout(function(e) {
		if($("#email").val() == "")
		{
        	$("#email").val('<?php echo $text_enteryouremail ?>')
		}
    });
	
	$(".received-email-button").click(function(){		
		var email = $("#email").val();
		if(email == ''){
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