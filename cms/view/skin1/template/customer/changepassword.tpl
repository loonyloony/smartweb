<div class="section" id="sitemaplist">

    <div class="section-title">
        <div class="left titletext"><?php echo $label_heading_title ?></div>
        <div class="button right">    
            <input class="button" type="button" name="save" value="<?php echo $button_change_password ?>" onclick="changePass()"/>
            <input class="button" type="button" name="cancel" value="<?php echo $button_cancel?>" onclick="window.location = '<?php echo urldecode($cancel)?>'"/> 
        </div>
        <div class="clearer">&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
   		<div class="error hidden"></div>
       	<form id="fchangepass" action="" method="post">
        	<input name="customerid" class="text" type="hidden" value="<?php echo $customer['customerid']?>" />
            <div class="clearer">^&nbsp;</div>
            <div class="profile">

                <p>
                	<label><?php echo $text_newpassword ?></label><br />
					<b><input class="text" size="50" name="password" type="password" /></b>
                </p>
                
                <p>
                	<label><?php echo $text_confirmnewpassword ?></label><br />
					<b><input class="text" size="50" name="confirm_password" type="password"/></b>
                </p>
            </div>
        
        </form>
    </div>

</div>

<script language="javascript">
function changePass()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
	$.post('?route=customer/customer/updatePassword', $("#fchangepass").serialize(), function(data){
		if(data=="true")
		{
			//$.blockUI({ message: "<h1>Your password has been changed</h1>" }); 
			alert("<?php echo $announ_changepass ?>");
			window.location = '<?php echo html_entity_decode($cancel)?>';
		}
		else
		{
			$(".error").html(data).show('slow');
			$.unblockUI();
		}
	});	
}
</script>
      