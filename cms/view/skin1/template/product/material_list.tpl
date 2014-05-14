<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

    <div class="section-title">Quản lý chất liệu</div>
        
    <div class="section-content">
        
        <form action="" method="post" id="listitem" name="listitem">
            <div id="elife-search">
            </div>
            <div class="button right">
           	 	<input class="button" type="button" name="add" value="Thêm" onclick="linkto('<?php echo $insert ?>')"/>
                <input class="button" type="button" name="delete_all" value="Xóa" onclick="deleteItem()"/>  
            </div>
            <div class="clearer">^&nbsp;</div>
            
            <div class="sitemap treeindex">
            
            	<table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th>STT</th>
                        <th>Tên chất liệu</th>
                        <th>Mô tả</th>
                        <th>Hình ảnh</th>
                        <th>Công cụ</th>                               
                    </tr>
        
        <?php
        if(count($datas) > 0)
        {
        	$stt = 1;
            foreach($datas as $item)
            {
        ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['id']?>]" value="<?php echo $item['id']?>" ></td>
                        
                        <td><?php echo $stt++ ?></td>
                        <td><?php echo $item['materialname']?></td>
                        <td><?php echo $this->string->getTextLength(html_entity_decode($item['description']), 0, 30)?></td>
                        <?php if($item['imagepath'] != "") { ?> 
                        <td><?php echo $item['imagepreview']?></td>
                        <?php } else { ?>
                        <td></td>
                        <?php } ?>
                        <td><input class="button" type="button" value="Sửa" onclick="linkto('<?php echo $item[link_edit] ?>')"  /></td>
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
		$.post("?route=core/material/delete", 
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

/*function selectSiteMap(mediaid,moduleid)
{
	$('#popup-content').load('?route=core/media/mapmoduleform&mediaid='+mediaid+'&moduleid='+moduleid,
			function()
			{
				
				showPopup('#popup', 700, 500, true );
				//numberReady();
			});		
}

function searchForm()
{
	var url =  "?route=core/media";
	
	
	if($("#keyword").val() != "")
		url += "&keyword="+ $("#keyword").val();
	if($("#type").val() != "")
		url += "&type=" + $("#type").val();
	if($("#sitemapid").val() != "")
		url += "&sitemapid=" + $("#sitemapid").val();
	if($("#userid").val() != "")
		url += "&userid=" + $("#userid").val();
	if($("#tungay").val() != "")
		url += "&tungay=" + $("#tungay").val();
	if($("#denngay").val() != "")
		url += "&denngay=" + $("#denngay").val();
	if("<?php echo $_GET['opendialog']?>" == "true")
	{
		url += "&opendialog=true";
	}
	
	window.location = url;
}




$('#type').change(function(e) {
    $.getJSON("?route=core/media/getListSiteMap&module="+this.value, 
	function(data) 
	{
		$('#sitemapid').val('<option value=""></option>');
		for(i in data.sitemaps)
		{
			
			var str = '<option value="'+data.sitemaps[i].sitemapid+'">'+data.sitemaps[i].sitemapname+'</option>';
			
			$('#sitemapid').append(str);
		}
		$("#sitemapid").val("<?php echo $_GET['sitemapid']?>");
	});
});
$("#keyword").val("<?php echo $_GET['keyword']?>");
$("#type").val("<?php echo $_GET['type']?>");
$("#userid").val("<?php echo $_GET['userid']?>");
$("#tungay").val("<?php echo $_GET['tungay']?>");
$("#denngay").val("<?php echo $_GET['denngay']?>");
$(document).ready(function(e) {
    $('#type').change();
	
});*/
</script>