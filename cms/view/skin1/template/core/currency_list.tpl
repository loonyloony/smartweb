<div class="section">
	
    <div class="section-title">
    	 <div class="left titletext"><?php echo $heading_title ?></div>
         <div class="button right">
            <a onclick="linkto('<?php echo $insert ?>')" class="button"><?php echo $button_add ?></a>
            <a id="removelist" class="button"><?php echo $button_delete ?></a>
            <a href="index.php" class="button"><?php echo $button_cancel ?></a>  
        </div>
        <div class="clearer">&nbsp;</div>
    </div>

    <div class="section-content padding1">
    	<div class="right">
        	<i><span style="color:red;"><?php echo $text_currency_value ?>: USD</span></i>
        </div>
        <div class="clearer">&nbsp;</div>
        <div>
        	<form id="postlist" name="postlist" method="post" action="">
            <table class="data-table" width="100%">
            
            	<thead>
                	<th width="2%"><input type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                    <th width="10%"><?php echo $currency_code ?></th>
                    <th width="25%"><?php echo $text_title ?></th>
                    <th width="20%"><?php echo $label_symbol_left ?></th>
                    <th width="15%"><?php echo $text_currency_value ?></th>
                    <th width="20%"><?php echo $label_symbol_right ?></th>
                    <th width="15%"><?php echo $text_tool ?></th>
                </thead>
                
                <tbody>
                	<?php
                    if(isset($currency)){
                    	foreach($currency as $item) {
                    ?>
                	<tr>
                    	<td><input class="inputchk" type="checkbox" name="delete[<?php echo $item['currencyid']?>]" value="<?php echo $item['currencyid']?>" ></td>
                    	<td><?php echo $item['code']?></td>
                        <td><?php echo $item['title'] ?></td>
                        <td><?php echo $item['symbol_left'] ?></td>
                        <td><?php echo $this->string->numberFormate($item['value_currency']) ?></td>
                        <td><?php echo $item['symbol_right'] ?></td>
                        <td><a href="<?php echo $item['link']?>" class="button"><?php echo $button_edit ?></a></td>
                    </tr>
                    <?php } } ?>
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

var DIR_DELETE = '<?php echo $delete ?>';
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