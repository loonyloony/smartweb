<div class="text-login right">
    <?php if($this->member->getEmail() == ""){ ?>
    <?php } else { ?>
        Chào, <span id="fnc-infor"><?php echo $this->session->data['account'] ?></span> | <a id="fnc-logout" style="cursor: pointer" ><?php echo $text_logout ?></a><br />
        <a href="<?php echo HTTP_SERVER ?>dang-ki.html?type=profile"><?php echo $text_updateinformation ?></a>
    <?php } ?>
</div>
<?php if($this->member->getEmail() == ""){ ?>
<div id="frm-login" class="right">
	<div id="message" class="right"></div>
    <div class="email-div">
        <label for="email"><?php echo $text_email ?></label>
        <input type="email" class="elife-textbox" name="email" id="lg-email" />
    </div>
    <div class="password-div">
        <label for="password"><?php echo $text_password ?></label>
        <input type="password" class="elife-textbox" name="password" id="lg-password" />
    </div>
    <div class="forgot">
        <input class="checkname"  type="checkbox" id="cookie" name="cookie" value="" />&nbsp;<?php echo $text_rememberme ?> 
        <br /><a href="<?php echo HTTP_SERVER ?>?route=common/forgotpassword">Quên mật khẩu</a> | <a href="<?php echo HTTP_SERVER ?>dang-ki.html"><?php echo $text_register ?></a>
    </div>
    <div class="btn-login">
        <a class="elife-button" id="button-login" ><?php echo $text_login ?></a>
    </div>
</div>
<?php } ?>
<script>
	$("#button-login").click(function(){
		var action = "?route=common/login";
		var cookie = 0;
		if($("#cookie").is(':checked'))
			cookie = 1;
		var form_data = {
				email : $('#lg-email').val(),
				password : $('#lg-password').val(),
				cookie: cookie,
				is_ajax:1
			}
			
		$.post(action, form_data, function(data){
				if(data == "true")
				{
					alert('<?php echo $war_loginsuccess ?>!');
					window.location.reload();
				}
				else
				{
					$("#message").html("<p class='error'><?php echo $text_invalidlogin ?>.</p>").show('slow');
				}
		});
	});
	
	$("#fnc-logout").click(function(){
		$.post('?route=common/login/logout', {email : "<?php echo $this->session->data['email'] ?>"}, function(data){
			if(data == "true")
			{
				alert('<?php echo $war_logoutsuccess ?>!');
				window.location.reload();	
			}
		});	
	});
</script>