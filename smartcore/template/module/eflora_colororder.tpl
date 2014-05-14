<script src="<?php echo FILE_SERVER ?>common/js/tooltip.js"></script>
<style>
#screenshot{
	position:absolute;
	z-index: 100000;
	border: 2px solid #ccc;
	border-radius: 50%;
	moz-border-radius: 50%;
	-webkit-border-radius: 100px;
	background:#fff;
	padding:10px;
	display:none;
	color:#000;
	text-align: center;
	}
	
#screenshot {
	max-width: 150px;
}

/*  */
</style>
<div id="waiting" style="position:absolute; left: 50%; top: 50%; display: none">
    <img src="<?php echo DIR_IMAGE ?>ajax-loader.gif" />
</div>
<div class="elife-left eflora-color-order order-selection">
	<?php foreach($hoa as $key => $value) {?>
    	<div class="<?php echo $key ?>">
        	<?php 
            $count = 0;
            foreach($value as $item) { 
            	$count++;
                if($count > 8) break;
            ?>
            
            	<a class="screenshot" title="<?php echo $item['title'] ?>" text="<?php echo $item['title'] ?>" flw="<?php echo $key.'-'.$item['title'] ?>" rel="images/resizepng-150x150/<?php echo $item['image'] ?>"><img src="images/resizepng-40x40/<?php echo $item['image'] ?>" /></a>
            <?php } ?> 
        </div>
    <?php } ?>
</div>
<div class="elife-right order-box" >
	<div class="elife-wrapper">
    	<div class="elife-error" style="display: none"></div>
    	<form method="post" action="" id="flora_order" name="flora_order">
            <p>
                <label for="input-1">Họ tên</label><br>
                <input type="text" name="fullname" id="fullname" class="elife-textbox"  /><i>(*)</i>
            </p>
            <p>
                <label for="input-2">Email</label><br>
                <input type="text" name="email" id="email" class="elife-textbox"  /><i>(*)</i>
            </p>
            <p>
                <label for="input-3">Địa chỉ</label><br>
                <input type="text" name="address" id="address" class="elife-textbox" />
            </p>
            <p>
                <label for="input-4">Điện thoại</label><br>
                <input type="text" name="telephone" id="telephone" class="elife-textbox" />
            </p>
        	<div id="show-flower">
            </div>
            <div class="clearer" ></div>
                <input type="hidden" name="productcode" id="productcode" class="elife-textbox" />
            <p>
                <input type="button" class="elife-button" value="Đặt mua" onclick="sendMessage()">
            </p>
        </form>
        
		<div class="clearer"></div>
    </div>
    <div style="text-align:center">
        Nhấp chuột vào hoa bạn thích để chọn mua
    </div>
</div>
<script>
	$(".screenshot").click(function() {
		$("#waiting").css("display","block");
		var my_title = $(this).attr("text");
		var rel = $(this).attr("rel");
		rel = rel.substring(rel.lastIndexOf('/')+1);
		
		var code = ($(this).attr("flw")).replace(/\s+/g, '');
		var text = $("#productcode").val();
		setTimeout( function() {
			if (text.indexOf(code+",") == -1)
			{
				$("#show-flower").append("<div id ='d"+code+"'><a class=\"screenshot\" title=\""+my_title+"\" rel=\"images/resizepng-150x150/upload/"+rel+"\"><img src='images/fixsize-50x50/upload/"+rel+"' /></a><p onclick=\"removeflower('"+code+"')\" rel='"+code+"'>x</p></div>");
				$("#productcode").val(text+code+",");
			} else {
				
			}
			$("#waiting").css("display","none");
		},500);
		return false;
	});
	
	function removeflower(code) {
		var text = $("#productcode").val();
		text = text.replace(code+",","");
		$("#productcode").val(text);
		$("#d"+code).remove();
	}
	
	function sendMessage(){    
        $.post("?route=module/efloraorder/save_order", 
    
                $("#flora_order").serialize(), 
    
                function(data){
                    if(data != "true"){
                       	$('.elife-error').html(data);
                        $('.elife-error').fadeIn("slow");
                    } else {
                        alert("<?php echo $text_sendordertous ?>");
                        window.location.reload();
                    }    
				}
		);
	}
</script>