<div id="dathang" >
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
            <p>
            	<label for="input-5">Sản phẩm đã chọn</label><br>
                <input type="text" name="productcode" id="productcode" class="elife-textbox" value="<?php echo $product ?>" />
            </p>
            <p>
            	<label for="input-6">Lời nhắn</label><br>
               <textarea name="description" id="description" rows="10"></textarea>
            </p>
            <p>
                <input type="button" class="elife-button" value="Đặt mua" onclick="sendMessage()">
                <a class="elife-button" href="<?php echo HTTP_SERVER ?>">Tiếp tục mua hoa</a>
            </p>
        </form>
</div>
<script>
	function sendMessage(){    
        $.post("?route=module/efloraorder/save_order", 
    
                $("#flora_order").serialize(), 
    
                function(data){
                    if(data != "true"){
                       	$('.elife-error').html(data);
                        $('.elife-error').fadeIn("slow");
                    } else {
                        alert("Đơn đặt hàng của bạn đã được gửi đến chúng tôi");
                        window.location.reload();
                    }    
				}
		);
	}
</script>