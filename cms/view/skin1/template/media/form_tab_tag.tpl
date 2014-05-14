<div id="tab_tag">  
        <div id="container_tag">
            <ul>
                <!-- tab language -->
                <?php foreach($arr_language as $key=>$item){ ?>
                    <li><a href="#tab-edit<?php echo $key ?>"><span><?php echo $item ?></span></a></li>
                <?php } ?>
            </ul>
        
            <?php foreach($arr_language as $key=>$item){ ?>
            <div id="tab-edit<?php echo $key?>">
                <table class="data-table ">
                    <tr>
                        <td class="ben-title-content ben-text-right"><?php echo $lbl_tag ?></td>
                        <td>
                            <input class="text" type="text" size="120" name="groupkeys<?php echo $key ?>" id="groupkeys<?php echo $key ?>" value="<?php echo $items[$key]['groupkeys'] ?>" /><br />
                        	Mỗi tag cách nhau bằng một dấu phẩy. Ví dụ: blog, elife partners
                             <input class="text" type="hidden" name="old_groupkeys<?php echo $key ?>" id="old_groupkeys<?php echo $key ?>" value="<?php echo $items[$key]['groupkeys'] ?>" />
                             
                        </td>
                    </tr>								
                </table>
					<?php 
						$arr_tag = explode(",",$items[$key]['groupkeys']);
						if(SKINID == 'labwell') 
					{ ?>
					<input class="tagitem" type="checkbox" name="vehicle" value="Chủ đề nhiều người quan tâm" <?php for($i=0;$i<count($arr_tag);$i++){if($arr_tag[$i]==$tag['key']) echo "checked"; } ?> /> Chủ đề nhiều người quan tâm
					<?php }else{ ?>
					<?php 
						$arr_tag = explode(",",$items[$key]['groupkeys']);								
						$t=0;
						foreach($tags as $tag) {
					?>				
						<div id="cb-tag">
						<input class="tagitem" type="checkbox" name="vehicle" value="<?php echo $tag['key'] ?>" <?php for($i=0;$i<count($arr_tag);$i++){if($arr_tag[$i]==$tag['key']) echo "checked"; } ?> /> <?php echo $tag['key'] ?>						
						</div>
					<?php $t++; } }?>				
            </div>
            <?php } ?>
			
        </div>
        <input class="text" type="hidden" name="sitemapid" id="sitemapid" value="<?php echo $_GET['sitemapid'] ?>" />
</div>
<script>
	$('#container_tag').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
</script>

<script type="text/javascript">

$(".tagitem").click(function(){
	<?php foreach($arr_language as $key=>$item){ ?>
	var value_textbox;		
	if ($(this).is(':checked')) {		
		if($("#groupkeys<?php echo $key ?>").val() == "")
			value_textbox = $(this).val() + ',';
		else
			value_textbox = $("#groupkeys<?php echo $key ?>").val() + $(this).val() + ',';
		$("#groupkeys<?php echo $key ?>").val(value_textbox);
	}
	else{		
		value_textbox = $("#groupkeys<?php echo $key ?>").val();
		var arr = value_textbox.split(',');		
		for ( var i = 0; i < arr.length; i++ ) {			
			if($(this).val() == arr[i])
			{				
				arr = jQuery.grep(arr,function(value){return value!=arr[i]});				
			}			
		}
		$("#groupkeys<?php echo $key ?>").val(arr);
	}
	<?php } ?>
});
</script>