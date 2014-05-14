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
    	<div class="titletext left"><?php echo $title_heading_layout?></div>
        <div class="button right">
            <input class="button" value="<?php echo $button_add ?>" type="button" onclick="linkto('<?php echo $insert ?>')">
            <input class="button" value="<?php echo $button_delete ?>" name="btnDel" type="button" id='removelist' />
            <input class="button" value="<?php echo $button_cancel ?>" name="btnUpdate" type="button" onclick="linkto('index.php')">
        </div>
    	<div class="clearer"></div>	
    </div>

    <div class="section-content padding1">
        
        <div>
        	<form id="postlist" name="postlist" method="post" action="">
            <table class="data-table" width="100%">
            
            	<thead>
                	<th width="6%"><input type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                    <th width="24%"><?php echo $layout_code ?></th>
                    <th width="40%"><?php echo $layout_name ?></th>
                    <th width="20%"><?php echo $layout_type ?></th>
                    <th width="10%"><?php echo $text_tool ?></th>
                </thead>
                
                <tbody>
                	<?php
                    if(isset($layout)){
                    	foreach($layout as $item) {
                    ?>
                	<tr>
                    	<td><input class="inputchk" type="checkbox" name="delete[<?php echo $item['layoutid']?>]" value="<?php echo $item['layoutid']?>" ></td>
                    	<td><?php echo $item['layoutid']?></td>
                        <td><?php echo $item['layoutname'] ?></td>
                        <td><?php echo $item['layouttype']?></td>  
                        <td>
                        	<a href="<?php echo $item['link']?>" class="button"><?php echo $button_edit ?></a>                        
                        </td>
                    </tr>
                    <?php } } ?>
                </tbody>
            
            </table>
			</form>
        </div>
        <div class="right">
            <input class="button" value="<?php echo $button_add ?>" type="button" onclick="linkto('<?php echo $insert ?>')">
            <input class="button" value="<?php echo $button_delete ?>" name="btnDel" type="button" id='removelist' />
            <input class="button" value="<?php echo $button_cancel ?>" name="btnUpdate" type="button" onclick="linkto('index.php')">
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
var DIR_DELETE = '<?php echo $delete ?>';
$(document).ready(function() { 
	$('#removelist').attr('title','Delete selected item').click(function(){deletelist();});  
});

function deletelist()
{
	if(confirm("<?php echo $warning_delete_confirm ?>")){
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
		$.post(DIR_DELETE, $("#postlist").serialize(), function(data){
			window.location.reload()
		});
	}
}

</script>
