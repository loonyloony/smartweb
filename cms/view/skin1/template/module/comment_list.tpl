<div class="section">

    <div class="section-title">
    	<div class="titletext left">Messages List</div>
        <div class="button right">
        	<a class="button" onclick="approveItem()"><?php echo $button_approve ?></a>
            <a class="button" onclick="deleteItem()"><?php echo $button_delete ?></a>
            <a class="button" href="index.php"><?php echo $button_cancel?></a>
        </div>
    </div>
        
    <div class="section-content">
        Status: <select id="status" class="property-type" name="folder">
            <?php echo $combo_folder ?>
        </select><br />
        <?php if(count($comments)) { ?> 
        <table class="data-table" cellpadding="0" cellspacing="0">
      		<thead>
            	<tr class="tr-head">
                    <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                    <th>Status</th>
                    <th width="160px">From</th>
                    <th width="160px">To</th>
                    <th width="200px">Subject</th>
                    <th>Related to</th>  
                    <th width="15%"><?php echo $text_tool ?></th>
                                       
                </tr>
            </thead>
            <tbody>
                <?php foreach($comments as $item) {?> 
                 <form action="" method="post" id="listitem" name="listitem">
                <tr class="<?php if($item['status'] == 'pending') echo 'pending'; ?>" rel="<?php echo $item['id'] ?>">
                   <td class="check-column">
                   		<input class="inputchk" type="checkbox" name="delete[<?php echo $item['id']?>]" value="<?php echo $item['id']?>" >
                        <div class="description<?php echo $item['id'] ?>" style="display:none" >
                            <div>
                                <p>
                                    <span><strong><?php echo $text_send_from?>: <?php echo $item['user_email']." (".$item['user_name'].")" ?></strong></span><br/>
                                    <span><strong><?php echo $text_send_to?>: <?php echo $item['receive_email']." (".$item['receive_name'].")" ?></strong></span><br/>
                                    <br/>
                                    <span><strong><?php echo $text_send_subject?>: <?php echo $item['subject'] ?></strong></span><br/>
                                    <span><strong><?php echo $text_send_date?>: <?php echo $this->date->formatMySQLDate($item['commentdate'],'DMY','/') ?></strong></span>
                                </p>
                                <p>
                                    <strong><?php echo $text_send_message?>: </strong><br/>
                                    <?php echo htmlspecialchars_decode($item['description']) ?>
                                </p>
                            </div>
                        </div>
                    </td>
                    <td class="status" ><?php echo $item['status'] ?></td>
                    <td><?php echo $item['user_email']."<br />(".$item['user_name'].")"; ?></td>
                    <td>
                        <?php echo $item['receive_email']."<br />(".$item['receive_name'].")"; ?>
                    </td>
                    <td>(<?php echo $this->date->formatMySQLDate($item['commentdate'],'DMY','/') ?>): <?php echo $item['subject'] ?></td>
                    <td><a href="<?php echo ROOT_HTTP_SERVER ?>index.php?obj=<?php echo $item['objtype'] ?>&id=<?php echo $item['mediaid'] ?>">Topic #<?php echo $item['mediaid'] ?></a></td>
                	<td><a onclick="viewComment('<?php echo $item['id'] ?>')" class="button"><?php echo $button_view ?></a></td>
                </tr>
                    
                <?php } ?>
                </form>
            </tbody>
        </table>
       <div class="pager">
       
            <ul class="elife-navigation" style="float: right">
                <?php echo $pagination_li ?>
                <div class="clearer" ></div>
            </ul>
        </div>
        <?php } else { ?>
            No message found
        <?php } ?>
    </div>
    
    <div id="my_dialog" style="display: none" >
        <div class="content"></div>
    </div>
</div>

<script>
	$("#status").change(function() {
		window.location.href = 'index.php?route=module/comment&status='+$(this).val();
	});
	
	function approveItem() {
		var _check = confirm('Do you really want to do this?');
		if (_check == false) return;
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });
		$.post("?route=module/comment/approveitem", $("#listitem").serialize(), function(data){
			if(data == "true") {
				$.unblockUI();
				window.location.reload();
			} else {
				alert(data);
				$.unblockUI();
			}
		});	
	}
	
	function deleteItem() {
		var _check = confirm('Do you really want to do this?');
		if (_check == false) return;
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });
		$.post("?route=module/comment/deleteitem", $("#listitem").serialize(), function(data){
			if(data == "true") {
				$.unblockUI();
				window.location.reload();
			} else {
				alert(data);
				$.unblockUI();
			}
		});	
	}
	
	function viewComment(id){
		var w_height = $(window).height(); 
		var w_width = $(window).width(); 
		
		if (w_height > 400) w_height = 400;
		if (w_width > 600) w_width = 600;
		$("#my_dialog .content").html($(".data-table .description"+id).html());
		$("#my_dialog").dialog({
				title: 'Message detail',
				width: w_width,
				height: w_height,
				modal: true,
				resizable: false,
				open: function(){
					jQuery('.ui-widget-overlay').bind('click',function(){
						jQuery('#my_dialog').dialog('close');
					})
				},
				position: ['center', 'center']
		});
	}

</script>