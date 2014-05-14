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
    	 <div class="left titletext">Email</div>
         <div class="button right">
            <!--<a onclick="linkto('<?php echo $insert ?>')" class="button"><?php echo $button_add ?></a>-->
            <a id="exportlist" href="<?php echo $exportLink?>" class="button"><?php echo $button_export ?></a>
            <a id="removelist" class="button"><?php echo $button_delete ?></a>
            <a href="index.php" class="button"><?php echo $button_cancel ?></a> 
        </div>
        <div class="clearer">&nbsp;</div>
    </div>

    <div class="section-content padding1">        
        <div>
        	<form id="postlist" name="postlist" method="post" action="">
            <table class="data-table" width="100%">
            
            	<thead>
                	<th width="2%"><input type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                    <th width="15%"><?php echo $text_fullname ?></th>
                    <th width="20%">email</th>
                    <!--<th width="10%"><?php echo $text_tool ?></th>-->
                </thead>
                
                <tbody>
                	<?php
                    	$count = 0;
                    if(isset($receivedemail)){
                    	foreach($receivedemail as $item) {
                        	$class = "alt";
                        	if($count % 2 == 0){
                            	$class = "";
                            }
                    ?>
                	<tr class="<?php echo $class; ?>">
                    	<td><input class="inputchk" type="checkbox" name="delete[<?php echo $item['id']?>]" value="<?php echo $item['id']?>" ></td>
                    	<td><?php echo $item['fullname'] ?></td>
                        <td>
                            <?php echo $item['email'] ?>
                        </td>
                        <!--<td>
                        	<a href="<?php echo $item['linkedit']?>" class="button"><?php echo $button_edit ?></a>                        
                        </td>-->
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

var DIR_DELETE = '<?php echo $DIR_DELETE?>';
$(document).ready(function() { 
	$('#removelist').attr('title','Delete selected item').click(function(){deletelist();});  
});

function deletelist()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
	$.post(DIR_DELETE, $("#postlist").serialize(), function(data){
		alert('<?php echo $announ_del_success ?>')
		window.location.reload()
	});	
}

function sortOrderItems()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });

	$.post("?route=splash/banner/sortorder", 
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
