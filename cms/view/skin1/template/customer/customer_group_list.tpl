<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

    <div class="section-title">
    	<div class="titletext left"><?php echo $label_heading_title ?></div>
        <div class="button right">
        	<input class="button" type="button" onclick="sortOrderItem()" value="<?php echo $text_sortorder ?>">
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
                        <th width="9%"><?php echo $text_number ?></th>
                        <th width="50%"><?php echo $label_customer_group_name ?></th>
                        <th width="10%"><?php echo $text_approval ?></th>
                        <th width="20%"><?php echo $text_sortorder ?></th>   
                        <th width="20%"><?php echo $text_tool ?></th>                                  
                    </tr>
                
                <?php
                if(count($customer_groups) > 0)
                {
                    $stt = 1;
                    foreach($customer_groups as $item)
                    {
                ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['customer_group_id']?>]" value="<?php echo $item['customer_group_id']?>" ></td>
                        
                        <td><?php echo $stt++ ?></td>
                        <td><?php echo $item['name'] ?></td>
                        <td>	
                        	<input id="link<?php echo $item['customer_group_id'] ?>" type="checkbox" onclick="checkApproval(<?php echo $item['customer_group_id'] ?>)" value="<?php echo $item['approval'] ?>" <?php echo ($item['approval'] == 1) ? 'checked = "checked"' : '';?> />
                        </td>
                        <td><input type="text" class="text" value="<?php echo $item['sortorder'] ?>" name="sortorder[<?php echo $item['customer_group_id'] ?>]" /></td>
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
		$.post("?route=customer/customergroup/delete", 
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

	$.post("?route=customer/customergroup/sortorder", 
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

function checkApproval(customer_group_id){
	var approval = '0';
	if($("#link"+customer_group_id).is(':checked') == true){
		approval = '1';	
	}
	
	$.post("?route=customer/customergroup/checkApproval",{ customer_group_id : customer_group_id, approval : approval},	
		function(data){
		}
	);
	
}
</script>