<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

    <div class="section-title">
    	<div class="titletext left"><?php echo $title_heading_filter?></div>
        <div class="button right">
            <a onclick="sortOrderItem()" class="button"><?php echo $text_sortorder ?></a>
            <a onclick="linkto('<?php echo $insert ?>')" class="button"><?php echo $button_add ?></a>
            <a onclick="deleteItem()" class="button"><?php echo $button_delete ?></a> 
        </div>
        <div class="clearer">&nbsp;</div>
    </div>
        
    <div class="section-content">
        
        <form action="" method="post" id="listitem" name="listitem">
            
            <div class="sitemap treeindex">
            
            	<table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="6%"><?php echo $text_number ?></th>
                        <th width="40%"><?php echo $label_filter_name ?></th>
                        <th width="22%"><?php echo $label_filter_type ?></th>
                        <th width="22%"><?php echo $text_sortorder ?></th>   
                        <th width="9%"><?php echo $text_tool ?></th>                                  
                    </tr>
                
                <?php
                if(count($datas) > 0)
                {
                    $stt = 1;
                    foreach($datas as $item)
                    {
                ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['filterid']?>]" value="<?php echo $item['filterid']?>" ></td>
                        
                        <td><?php echo $stt++ ?></td>
                        <td><?php echo $item['name']?></td>
                        <td><b><?php echo $item['type']?></b></td>
                        <td>
                        	<input type="text" class="text" value="<?php echo $item['sortorder'] ?>" name="sortorder[<?php echo $item['filterid'] ?>]" />
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
		$.post("?route=product/filter/delete", 
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

	$.post("?route=product/filter/sortorder", 
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


</script>