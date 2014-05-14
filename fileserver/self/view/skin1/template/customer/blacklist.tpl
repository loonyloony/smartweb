<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

    <div class="section-title">
    	<div class="titletext left"><?php echo $heading_title_blacklist_ip ?></div>
        <div class="button right">
        	<input class="button" type="button" onclick="saveItem()" value="<?php echo $button_add ?>">
            <input class="button" type="button" onclick="deleteItem()" value="<?php echo $button_delete ?>">
        </div>
    </div>
        
    <div class="section-content">
        
        <form action="" method="post" id="listitem" name="listitem">
           	<div id="error" class="error" style="display:none"></div>
            <table>
            	<tr>
                	<td><?php echo $label_ip_address ?></td>
                    <td><input type="text" class="text" id="ip" name="ip" value="" size="40" /></td>
                </tr>
            </table>
            
            <div class="clearer">^&nbsp;</div>
            
            <div class="sitemap treeindex">
            
            	<table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="5%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="15%"><?php echo $text_number ?></th>
                        <th width="80%"><?php echo $label_ip_address ?></th>                                  
                    </tr>
                
                <?php
                if(count($blacklist_ip) > 0)
                {
                    $stt = 1;
                    foreach($blacklist_ip as $item)
                    {
                ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['customer_ip_blacklist_id']?>]" value="<?php echo $item['customer_ip_blacklist_id']?>" ></td>
                        
                        <td><?php echo $stt++ ?></td>
                        <td><?php echo $item['ip'] ?></td>
                    </tr>
                <?php
                    }
                }
                ?>                                  
                </tbody>
                </table>
            </div>
            <?php echo $pager?>
        
        </form>
        
    </div>
    
</div>
<script language="javascript">

function deleteItem()
{
	var answer = confirm("<?php echo $announ_del ?>")
	if (answer)
	{
		$.post("?route=customer/blacklist/delete", 
				$("#listitem").serialize(), 
				function(data)
				{
					if(data == "true")
					{
						alert('<?php echo $announ_del_success ?>');

						window.location.reload();
					}
				}
		);
	}
}

function saveItem(){
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });
	var ip = $("#ip").val();
	$.post("?route=customer/blacklist/save", 
			{ ip : ip }, 
			function(data)
			{
				if(data == "true")
				{
					window.location.reload();
				} else {
					$('#error').html(data).show('slow');
					$.unblockUI();
				}
			}
	);
}

</script>