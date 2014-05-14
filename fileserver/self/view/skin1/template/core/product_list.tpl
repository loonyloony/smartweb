<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

    <div class="section-title">
    	<div class="titletext left"> QUẢN LÝ SẢN PHẨM </div>
        <div class="button right">
            <?php if($dialog != "true"){ ?>
            	
                <input type="button" class="button" value="<?php echo $text_sortorder ?>"  onclick="sortorder()"/>
           	 	<input class="button" type="button" name="add" value="<?php echo $button_add ?>" onclick="linkto('<?php echo $insert ?>')"/>
                <input class="button" type="button" name="delete_all" value="<?php echo $button_delete ?>" onclick="deleteItem()"/>  
            <?php } else { ?>
            	<input class="button" type="button" name="select" value="Chọn" onclick="selectItem()"/>
            <?php } ?>
         </div>
         <div class="clearer">^&nbsp;</div>
    </div>
        
    <div class="section-content">
        
        <form action="" method="post" id="listitem" name="listitem">
            <div id="elife-search">
            	<label>Tên sản phẩm</label>
                <input type="text" id="productname" name="productname" class="text" value="" />
                <!--<label>Hảng sản xuất</label>
                <select id="manufacturer">
                    <option value="">- Tất cả sản phẩm -</option>
                    <?php echo $cbmanufacturer?>
                </select>-->
                <label>Giá từ</label>
                <select id="giatu">
                    <option value="">- Nhập số tiền - </option>
                    <?php foreach($sotien as $val){ ?>
                    <option value="<?php echo $val?>"><?php echo $this->string->numberFormate($val)?> <?php echo $this->document->setup['Currency']?></option>
                    <?php } ?>
                </select>
                <label>Đến</label>
                <select id="giaden">
                    <option value="">- Nhập số tiền - </option>
                    <?php foreach($sotien as $val){ ?>
                    <option value="<?php echo $val?>"><?php echo $this->string->numberFormate($val)?> <?php echo $this->document->setup['Currency']?></option>
                    <?php } ?>
                </select>
               
                <br />
                <input type="button" class="button" name="btnSearch" value="Tìm" onclick="searchForm()"/>
                <input type="button" class="button" name="btnSearch" value="Xem tất cả" onclick="window.location = '?route=module/product&sitemapid=<?php echo $_GET['sitemapid']?>'"/>
            </div>
            
            
            <div class="sitemap treeindex">
            
            	<table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="9%"><?php echo $text_number ?></th>
                        <th width="20%"><?php echo $label_product_model ?></th>
                        <th width="30%"><?php echo $label_product_name ?></th>
                        <th width="15%"><?php echo $text_image ?></th>
                        <th width="15%"><?php echo $text_price ?></th>
                       	<?php if($dialog != "true"){?>
                        <th width="15%"><?php echo $text_tool ?></th>
                        <?php } ?>
                    </tr>
        
        <?php
        if(count($datas) > 0)
        {
        	$stt = 1;
            foreach($datas as $item)
            {
        ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['productid']?>]" value="<?php echo $item['productid']?>" ></td>
                        
                        <td><input type="text" class="text number" name="sortorder[<?php echo $item['productid']?>]" size="1" value="<?php echo $item['sortorder']?>"/></td>
                        <td><?php echo $item['model']?></td>
                        <td><?php echo $item['name'] ?></td>
                        <?php if($item['image'] != ""){ ?>
                        <td><div style="text-align:center;"><img id="imagepreview" imagetype="images/resizepng-160x160" src="images/resizepng-160x160/<?php echo $item['image']?>" /></div></td>
                        <?php }else { ?>
                        <td></td>
                        <?php } ?>
                        <td class="number"><?php echo $this->string->numberFormate($item['price'])?></td>
                        <?php if($dialog != "true"){ ?>                       
                        <td><input class="button" type="button" value="<?php echo $button_edit ?>" onclick="linkto('<?php echo $item[link_edit] ?>')"  /></td>
                        <?php } ?>
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
	var answer = confirm("Bạn có muốn xóa không?")
	if (answer)
	{
		$.post("?route=product/product/delete", 
				$("#listitem").serialize(), 
				function(data)
				{
					if(data == "true")
					{
						alert('Xóa thành công');
						window.location.reload();
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
function sortorder()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
	$.post("?route=core/product/sortorder",$('#listitem').serialize(),function(data){
		if(data=="true")
		{
			alert('<?php echo $announ_update_success ?>');	
			window.location.reload()
		}
	});	
}
function searchForm()
{
	var url = "?route=module/product&sitemapid=<?php echo $_GET['sitemapid']?>";
	if($('#productname').val()!="")
	{
		url += "&productname="+$('#productname').val();
	}
	if($('#manufacturer').val()!="")
	{
		url += "&manufacturer="+$('#manufacturer').val();
	}
	
	if($('#giatu').val()!="")
	{
		url += "&giatu="+$('#giatu').val();
	}
	if($('#giaden').val()!="")
	{
		url += "&giaden="+$('#giaden').val();
	}
	window.location = url;
}
$('#productname').val("<?php echo urldecode($_GET['productname'])?>");
$('#manufacturer').val("<?php echo $_GET['manufacturer']?>");
$('#sitemapid').val("<?php echo $_GET['sitemapid']?>");
$('#giatu').val("<?php echo $_GET['giatu']?>");
$('#giaden').val("<?php echo $_GET['giaden']?>");
</script>