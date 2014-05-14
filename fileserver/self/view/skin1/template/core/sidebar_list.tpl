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
    	<div class="texttitle left"><?php echo $title_heading_sidebar?></div>
    
    	<div class="button right">
        	<input type="button" value="<?php echo $button_add ?>" class="button" onclick="linkto('<?php echo $insert ?>')"/>
			<input type="button" value="<?php echo $button_delete ?>" class="button" id="removelist" />
			<input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('index.php')"/>
        </div>
    </div>

    <div class="section-content padding1">        
        <div class="clearer">&nbsp;</div>
        
        <div>
        	<form id="postlist" name="postlist" method="post" action="">
            <table class="data-table" width="100%">
            
            	<thead>
                	<th width="5%"><input type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                    <th width="20%"><?php echo $label_sidebar_name ?></th>
                    <th width="60%"><?php echo $addon_name ?></th>
                    <th width="15%"><?php echo $text_tool ?></th>
                </thead>
                
                <tbody>
                	<?php
                    	$count = 0;
                    if(isset($sidebar)){
                    	foreach($sidebar as $item) {
                        	$class = "alt";
                        	if($count % 2 == 0){
                            	$class = "";
                            }
                    ?>
                	<tr class="<?php echo $class; ?>">
                    	<td><input class="inputchk" type="checkbox" name="delete[<?php echo $item['sidebarid']?>]" value="<?php echo $item['sidebarid']?>" ></td>
                        <td><?php echo $item['sidebar_name'] ?></td>
                        <td>
                        <table>
                            <?php
                            	$stt = 1;
                                if(isset($item['addon'])){ 
                                    foreach($item['addon'] as $value){
                            ?>
                            <tr>
                            	<td width="10px"><?php echo $stt++ ?></td>
                                <td><?php echo $value['addonname'] ?></td> 
                            </tr>
                            <?php
                                     }
                                 }
                            ?>
                        </table>
                        </td>
                        <td>
                        	<a class="button" href="<?php echo $item['link']?>"><?php echo $button_edit ?></a>                        
                        </td>
                    </tr>
                    <?php 
                    	$count++;
                        } 
                    }
                    ?>
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
