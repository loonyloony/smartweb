<div class="section">
    <div class="section-title">
    	<div class="titletext left"><?php echo $title ?></div>
        <div class="button right">
            <input class="button" value="<?php echo $button_add ?>" type="button" onclick="linkto('<?php echo $insert?>')">
            <input class="button" value="<?php echo $button_delete ?>" name="btnDel" type="button" onclick="data_deleteList('index.php?route=media/datalist/delete')">
            <input class="button" value="<?php echo $button_update ?>" name="btnUpdate" type="button" onclick="data_updateList('index.php?route=media/datalist/updatePosition')">
            <input type="hidden" name="type" value="" />
        </div>
    	<div class="clearer"></div>	
    </div>
	<div class="section-content"> 
    	<?php echo $dataheader?>
        <div class="clearer"></div>
        
        <!--MIDDLE HERE-->
        <?php include(DIR_TEMPLATE.$layoutpath)?>
        
		<div class="clearer"></div>
        <div class="ben-table-footer">
            <div class="left"> Số dòng mỗi trang: <?php echo $pager_rpp ?> - <?php echo $pager_jump ?> </div>
            <div class="right tbs-pager"> 
            	<?php echo $pager_fullnavs ?>
            	<div class="clearer"></div>
        	</div>
            <div class="clearer"></div>
        </div>
     </div>
</div>


<script>
$('.btndelete-item').click(function(){
	if(confirm("Bạn muốn xóa bài viết này hay không ?")){
		var mediaid=$(this).attr('id');
		var action="item";
		var url=HTTP_SERVER+"?route=media/datalist/delete";
		$.post(url,{action:action,mediaid:mediaid},function(data){
				if(data=="true"){
					window.location.reload();
				}
			
			}
		);
	}
});

function postform(){
	var rpp=$('#rppoption').val();
	$('#rpp').val(rpp);	
	$("#dataheader").submit();
}
</script>
