<div class="sign-in elife-right">
	<div class="signin-box">
    	<div class="elife-left">
        	<img src="<?php echo DIR_IMAGE ?>icon-login.png" />
        </div>
        <div class="elife-left label-title">
        	<div class="signin-title"><?php echo $text_login ?></div>
            <div class="signin-support"><?php echo $text_customersupportsystem ?></div>
        </div>
        <div class="clearer"></div>
    </div>
    <?php if(isset($this->session->data['customerid']) ){ ?>
     	<?php echo $text_youareloggedinas ?> <span id="fnc-infor" style="font-weight:bold"><?php echo $this->session->data['email'] ?></span> <br />
        <?php echo $text_goto ?> <a href="<?php echo ROOT_HTTP_SERVER ?>helpdesk/"><?php echo $text_helpdesk ?></a><?php echo $text_ofelifepartners ?><br />
		<a href="<?php echo ROOT_HTTP_SERVER?>helpdesk/client/logout.php"><?php echo $text_logout ?></a>
    <?php } else { ?>
    <form id="frm" method="post">
	<div class="email">
    	<label for="email"><?php echo $text_email ?></label>
        <input type="email" name="email" id="email" value="" />
    </div>
    
    <div class="password">
    	<label for="password"><?php echo $text_password ?></label>
        <input type="password" name="password" id="password" value="" />
    </div>
    
    <div class="captcha">
    	<img id="captchaimg" style="margin-top: 7px;" src="<?php echo $linkImg ?>"  />
        <div class="captcha-input elife-right"><input type="text" name="code" class="text" size="20" /></div>
        <div class="clearer"></div>
    </div>
    
    <div class="">
    	<div class="elife-button signin-button elife-left"> <a onclick="login()"><?php echo $text_login ?></a></div>
        <!--<div class="elife-left forget-password"><a> QuÃªn máº­t kháº©u?</a></div>-->
        <div class="clearer"></div>
    </div>
    </form>
    <?php } ?>
	
    
    <div class="clearer"></div>
</div>
<div class="clearer"></div>
<script>
	
	function login() {
		$.blockUI ({ message: "<h1><?php echo $text_pleasewait ?></h1>"});
		$.post("<?php echo HTTP_SERVER ?>?route=splash/login/login",$("#frm").serialize(),function(data){
			if(data == "true") {
				location.href = "<?php echo ROOT_HTTP_SERVER ?>helpdesk/";	
			}else {
				alert("<?php echo $text_invalidlogin ?>");
				$("#captchaimg").attr("src",data);
			}
			$.unblockUI();
		});	
	}

</script>