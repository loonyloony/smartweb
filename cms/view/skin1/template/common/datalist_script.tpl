<script language="javascript">
	$('.btndelete-item').click(function(){
			if(confirm("Bạn muốn xóa bài viết này hay không ?")){
				var mediaid=$(this).attr('id');
				var action="item";
				var url=HTTP_SERVER+"?route=module/<?php echo $module ?>/delete";
				$.post(url,{action:action,mediaid:mediaid},function(data){
						if(data=="true"){
							window.location.reload();
						}
					
					}
				);
			}
		});
		//xóa nhiều bài viết
		function deleteList(){
			if(confirm("Bạn muốn xóa những bài viết này hay không ?")){
				
				var url=HTTP_SERVER+"?route=module/<?php echo $module ?>/delete";
				$.post(url,$('#datalist').serialize(),function(data){
						if(data=="true"){
							window.location.reload();
						}
					
					}
				);
			}
		}
		// cập nhật vị trí
		function updateList(){
				showloading();
				var url=HTTP_SERVER+"?route=module/<?php echo $module ?>/updatePosition";
				$.post(url,$('#datalist').serialize(),function(data){
						if(data=="true"){
							$.unblockUI();
							window.location.reload();
						}
					
					}
				);
		}
		function postform(){
				var rpp=$('#rppoption ').val();
				$('#rpp').val(rpp);
				
				$("#dataheader").submit();
		}
</script>