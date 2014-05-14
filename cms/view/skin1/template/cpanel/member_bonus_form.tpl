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
            	<input type="hidden" name="bonus_group_id" value="<?php echo $group['bonus_group_id']?>" class="text"  style="width:290px" />
            	<tr>
                    <td><label><?php echo $lbl_group_name?>:</label></td>
                    <td><input type="text" name="name" value="<?php echo $group['name'] ?>" class="text"  style="width:290px" /></td>
                </tr>
                <tr>
                    <td><label><?php echo $text_point?>:</label></td>
                    <td><input type="text" name="point" value="<?php echo $group['point'] ?>" class="text number"  style="width:290px" /></td>
                </tr>
                <tr>
                    <td><label><?php echo $label_discount ?>:</label></td>
                    <td><input type="text" name="discount" value="<?php echo $group['discount'] ?>" class="text number"  style="width:290px" />%</td>
                </tr>
        	</form>
        </table>
            
    </div>

</div>
<script>
function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	$.post("?route=cpanel/memberbonus/save", $("#frm").serialize(),
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
	window.location = 'index.php?route=cpanel/memberbonus/grouplist/';
}

</script>