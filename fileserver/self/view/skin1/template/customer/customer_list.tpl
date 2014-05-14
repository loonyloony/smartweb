<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

    <div class="section-title">
    	<div class="titletext left"><?php echo $label_heading_title ?></div>
        <div class="button right">
        	<input class="button" type="button" onclick="linkto('<?php echo $insert ?>')" value="<?php echo $button_add ?>">
            <input class="button" type="button" onclick="deleteItem()" value="<?php echo $button_delete ?>">
        </div>
    </div>
        
    <div class="section-content">
        
        <form action="" method="post" id="listitem" name="listitem">
           
            
            <div class="clearer">^&nbsp;</div>
            
            <div class="sitemap treeindex">
            
            	<table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="5%"><?php echo $text_number ?></th>
                        <th width="25%"><?php echo $text_fullname ?></th>
                        <th width="25%"><?php echo $text_email ?></th>
                        <th width="20%"><?php echo $text_phone ?></th>
                        <th width="14%"><?php echo $text_approval ?></th>  
                        <th width="15%"><?php echo $text_tool ?></th>                                  
                    </tr>
                
                <?php
                if(count($customers) > 0)
                {
                    $stt = 1;
                    foreach($customers as $item)
                    {
                ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['customerid']?>]" value="<?php echo $item['customerid']?>" ></td>
                        
                        <td><?php echo $stt++ ?></td>
                        <td><?php echo $item['fullname'] ?></td>
                        <td><?php echo $item['email'] ?></td>
                        <td><?php echo $item['telephone'] ?></td>
                        <td>
                        	<input id="link<?php echo $item['customerid'] ?>" type="checkbox" onclick="checkApproved(<?php echo $item['customerid'] ?>)" value="<?php echo $item['approved'] ?>" <?php echo ($item['approved'] == 1) ? 'checked = "checked"' : '';?> />
                        </td>
                        <td><a onclick="linkto('<?php echo $item[link_edit] ?>')" class="button"><?php echo $button_edit ?></a></td>
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
		$.post("?route=customer/customer/delete", 
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

function sortOrderItem()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });

	$.post("?route=customer/customer/sortorder", 
			$("#listitem").serialize(), 
			function(data)
			{
				if(data == "true")
				{
					$.unblockUI();
					window.location.reload();
				}
			}
	);
}

function checkApproved(customerid){
	var approved = '0';
	if($("#link"+customerid).is(':checked') == true){
		approved = '1';	
	}
	
	$.post("?route=customer/customer/checkApproved",{ customerid : customerid, approved : approved},	
		function(data){
		}
	);
	
}
</script>