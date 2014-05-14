<div id="my_error" class="error hidden"></div>
<form id="add-cart" name="add-cart">
	số lượng: <input id="product-id" name="product-id" type="hidden" value="<?php echo $productid ?>" />
    <input id="product-qty" name="product-qty" type="text"  /> <br />
    <input type="button" value="<?php echo $text_active ?>" onclick="addProduct()" />    <input type="button" value="<?php echo $text_cancel ?>" onclick="cancel()" />
</form>
<script>
	function cancel() {
		jQuery('#dialog').dialog('close');	
	}
	
	function addProduct() {
		$.post("<?php echo HTTP_SERVER ?>?route=common/shoppingcart/save_product", $("#add-cart").serialize() ,function(data){
			if(data == "true")
			{
				alert("Thêm vào giỏ hàng thành công");
				$.get("<?php echo HTTP_SERVER ?>?route=sidebar/viewcart", {},
			   		function(data){
				 		$("#viewcart .elife-section-content .elife-wrapper").html(data);
			   	});
				jQuery('#dialog').dialog('close');
			} else {
				$("#my_error").html(data).show('slow');	
			}
		});
	}
</script>
