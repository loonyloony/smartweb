<?php if($this->member->getEmail() == "") { ?>

<form id="frm-register" >
    <div id="message" class="right"></div>
    <h3><?php echo $text_accountinfo ?></h3>
    <table>
    	<tr>
        	<td width="30%"><label for="account"><?php echo $text_account ?></label></td>
            <td><input type="text" class="elife-textbox" name="account" id="account" /></td>
        </tr>
        <tr>
        	<td><label for="email"><?php echo $text_mail ?></label></td>
            <td><input type="text" class="elife-textbox" name="email" id="email" /></td>
        </tr>
        <tr>
        	<td><label for="password"><?php echo $text_password ?></label></td>
            <td><input type="password" class="elife-textbox" name="password" id="password" /></td>
        </tr>
        <tr>
        	<td><label for="repassword"><?php echo $text_confirmpass ?></label></td>
            <td><input type="password" class="elife-textbox" name="repassword" id="repassword" /></td>
        </tr>   
    </table>
    <h3><?php echo $text_paymentinfo ?></h3>
    <table >
    	<tr>
        	<td width="30%"><label for="firstname"><?php echo $text_firstname ?></label></td>
            <td><input type="text" class="elife-textbox" name="firstname" id="firstname" /></td>
        </tr>
        <tr>
        	<td><label for="lastname"><?php echo $text_lastname ?></label></td>
            <td><input type="text" class="elife-textbox" name="lastname" id="lastname" /></td>
        </tr>
        <tr>
        	<td><label for="address"><?php echo $title_address ?></label></td>
            <td><input type="text" class="elife-textbox" name="address" id="address" /></td>
        </tr>
        <tr>
        	<td><label for="telephone"><?php echo $text_phone ?></label></td>
            <td><input type="text" class="elife-textbox" name="telephone" id="telephone" /></td>
        </tr>   
    </table>
    <div class="btn-login">
        <a class="elife-button" id="button-register"><?php echo $text_register ?></a>
    </div>
</form>
<script>
$("#button-register").click(function(data){ 
    $.post('?route=common/register', $("#frm-register").serialize(), function(data){
        if(data == "true")
        {
            alert("<?php echo $war_registersuccess ?>");
            window.location.href = '<?php echo HTTP_SERVER ?>';
        }
        else
        {
			$("#password").val("");
			$("#repassword").val("");
			$("#message").html("<p class='error'>" + data + "</p>").show('slow');
        }
    });	
});

</script>
<?php 
	} else {
		echo $text_alreadylogin;
	} 
?>