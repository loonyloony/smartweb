<div class="section">
	
    <div class="section-title">
    	<div class="left titletext"><?php echo $text_member_manage ?></div>
        <div class="button right">
            <input type="button" class="button" value="<?php echo $button_save ?>"  onclick="save()"/>
            <input class="button" type="button" name="add" value="<?php echo $button_cancel ?>" onclick="goback()"/>
        </div>
        <div class="clearer">&nbsp;</div>
    </div>

    <div class="section-content padding1">  
   		<div id="error" class="error" style="display:none"></div>  
        <table>
       	 	<form name="frm" id="frm" method="post" enctype="multipart/form-data">
                <tr>
                    <td><label><?php echo $label_product_price ?>:</label></td>
                    <td><input type="text" name="exchange_point" value="<?php echo $exchange_point?>" class="text number"  style="width:290px" /> / <?php echo $text_point?></td>
                </tr>
        	</form>
        </table>
            
    </div>

</div>
<script>
function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	$.post("?route=cpanel/memberbonus/savesetting", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				alert("<?php echo $announ_update_success ?>");
				goback();
			}
			else
			{
			
				$('#error').html(data).show('slow');
				$.unblockUI();
				
			}
			
		}
	);
}

function goback() {
	window.location = 'index.php?route=cpanel/memberbonus/';
}

</script>