<div class="section">
	
    <div class="section-title">
    	<div class="left titletext"><?php echo $text_member_manage ?></div>
        <div class="button right">
        	<input type="button" class="button" value="<?php echo $button_add ?>"  onclick="insert()"/>
            <input type="button" class="button" value="<?php echo $button_delete ?>"  onclick="delete_group()"/>
            <input class="button" type="button" name="add" value="<?php echo $button_cancel ?>" onclick="goback()"/>
        </div>
        <div class="clearer">&nbsp;</div>
    </div>

    <div class="section-content padding1">  
   		<div id="error" class="error" style="display:none"></div>  
        <form action="" id="formlist" name="formlist" method="post">
        
        	<table class="data-table">
            	<thead>
                	<tr>
                    	<th width="5%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                    	<th><?php echo $lbl_group_name?></th>
						<th><?php echo $text_point?></th>
                    	<th><?php echo $label_discount?></th>
                        <th><?php echo $text_control?></th>
                    </tr>
                </thead>
                <tbody>
                	<?php 
                    foreach($groups as $item) {?>
                    <tr>
                    	<td><input class="inputchk" type="checkbox" name="delete[<?php echo $item['bonus_group_id']?>]" value="<?php echo $item['bonus_group_id']?>" >
                        </td>
                    	<td><?php echo $item['name'] ?></td>
                        <td><?php echo $item['point'] ?></td>
                        <td><?php echo $item['discount'] ?>%</td>
                        <td>
                        <a class="button" href="?route=cpanel/memberbonus/update&id=<?php echo $item['bonus_group_id']?>" ><?php echo $button_edit?></a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        
        </form>
    </div>

</div>
<script>
function goback() {
	window.location = '?route=cpanel/memberbonus/';
}

function insert() {
	window.location = '?route=cpanel/memberbonus/update';
}

function delete_group() {
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	$.post("?route=cpanel/memberbonus/delete", $("#formlist").serialize(),
		function(data){
			if(data == "true")
			{
				alert("<?php echo $announ_del_success ?>");
				window.location.reload();
			}
			else
			{
				$('#error').html(data).show('slow');
				$.unblockUI();
				
			}
			
		}
	);
}

</script>