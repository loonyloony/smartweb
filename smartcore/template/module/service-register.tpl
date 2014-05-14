<style>
#register-service tr td{ padding: 8px 5px}
	#register-service tr td:first-child{ text-align: right; padding-right: 25px;}
</style>

<!-- HTML CONTACT -->
<div class="elife-section-title"><h1><a><?php echo $contact['title'] ?></a></h1></div>

<div class="elife-section-content">
    <div class="elife-error elife-hidden"></div>
    <form method="post" action="" id="contractForm" name="contractForm">
    	<table id="register-service">
            <tr>
                <td><label for="input-1"><?php echo $title_fullname ?></label></td>
                <td><input type="text" name="fullname" id="fullname" class="elife-textbox"><i>(*)</i></td>
            </tr>
            <tr>
                <td><label for="input-2"><?php echo $text_email ?></label></td>
                <td><input type="text" name="email" id="email" class="elife-textbox"><i>(*)</i></td>
            </tr>
            <tr>
                <td><label for="input-3"><?php echo $text_phone ?></label></td>
                <td><input type="text" name="telephone" id="telephone" class="elife-textbox"></td>
            </tr>
            <tr>
                <td><label for="input-4"><?php echo $text_package ?></label></td>
                <td><?php if ($service == "hosting") { ?>
                    <select name="package" id="package">
                        <option value="personal" >E-Personal</option>
                        <option value="business">E-Business</option>
                        <option value="premium">E-Premium</option>
                        <option value="unlimited">E-Unlimited</option>
                    </select>
                <?php } else { ?>
                	Domain: <?php echo $productid ?>
               		<input type="hidden" name="package" id="package" value="<?php echo $productid ?>">
                <?php } ?>
                </td>
                <script>
                $(document).ready(function() {
                    $("#package").find('option').each(function() {
                        if ($(this).val() == "<?php echo $productid ?>")
                            $(this).attr('selected',true);
                    });
                });
                </script>
            </tr>
            <tr>
                <td><label for="input-5"><?php echo $text_duration ?></label></td>
                <td><select name="duration" id="duration">
                    <option value="12" >12 <?php echo $text_month ?></option>
                    <option value="24">24 <?php echo $text_month ?></option>
                    <option value="36">36 <?php echo $text_month ?></option>
                </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="button" class="elife-button" value="<?php echo $text_order ?>" onclick="sendMessage()" />
                <input type="button" class="elife-button" value="<?php echo $button_reset ?>" onclick="resetMessage()" /></td>
            </tr>
        </table>
    </form>
    
    <script language="javascript">
    
    function GetKey(evt){
    
        if(navigator.appName=="Netscape"){theKey=evt.which}
    
        if(navigator.appName.indexOf("Microsoft")!=-1){
            theKey=window.event.keyCode;
        }
    
        window.status=theKey;
    
        if(theKey==13){
            sendMessage();
        }
    
    }
    
    function sendMessage(){
        $.blockUI({ message: "<h1><?php echo $text_pleasewait ?></h1>" }); 
    
        $.post("?route=module/serviceregister/sendMessage", 
    
                $("#contractForm").serialize(), 
    
                function(data){
                    if(data!="true"){
                        //$('.elife-error').html(data);
                        //$('.elife-error').fadeIn("slow");
						alert(data);
                    } else {
                        alert("<?php echo $text_sendordertous ?>");
                        location.href = "<?php echo HTTP_SERVER ?>";
                    }
    
                    $.unblockUI();
    
                });
    }
	
	function resetMessage(){
		$('#contractForm').each (function(){
			this.reset();
		});
		$('.elife-error').hide();
	}
    
    </script>
</div>

<div class="elife-section-footer"></div>