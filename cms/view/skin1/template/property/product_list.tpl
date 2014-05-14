<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

    <div class="section-title">
    	<div class="titletext left"><?php echo $title_heading_product?></div>
        <div class="button right">
            <?php if($dialog != "true"){ ?>
              <input type="button" class="button" value="<?php echo $button_updateposition?>"  onclick="updatePos()"/>
           	 	<input class="button" type="button" name="add" value="<?php echo $button_add?>" onclick="linkto('<?php echo $insert ?>')"/>
              <input class="button" type="button" name="delete_all" value="<?php echo $button_delete?>" onclick="deleteItem()"/>  
            <?php } else { ?>
            	<input class="button" type="button" name="select" value="Chọn" onclick="selectItem()"/>
            <?php } ?>
         </div>
         <div class="clearer">^&nbsp;</div>
    </div>
        
    <div class="section-content">
        
        <form action="" method="post" id="listitem" name="listitem">
            <div id="elife-search">
            	<p>
                    <label><?php echo $label_product_name?></label>
                    <input type="text" id="productname" name="productname" class="text" value="" />
                    
                    <label>&nbsp;&nbsp;<?php echo $label_from_price?></label>
                    <select id="giatu">
                        <option value=""><?php echo $text_select_price?></option>
                        <?php foreach($sotien as $val){ ?>
                        <option value="<?php echo $val?>"><?php echo $this->string->numberFormate($val)?> <?php echo $this->document->setup['Currency']?></option>
                        <?php } ?>
                    </select>
                    
                    <label>&nbsp;&nbsp;<?php echo $label_to_price?></label>
                    <select id="giaden">
                        <option value=""><?php echo $text_select_price?></option>
                        <?php foreach($sotien as $val){ ?>
                        <option value="<?php echo $val?>"><?php echo $this->string->numberFormate($val)?> <?php echo $this->document->setup['Currency']?></option>
                        <?php } ?>
                    </select>
                    
                    <?php if(SKINID == 'singapore') {?>
                    <label>&nbsp;&nbsp;<?php echo $text_status?></label>
                    <select id="status" name="status">
                        <option value=""><?php echo $text_search_all?></option>
                        <?php echo $arrStatus; ?>
                    </select>
                </p>
                
                <p>
                    <label>&nbsp;&nbsp;<?php echo $text_feature?></label>
                    <select id="feature" name="feature">
                        <option value=""><?php echo $text_search_all?></option>
                        <?php echo $arrFeature; ?>
                    </select>
                    
                    <?php }?>
                    
                    <?php if(count($tags) > 0) { ?>
                    <label>Tags</label>
                    <select id="tag">
                        <option value=""><?php echo $text_select_tag?></option>
                        <?php foreach($tags as $val){ ?>
                        <option value="<?php echo $val['tag'] ?>"><?php echo $val['tag'] ?></option>
                        <?php } ?>
                    </select>
                    <?php } ?>
                    
                    <label>&nbsp;&nbsp;<?php echo $label_postby?></label>
                   	<select id="postby" name="postby">
                    	<option value="">all</option>
                    	<option value="guest">guest</option>
                        <option value="customer">customer</option>
                        <option value="admin">admin</option>
                    </select>
               	</p>
                
                <p>
                	<input type="button" class="button" name="btnSearch" value="<?php echo $button_search?>" onclick="searchForm()"/>
                	<input type="button" class="button" name="btnSearch" value="<?php echo $button_viewall?>" onclick="window.location = '?route=module/propertyproduct&sitemapid=<?php echo $_GET['sitemapid']?>'"/>
                </p>
                
            </div>
            
            
            <div class="sitemap treeindex">
            
            	<table id="propertyproduct" class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                   
                        <tr class="tr-head">
                        	<th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        	<th width="5%"><?php echo $text_number ?></th>
                        	<!--<th width="20%"><?php echo $label_product_model ?></th>-->
                        	<th width="30%"><?php echo $label_product_name ?></th>
                        	<th width="15%"><?php echo $text_image ?></th>
                        	<th width="10%"><?php echo $text_price ?></th>
                            <th width="20%"><?php echo $text_guest_info ?></th>
                       		<?php if($dialog != "true"){?>
                        	<th width="15%"><?php echo $text_tool ?></th>
                        	<?php } ?>
                    		</tr>
        
        <?php
        if(count($datas) > 0)
        {
        	$stt = 1;
            $arrStatus = array($text_status_waiting, $text_status_approved, $text_status_hidden, $text_status_deleted);
            foreach($datas as $item)
            {
        ?>
                    <tr class="productstatus-<?php echo $arrStatus[$item['status']]?>">
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['productid']?>]" value="<?php echo $item['productid']?>" ></td>
                        
                        <!--<td><input type="text" class="text number" name="sortorder[<?php echo $item['productid']?>]" size="1" value="<?php echo $item['sortorder']?>"/></td>-->
                        <td><?php echo $stt;?></td>
                        <!--<td><?php echo $item['model']?></td>-->
                        <td><?php echo $item['name'] ?></td>
                        <?php if($item['image'] != ""){ ?>
                        <td><div style="text-align:center;"><img id="imagepreview" imagetype="images/resizepng-160x160" src="images/resizepng-160x160/<?php echo $item['image']?>" /></div></td>
                        <?php }else { ?>
                        <td></td>
                        <?php } ?>
                        <td class="number"><?php echo $this->string->numberFormate($item['price'])?></td>
                        <td ><?php echo $item['guestinfo'] ?></td>
                        <?php if($dialog != "true"){ ?>                       
                        <td>
                        	<input class="button" type="button" value="<?php echo $button_edit ?>" onclick="linkto('<?php echo $item[link_edit] ?>')"  />
                            <p style="margin-top:5px;">
                            <select id="cboStatus" alt="<?php echo $item['productid']?>" class="cboStatus">
                            	<?php echo $item['cboStatus']?>
                            </select>
                            </p>
                       	</td>
                        <?php } ?>
                    </tr>
        <?php
        	$stt++;
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

$(document).ready(function() {
	$(".cboStatus").change(function(){
		var productid = $(this).attr('alt');
		var status = $(this).val();
		
		$.blockUI({ message: "<h1><?php echo $text_processing ?></h1>" }); 
		$.post("?route=property/product/updateStatus", {productid: productid, status: status}, function(data){
			if(data == "true") {
				$.unblockUI();
				window.location.reload();
			} else {
				alert('<?php echo $announ_update_unsuccess?>');
				$.unblockUI();
			}
		});
		
	});
});

function deleteItem()
{
	var answer = confirm("<?php echo $announ_del?>");
	if (answer)
	{
		$.blockUI({ message: "<h1><?php echo $text_processing ?></h1>" }); 
		$.post("?route=property/product/delete", 
			$("#listitem").serialize(), 
			function(data)
			{
				if(data == "true")
				{
					alert('<?php echo $announ_update_success?>');
					$.unblockUI();
					window.location.reload();
				} else {
					$.unblockUI();
				}
			}
		);
	}
}

function selectItem()
{
	var str =""
	
	$('.inputchk').each(function(){
		
		if(this.checked == true)
		{
			str += this.value + ",";
		}
	});
	
	//alert(opener.document.frm.selectproduct.value = str);
	opener.document.frm.selectproduct.value = str;
	window.close();
}
function updatePos()
{
	$.blockUI({ message: "<h1><?php echo $text_processing ?></h1>" }); 
	$.post("?route=property/product/updatePos",$('#listitem').serialize(),function(data){
		if(data=="true")
		{
			alert('<?php echo $announ_update_success?>');	
			window.location.reload()
		}
	});	
}
function searchForm()
{
	var url = "?route=module/propertyproduct&sitemapid=<?php echo $_GET['sitemapid']?>";
	if($('#productname').val()!="")
	{
		url += "&productname="+$('#productname').val();
	}
	if($('#giatu').val()!="")
	{
		url += "&giatu="+$('#giatu').val();
	}
	if($('#giaden').val()!="")
	{
		url += "&giaden="+$('#giaden').val();
	}
	if($('#status').val()!="")
	{
		url += "&status="+$('#status').val();
	}
	if($('#tag').val()!="")
	{
		url += "&tag="+$('#tag').val();
	}
	if($('#feature').val()!="")
	{
		url += "&feature="+$('#feature').val();
	}
	if($('#postby').val()!="")
	{
		url += "&postby="+$('#postby').val();
	}
	window.location = url;
}
$('#productname').val("<?php echo urldecode($_GET['productname'])?>");
$('#manufacturer').val("<?php echo $_GET['manufacturer']?>");
$('#sitemapid').val("<?php echo $_GET['sitemapid']?>");
$('#giatu').val("<?php echo $_GET['giatu']?>");
$('#giaden').val("<?php echo $_GET['giaden']?>");
$('#status').val("<?php echo $_GET['status']?>");
$('#tag').val("<?php echo $_GET['tag']?>");
$('#feature').val("<?php echo $_GET['feature']?>");
$('#postby').val("<?php echo $_GET['postby']?>");

</script>