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
           
           	<div id="elife-search">
            	
                <?php if(SKINID == 'fanhanghieu') {?>
                <label>Mã khách hàng</label>
                <input type="text" id="filter_customerid" name="filter_customerid" class="text" value="" />
                <span>&nbsp;&nbsp;&nbsp;</span>
                <?php }?>
                
            	<label><?php echo $label_customer_name?></label>
                <input type="text" id="filter_customerName" name="filter_customerName" class="text" value="" />
                <span>&nbsp;&nbsp;&nbsp;</span>
                
                <?php if(SKINID == 'fanhanghieu') {?>
                <label>Nhóm thành viên</label>
                <select id="filter_bonusGroup">
                    <option value="-1">- Tất cả - </option>
                    <?php foreach($bonusGroupList as $bonusGroup){ ?>
                    	<option value="<?php echo $bonusGroup['bonus_group_id']?>">- <?php echo $bonusGroup['name']?> -</option>
                    <?php } ?>
                </select>
                <?php }?>
                
                <br />
                <p>
                <input type="button" class="button" name="btnSearch" value="<?php echo $button_search ?>" onclick="searchForm()"/>
                <input type="button" class="button" name="btnSearch" value="<?php echo $button_viewall ?>" onclick="window.location = '?route=customer/customer'"/>
                </p>
            </div>
            
            <div class="clearer">^&nbsp;</div>
            
            <div class="sitemap treeindex">
            
            	<table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="5%"><?php echo $text_number ?></th>
                        <?php if(SKINID == 'fanhanghieu') {?>
                        <th width="15%"><?php echo $text_customerid ?></th>
                        <?php }?>
                        <th width="20%"><?php echo $text_fullname ?></th>
                        <th width="20%"><?php echo $text_email ?></th>
                        <th width="15%"><?php echo $text_phone ?></th>
                        <?php if(SKINID != 'fanhanghieu') {?>
                        <th width="14%"><?php echo $text_approval ?></th>
                        <?php }?>
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
                        <?php if(SKINID == 'fanhanghieu') {?>
                        <td><?php echo "FHH". $this->string->numberToString($item['customerid'], 4) ?></td>
                        <?php }?>
                        <td><?php echo $item['fullname'] ?></td>
                        <td><?php echo $item['email'] ?></td>
                        <td><?php echo $item['telephone'] ?></td>
                        <?php if(SKINID != 'fanhanghieu') {?>
                        <td>
                        	<input id="link<?php echo $item['customerid'] ?>" type="checkbox" onclick="checkApproved(<?php echo $item['customerid'] ?>)" value="<?php echo $item['status'] ?>" <?php echo ($item['status'] == 1) ? 'checked = "checked"' : '';?> />
                        </td>
                        <?php }?>
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

function searchForm() {
	
	var filter_customerName = $('#filter_customerName').val();
	var filter_bonusGroup = $('#filter_bonusGroup').val();
	var filter_customerid = $('#filter_customerid').val();
	
	var url = '?route=customer/customer';
	
	if(filter_customerid != '') {
		url += '&filter_customerid=' + filter_customerid;
	}
	
	if(filter_customerName != '') {
		url += '&filter_customerName=' + filter_customerName;
	}
	
	if (filter_bonusGroup!= null && filter_bonusGroup != -1) {
		url += '&filter_bonusGroup=' + filter_bonusGroup;
	}
	window.location = url;
}

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
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });
	$.post("?route=customer/customer/checkApproved",{ customerid : customerid, approved : approved},	
		function(data){
			$.unblockUI();
			window.location.reload();			
		}
	);
	
}

$('#filter_customerid').val("<?php echo $_GET['filter_customerid'] ?>");
$('#filter_customerName').val("<?php echo urldecode($_GET['filter_customerName']) ?>");
$('#filter_bonusGroup').val("<?php echo $_GET['filter_bonusGroup'] ?>");

</script>