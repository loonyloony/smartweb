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
    	<?php echo $breadcrumb?>
    </div>
    
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
                        <?php if($permissionAdd){?>
                        	<a href="<?php echo $DIR_ADD.'&page='.$page?>">
                        		<img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>add.png" />
                            </a>
                        <?php }?>
                        <?php if($permissionDelete){?>
                            <a id="removelist">
                                <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>delete.png" />
                            </a>
                        <?php }?>
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
                	<th width="6%"><?php echo $column_position?></th>
                    <th width="24%"><?php echo $column_title?></th>
                    <th width="40%"><?php echo $column_summary?></th>
                    <th width="20%"><?php echo $column_image?></th>
                    <th width="10%"><?php echo $column_control?></th>
                </thead>
                
                <tbody>
                	<?php
                    	$count = 0;
                    	foreach($medias as $media) {
                        	$class = "";
                        	if($count % 2 == 0){
                            	$class = "alt";
                            }
                    ?>
                	<tr class="<?php echo $class; ?>">
                    	<td><?php echo $media['firstcolumn']?>&nbsp;</td>
                        <td><div style="font-size: 1.2em; color: #000; font-weight:bold;"><?php echo $media['title']?></div></td>
                        <td><div style="font-size: 1.1em;"><?php echo html_entity_decode($media['summary'])?></div></td>
                        <td><?php echo $media['imagepreview']?>&nbsp;</td>
                        <td>
                        	<?php if($permissionEdit){?>
                        	<?php echo $media['link']?>&nbsp;
                            <?php }?>
                        </td>
                    </tr>
                    <?php $count++;} ?>
                </tbody>
            
            </table>
			</form>
        </div>
        <div class="right">
        	<?php if($permissionAdd){?>
                <a href="<?php echo $DIR_ADD.'&page='.$page?>">
                    <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>add.png" />
                </a>
            <?php }?>
            <?php if($permissionDelete){?>
                <a id="removelist">
                    <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>delete.png" />
                </a>
            <?php }?>
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
