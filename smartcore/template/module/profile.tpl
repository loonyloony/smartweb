<?php if($this->member->getId() != '') { ?>
<div id="profile">
<div id="message" class="elife-error" style="display:none"></div>

<div id="frm-update">
    <form id="frm-register" >
        <h3><?php echo $text_accountinfo  ?></h3>
        <table >
            <tr>
                <td width="30%"><label for="firstname"><?php echo $text_firstname ?></label></td>
                <td><input type="text" class="elife-textbox" name="firstname" id="firstname" value="<?php echo $customer['firstname'] ?>" /></td>
            </tr>
            <tr>
                <td><label for="lastname"><?php echo $text_lastname ?></label></td>
                <td><input type="text" class="elife-textbox" name="lastname" id="lastname" value="<?php echo $customer['lastname'] ?>" /></td>
            </tr>
<!--            <tr>
                <td><label for="address"><?php echo $title_address ?></label></td>
                <td><input type="text" class="elife-textbox" name="address" id="address" value="<?php echo $customer['address'] ?>" /></td>
            </tr>-->
            <tr>
                <td><label for="telephone"><?php echo $text_phone ?></label></td>
                <td><input type="text" class="elife-textbox" name="telephone" id="telephone" value="<?php echo $customer['telephone'] ?>" /></td>
            </tr>   
        </table>
        <div class="btn-login">
            <a class="elife-button" id="button-register"><?php echo $button_update ?></a>
        </div>
    </form>
</div>
<a class="elife-button"  onclick="updatepass()"><?php echo $button_change_password ?></a>
<div id="frm-pass" style="display:none">
	<form id="frmpass">
    	<table >
            <tr>
                <td width="30%"><label for="oldpassword"><?php echo $text_oldpass ?></label></td>
                <td><input type="password" class="elife-textbox" name="oldpassword" id="oldpassword" /></td>
            </tr>
            <tr>
                <td width="30%"><label for="newpassword"><?php echo $text_newpass ?></label></td>
                <td><input type="password" class="elife-textbox" name="newpassword" id="newpassword" /></td>
            </tr>
            <tr>
                <td width="30%"><label for="repassword"><?php echo $text_repassword ?></label></td>
                <td><input type="password" class="elife-textbox" name="repassword" id="repassword" /></td>
            </tr>
    	</table>
        <div class="btn-login">
            <a class="elife-button" id="button-password"><?php echo $button_update ?></a>
        </div>
    </form>
</div>
</div>
<script>
$("#button-register").click(function(data){ 
    $.post('?route=common/register/update', $("#frm-register").serialize(), function(data){
        if(data == "true")
        {
            alert("<?php echo $text_updatesuccess ?>");
            window.location.href = '<?php echo HTTP_SERVER ?>';
        }
        else
        {
			$("#message").html(data).show('slow');
        }
    });	
});

$("#button-password").click(function(data){ 
    $.post('?route=common/register/changepass', $("#frmpass").serialize(), function(data){
        if(data == "true")
        {
            alert("<?php echo $text_changepasssuccess ?>");
            window.location.href = '<?php echo HTTP_SERVER ?>';
        }
        else
        {
			$("#message").html(data).show('slow');
        }
    });	
});

function updatepass() {
	if($("#frm-pass").is(":visible"))
		$("#frm-pass").hide();
	else
		$("#frm-pass").show();
}

</script>
<?php 
	} else {
		echo $text_logintodofunction ;
	} 
?>