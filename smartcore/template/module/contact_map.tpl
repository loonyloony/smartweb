<!-- HTML CONTACT -->
<div class="elife-section-title"><h1><a><?php echo $contact['title'] ?></a></h1></div>

<div class="elife-section-content">
	<div class="seo_content" ><?php echo htmlspecialchars_decode($contact['seo_content']) ?></div>
	<div class="contact-image">
    	<?php if($contact['imagepath'] != ""){?>
        <img id="imagepreview" imagetype="images/resizepng-0x0" src="images/resizepng-0x0/<?php echo $contact['imagepath']?>" style="width: 100%;" />
        <?php }?>
    </div>
    <div class="elife-col2 elife-left">
        <?php echo htmlspecialchars_decode($contact['description']) ?>
        <!-- GOOGLE MAP -->
        <?php echo $contactmap ?>
    </div>
    <div class="elife-col2 elife-right">
        <div class="elife-error elife-hidden"></div>
        <form method="post" action="" id="contractForm" name="contractForm">
            <p>
                <label for="input-1"><?php echo $title_fullname ?></label><br>
                <input type="text" name="fullname" id="fullname" class="elife-textbox"><i>(*)</i>
            </p>
            <p>
                <label for="input-2"><?php echo $text_email ?></label><br>
                <input type="text" name="email" id="email" class="elife-textbox"><i>(*)</i>
            </p>
            <p>
                <label for="input-3"><?php echo $text_phone ?></label><br>
                <input type="text" name="telephone" id="telephone" class="elife-textbox">
            </p>
            <p>
                <label for="input-4"><?php echo $label_message ?></label><br>
                <textarea name="description" id="description" rows="10"></textarea>
            </p>
            <p>
                <input type="button" class="elife-button" value="<?php echo $text_sendtous ?>" onclick="sendMessage()" />
                <input type="button" class="elife-button" value="<?php echo $button_reset ?>" onclick="resetMessage()" />
            </p>
        </form>
    </div>
    <div class="clearer">&nbsp;</div>
    
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
    
        $.post("?route=module/contactmap/sendMessage", 
    
                $("#contractForm").serialize(), 
    
                function(data){
                    if(data!="true"){
                        //$('.elife-error').html(data);
                        //$('.elife-error').fadeIn("slow");
						alert(data);
                    } else {
                        alert("<?php echo $war_message_send_to_us ?>");
                        window.location.reload();
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