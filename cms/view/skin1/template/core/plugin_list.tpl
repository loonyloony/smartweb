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
	
    <div class="section-title"><?php echo $title_heading_plugin?></div>

    <div class="section-content padding1">
    	<table>
        	<tr>
            	<td>
                	<div class="left">
                        <h3><?php echo $heading_title?></h3>
                    </div>
                </td>
                <td>
                	<div class="right">
                        <a onclick="linkto('<?php echo $insert ?>')">
                            <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>add.png" />
                        </a>
                        <a id="removelist">
                            <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>delete.png" />
                        </a>
                        <a href="index.php">
                            <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>cancel.png" />
                        </a>
                    </div>
                </td>
            </tr>
        </table>
    	
        
    	
        
        <div class="clearer">&nbsp;</div>
        
        <div>
        	<form id="postlist" name="postlist" method="post" action="">
            <table class="data-table" width="100%">
            
            	<thead>
                	<th width="6%"></th>
                    <th width="24%">Mã plugin</th>
                    <th width="40%">Tên plugin</th>
                    <th width="20%">Loại module</th>
                    <th width="10%">Công cụ</th>
                </thead>
                
                <tbody>
                	<?php
                    	$count = 0;
                    	foreach($plugin as $item) {
                        	$class = "alt";
                        	if($count % 2 == 0){
                            	$class = "";
                            }
                    ?>
                	<tr class="<?php echo $class; ?>">
                    	<td></td>
                    	<td><?php echo $item['code']?></td>
                        <td><div style="font-size: 1.2em; color: #000; font-weight:bold;"><?php echo $item['plugin_name']?></div></td>
                        <td><?php echo $item['moduleid']?></td>  
                        <td>
                        	<a href="<?php echo $item['link']?>">
                            	<img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>edit.png" />
                            </a>                        
                        </td>
                    </tr>
                    <?php $count++;} ?>
                </tbody>
            
            </table>
			</form>
        </div>
        <div class="right">
            <a onclick="linkto('<?php echo $insert ?>')">
                <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>add.png" />
            </a>
            <a id="removelist">
                <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>delete.png" />
            </a>
            <a href="index.php">
                <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>cancel.png" />
            </a>
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
var DIR_DELETE = '<?php echo $DIR_DELETE?>';
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

</script>
