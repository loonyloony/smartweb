<?php 
	$page = "";
	if($_GET['page'] == '')
    {
    	$page = 1;
   	}
    else
    {
    	$page = $_GET['page'];
    }
?>
<div class="section">
	
    <div class="section-title">
    	 <div class="left titletext"><?php echo $title_heading_addon?></div>
         <div class="button right">
            <?php if($_GET['dialog'] != "true"){ ?>
                <a onclick="sortOrderItems()" class="button"><?php echo $text_sortorder ?></a>
                <a onclick="linkto('<?php echo $insert ?>')" class="button"><?php echo $button_add ?></a>
                <a id="removelist" class="button"><?php echo $button_delete ?></a>
                <a href="index.php" class="button"><?php echo $button_cancel ?></a>
            <?php }else{ ?>
                <a onclick="selectItem()" class="button">Chọn</a>
            <?php } ?>   
        </div>
        <div class="clearer">&nbsp;</div>
    </div>

    <div class="section-content padding1">        
        <div>
        	<form id="postlist" name="postlist" method="post" action="">
            <table class="data-table" width="100%">
            
            	<thead>
                	<th width="2%"><input type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                    <th width="15%"><?php echo $label_areacode ?></th>
                    <th width="15%"><?php echo $addon_code ?></th>
                    <th width="35%"><?php echo $addon_name ?></th>
                    <th width="20%"><?php echo $label_module_id ?></th>
                    <?php if($_GET['dialog'] != "true"){ ?>
                    <th width="5%"><?php echo $text_sortorder ?></th>
                    <th width="15%"><?php echo $text_tool ?></th>
                    <?php } ?>
                </thead>
                
                <tbody>
                	<?php
                    	$count = 0;
                    if(isset($addon)){
                    	foreach($addon as $item) {
                        	$class = "alt";
                        	if($count % 2 == 0){
                            	$class = "";
                            }
                    ?>
                	<tr class="<?php echo $class; ?>">
                    	<td><input class="inputchk" type="checkbox" name="delete[<?php echo $item['addonid']?>]" value="<?php echo $item['addonid']?>" ></td>
                        <td><?php echo $item['areacode'] ?></td>
                    	<td><?php echo $item['addonid']?></td>
                        <td><?php echo $item['addonname'] ?></td>
                        <td><?php echo $item['moduleid']?></td>
                        <?php if($_GET['dialog'] != "true"){ ?>
                         <td><input type="text" class="text" value="<?php echo $item['sortorder'] ?>" name="sortorder[<?php echo $item['id'] ?>]" /></td> 
                        <td>
                        	<a href="<?php echo $item['link']?>" class="button"><?php echo $button_edit ?></a>                        
                        </td>
                        <?php } ?>
                    </tr>
                    <?php $count++;} } ?>
                </tbody>
            
            </table>
			</form>
        </div>

        <div>
        	<!--
        	<?php echo $nextlink?>
            <?php echo $prevlink?>
            -->
            <div class="phantrang"><?php echo $listpage ?></div>
            <div class="clearer">&nbsp;</div>
        </div>
        
       
        
    </div>

</div>

<script>
function selectItem(){
	var str =""
	
	$('.inputchk').each(function(){
		
		if(this.checked == true)
		{
			str += this.value + ",";
		}
	});
	
	opener.document.frm.selectaddon.value = str;
	window.close();	
}

var DIR_DELETE = '<?php echo $delete?>';
$(document).ready(function() { 
	$('#removelist').attr('title','Delete selected item').click(function(){deletelist();});  
});

function deletelist()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
	$.post(DIR_DELETE, $("#postlist").serialize(), function(data){
		window.location.reload()
	});	
}

function sortOrderItems()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });

	$.post("?route=core/addon/sortorder", 
			$("#postlist").serialize(), 
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
