<?php 
	$productSession = $this->session->data['PostPropertyProduct'];
    
    if(!isset($productSession[product_description][$_SESSION['lang_session']][description])) {
    	if(isset($productedit))	{
    		$form_description = $productedit['description']; 
        }
    } else {
    	$form_description = $productSession[product_description][$_SESSION['lang_session']][description];
    }
    
    if(!isset($productSession['additional'])) {
    	if(isset($productedit)) {
        	$form_product_additionals = $productedit['additional'];
        }
    } else {
    	$form_product_additionals = $productSession['additional'];
    }

    if(isset($productSession)) {
        $form_customertype = $productSession['customertype'];
    }
    
?>
<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>
<div class="post_product elife-section-content">
	<div class="elife-wrapper">
    	<form id="post_product" name="post_product" >
        	<div class="content">
            	<div class="elife-right mobile-step2">
                	<p>
                    	<a onclick="goBack()" class="elife-button-process"><?php echo $label_return_step1?></a>
                    </p>
                </div>
                <div class="clearer">&nbsp;</div>
                <div class="description elife-left">
                	<p>
                        <label><?php echo $text_property_description?></label><br/>
                        <span id="description_error" class="error-item"><?php echo $war_product_description_empty?></span>
                        <textarea id="description" name="product_description[<?php echo $_SESSION['lang_session'];?>][description]" style="width:935px; height:300px" placeholder="Enter detailed information about your place"><?php echo $form_description?></textarea>
                    </p>
                </div>
                <div class="additional-room elife-left" style="width:100%">
                	
                	<div class="title">
                        <label><?php echo $text_additional_info?></label><br/>
                    </div>
                    <div class="content">
                        <?php foreach($additional_source as $additional) {?>
                        	<div class="additional-item elife-left">
                                <div class="title-item" >
                                	<label><?php echo $additional['sourcename']?></label>
                                </div>
                                <div>
                                    <ul>
                                    	<?php $index = 0;?>
                                        <?php $arrValues = explode(',', $additional['sourcevalue']); ?>
                                        <?php foreach($arrValues as $value) {?>
                                        	<?php if($index == $form_product_additionals[$additional['additionalsourceid']]) {?>
                                        		<li <?php if(count($arrValues) >= 6) {?> style="display:inline-block; width:120px" <?php }?>><input type="radio" name="additional[<?php echo $additional['additionalsourceid']?>]" value="<?php echo $index?>" checked="checked" /> <?php echo trim($value)?></li>
                                            <?php } else {?>
                                            	<li <?php if(count($arrValues) >= 6) {?> style="display:inline-block; width:120px" <?php }?>><input type="radio" name="additional[<?php echo $additional['additionalsourceid']?>]" value="<?php echo $index?>" /> <?php echo trim($value)?></li>
                                            <?php }?>
                                            <?php $index++;?>
                                        <?php }?>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>
                        
                    </div>
                </div>
                
                <?php if($this->member->getEmail() == "") {?>
                <div class="guestinformation elife-left" style="width:100%">
                	<div class="title">
                        <label><?php echo $text_guest_info?></label><br/>
                    </div>
                    <div class="content">
                    	
                        <table>
                            <tr>
                                <td width="12%"><label><?php echo $label_fullname?>:</label></td>
                                <td width="50%">
                                	<input type="text" class="elife-textbox" name="firstname" id="firstname" placeholder="Firstname" value="<?php echo $productSession['firstname']?>" />
                                    <input type="text" class="elife-textbox" name="lastname" id="lastname" placeholder="Lastname" value="<?php echo $productSession['lastname']?>" />
                                    <span id="fullname_error" class="error-item"><?php echo $war_entername?></span>
                                </td>
                            </tr>
                            <tr>
                                <td width="12%"><span class="required">*</span><label><?php echo $text_email?>:</label></td>
                                <td>
                                	<input type="text" class="elife-textbox" name="email" id="email" value="<?php echo $productSession['email']?>" />
                                     <span id="email_error" class="error-item"><?php echo $war_entercontactemail?></span>
                                </td>
                            </tr>
                            <tr>
                                <td width="12%"><span class="required">*</span><label><?php echo $text_phone?>:</label></td>
                                <td>
                                	<input type="text" class="elife-textbox" placeholder="Singapore (+65" name="phone" id="phone" value="<?php echo $productSession['phone']?>" />
                                </td>
                            </tr>
                            <tr>
                                <td width="12%"><span class="required">*</span><label><?php echo $text_customer_type?>:</label></td>
                                <td style="padding-top: 0.6em">
                                    <input id="customertype_landlord" type="radio" name="customertype" value="<?php echo $text_customertype_landlord ?>" />&nbsp;<label for="customertype_landlord"><?php echo $text_customertype_landlord ?></label>&nbsp;&nbsp;&nbsp;
                                    <input id="customertype_agent" type="radio" name="customertype" value="<?php echo $text_customertype_agent ?>" />&nbsp;<label for="customertype_agent"><?php echo $text_customertype_agent ?></label>
                                </td>
                            </tr>
                        </table>
                        
                    </div>
                </div>
                <?php }?>
                
                <div class="clearer">&nbsp;</div>
				<div class="control elife-text-center mobile-bt-final">
				<table>
				<?php if(!isset($productedit)) {?>
					<tr>
						<td width="129px" height="50px" style="text-align:center"><a onclick="goBack()" class="elife-button-process"><?php echo $label_return_step1?></a></td>
					</tr>
					<tr>
						<td width="113px" height="50px" style="text-align:center"><a onclick="doPreview()" id="btnPreview" class="elife-button-process"><?php echo $button_preview_ad?></td>
					</tr>
					<tr>
						<td width="87px" height="50px" style="text-align:center"><a onclick="doProcess()" id="btnProcess" class="elife-button-process"><?php echo $button_post_ad?></a></td>
					</tr>
				 <?php } else {?>
					<tr>						
						<td width="129px" height="50px" style="text-align:center"><a onclick="goBack()"class="elife-button-process"><?php echo $label_return_step1?></a></td>
					</tr>
					<tr>
						<td width="129px" height="50px" style="text-align:center"><a onclick="doSaveAd()" id="btnSaveAd" class="elife-button-process"><?php echo $button_save_ad?></a></td>
					</tr>
				 <?php }?>
				</table>
				</div>
                <div class="control elife-text-center web-bt-final">
                	
                	<?php if(!isset($productedit)) {?>
                	<div>
                    	<a onclick="goBack()" class="elife-button-process"><?php echo $label_return_step1?></a>&nbsp;&nbsp;
            			<a onclick="doPreview()" id="btnPreview" class="elife-button-process"><?php echo $button_preview_ad?></a>&nbsp;&nbsp;
                        <a onclick="doProcess()" id="btnProcess" class="elife-button-process"><?php echo $button_post_ad?></a>
                    </div>
                    <?php } else {?>
                    	<a onclick="goBack()"class="elife-button-process"><?php echo $label_return_step1?></a>
                    	<a onclick="doSaveAd()" id="btnSaveAd" class="elife-button-process"><?php echo $button_save_ad?></a>
                    <?php }?>
            	</div>
            </div>
            
        </form>
    </div>
</div>
<script type="text/javascript">

$(function() {

    //customertype
    var customertype = "<?php echo $form_customertype?>";
    if(customertype != "") {
        var $radioCustomerTypes = $('input:radio[name=customertype]');
        if($radioCustomerTypes.is(':checked') === false) {
            $radioCustomerTypes.filter("[value="+customertype+"]").prop('checked', true);
        }
    } else {
        var $firstCustomerType = $( "input:radio[name='customertype']:first");
        $firstCustomerType.prop('checked', true);
    }
});

function goBack() {
	window.history.back();
}

function doProcess() {	
	if(validateForm()) {
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>"});
		$.post("?route=module/postproduct/poststep2", $('#post_product').serialize(), function(data){
			if(data == "insert") {
				window.location.href = "<?php echo HTTP_WEB?>";
			} else if(data == "lostsession") {
				window.location.href = "<?php echo HTTP_WEB?>free-listing.html";
			} else {
				$('#message').html(data).show('slow');
				$.unblockUI();
			}
		});
	}	
}


function doSaveAd() {
	if(validateForm()) {
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>"});
		$.post("?route=module/postproduct/poststep2", $('#post_product').serialize(), function(data){	
			if(data == "insert") {
				window.location.href = "<?php echo HTTP_WEB?>";
			} else if(data == "update") {
				window.location.href = "<?php echo HTTP_WEB?>list-ads.html";
			} else if(data == "lostsession") {
				window.location.href = "<?php echo HTTP_WEB?>list-ads.html";
			} else {
				$('#message').html(data).show('slow');
				$.unblockUI();
			}
		});
	}	
}

function doPreview() {
	if(validateForm()) { 
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>"});
		$.post("?route=module/postproduct/previewProduct", $('#post_product').serialize(), function(data){	
			if(data == "true") {
				
				var paramAnonymous = "";
				var anonymous = "<?php echo $_GET['anonymous'] ?>";
				if(anonymous != '') {
					paramAnonymous = "&anonymous=true";
				}
				
				window.location.href = "free-listing.html?step=3" + paramAnonymous;
				$.unblockUI();
			} else if(data == "lostsession") {
				window.location.href = "<?php echo HTTP_WEB?>free-listing.html";
			} else {
				$('#message').html(data).show('slow');
				$.unblockUI();
			}
		});
	}	
}

function validateForm() {
	var isValid = true;
	
	var description = $('#description').val();
	
	if($.trim(description) == '') {
		$('#description_error').show('slow');
		$('#description').focus();
		isValid = false;
	} else {
		$('#description_error').hide('slow');
	}
	
	//if guest need insert contact info
	var customerEmail = "<?php echo $this->member->getEmail()?>";
	if(customerEmail == "") {
		var firstname = $('#firstname').val();
		var lastname = $('#lastname').val();
		var email = $('#email').val();
		var phone = $('#phone').val();
		
		if(isValid && (firstname == "" || lastname == "")) {
			$('#fullname_error').show();
			if(firstname == "") {
				$('#firstname').focus();
			}
			if(lastname == "") {
				$('#lastname').focus();	
			}
			isValid = false;
		} else {
			$('#fullname_error').hide();
		}
		
		if(isValid && (email == "")) {
			$('#email_error').show();
			$('#email').focus();
			isValid = false;
		} else {
			$('#email_error').hide();
		}
	}
	
	return isValid;
}

</script>