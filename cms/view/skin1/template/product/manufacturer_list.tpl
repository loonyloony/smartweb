<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

    <div class="section-title"><?php echo $title_heading_manufacturer?></div>
        
    <div class="section-content">
        
        <form action="" method="post" id="listitem" name="listitem">
            <div id="elife-search" class="left">
            	<label>Tên nhà sản xuất </label>
                <input type="text" id="filter_name" name="filter_name" class="text" value="" />
                <span>&nbsp;&nbsp;&nbsp;</span>
                
                <p>
                <input type="button" class="button" name="btnSearch" value="Tìm" onclick="searchForm()"/>
                <input type="button" class="button" name="btnSearch" value="Xem tất cả" onclick="window.location='?route=product/manufacturer&sitemapid=<?php echo $_GET['sitemapid']?>'" />
                </p>
                
            </div>
            
            <div class="right">
            	<a onclick="sortOrderItem()" class="button"><?php echo $text_sortorder ?></a>
            	<a onclick="linkto('<?php echo $insert ?>')" class="button"><?php echo $button_add ?></a>
                <a onclick="deleteItem()" class="button"><?php echo $button_delete ?></a> 
            </div>
            <div class="clearer">^&nbsp;</div>
            
            <div class="sitemap treeindex">
            
            	<table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th><?php echo $text_number ?></th>
                        <th><?php echo $text_manufacturer_name ?></th>
                        
                        <?php if(SKINID != "fanhanghieu") {?>
                        <th><?php echo $text_linkdirect ?></th>
                        <?php }?>
                        
                        <th><?php echo $text_image ?></th>
                        <th><?php echo $text_sortorder ?></th>   
                        <th><?php echo $text_tool ?></th>                                  
                    </tr>
                
                <?php
                if(count($datas) > 0)
                {
                    $stt = 1;
                    foreach($datas as $item)
                    {
                ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['manufacturerid']?>]" value="<?php echo $item['manufacturerid']?>" ></td>
                        
                        <td><?php echo $stt++ ?></td>
                        <td><?php echo $item['name']?></td>
                        
                        <?php if(SKINID != "fanhanghieu") {?>
                        <td>	
                        	<input id="link<?php echo $item['manufacturerid'] ?>" type="checkbox" onclick="checkLinkdirect(<?php echo $item['manufacturerid'] ?>)" value="<?php echo $item['link_direct'] ?>" <?php echo ($item['link_direct'] == 1) ? 'checked = "checked"' : '';?> />
                        </td>
                        <?php }?>
                        
                        <td><img id="imagepreview" imagetype="images/resizepng-200x160" src="images/resizepng-200x160/<?php echo $item['image']?>" /> </td>
                        <td><input type="text" class="text" value="<?php echo $item['sortorder'] ?>" name="sortorder[<?php echo $item['manufacturerid'] ?>]" /></td>
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

$('#filter_name').val("<?php echo urldecode($_GET['filter_name']) ?>");

function searchForm() {
	var filter_name = $('#filter_name').val();
	
	url = "?route=product/manufacturer&sitemapid=<?php echo $_GET['sitemapid']?>";
	if(filter_name != '') {
		url += "&filter_name="+filter_name;
	}
	
	window.location = url;
}

function deleteItem()
{
	var answer = confirm("<?php echo $announ_del ?>")
	if (answer)
	{
		$.post("?route=product/manufacturer/delete", 
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

	$.post("?route=product/manufacturer/sortorder", 
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

function checkLinkdirect(manufacturerid){
	var linkdirect = '0';
	if($("#link"+manufacturerid).is(':checked') == true){
		linkdirect = '1';	
	}
	
	$.post("?route=product/manufacturer/linkdirect",{ manufacturerid : manufacturerid, linkdirect : linkdirect},	
		function(data){
		}
	);
	
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