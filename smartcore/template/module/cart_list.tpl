<?php if ($my_cart_list == "" || count($my_cart_list) == 0) { ?>
	<div><?php echo $title_noproduct_incart ?></div>
<?php } else { ?>
<div id="cart-list">
	<form id="list-cart" name="list-cart">
        <div id="cart-navigation">
        	<input type="button" class="elife-button" onclick="updatecart()" value="Cập nhật" />
            <input type="button" class="elife-button" onclick="submitcart()" value="Xác nhận" />
            <input type="button" class="elife-button" onclick="deletecart()" value="Xóa" />
        </div>
	
    	<table class="cart-tbl">
        	<tr>
            	<th><input id="ckall" name="ckall" onclick="$('input[id*=chk]').attr('checked', this.checked)" type="checkbox" value="" /></th>
            	<th></th>
                <th><?php echo $text_products ?></th>
                <th><?php echo $text_qty ?></th>
                <th><?php echo $text_price ?></th>
                <th><?php echo $text_subtolal ?></th>
            </tr>
            <?php foreach ($my_cart_list as $item) { ?>
            	<tr>
                	<td>
                    	<input id="chk[<?php echo $item['product-id'] ?>]" name="chk[<?php echo $item['product-id'] ?>]" type="checkbox" value="<?php echo $item['product-id'] ?>" />
                    </td>
                    <td>
                    	<img src="images/resizeblack-50x50/<?php echo $item['image'] ?>" alt="<?php echo $item['name'] ?>" />
                    </td>
                    <td>
                    	<?php echo $item['name'] ?>
                    </td>
                    <td>
                    	<input class="elife-textbox" onkeypress="validate(event)" id="qty<?php echo $item['product-id'] ?>" name="prd[<?php echo $item['product-id'] ?>]" value="<?php echo $item['product-qty'] ?>" type="text"  />
                    	<div class="error" id="err<?php echo $item['product-id'] ?>" style="display:none" ></div>
                    </td>
                    <td>
                    	<?php echo $item['price'] ?>
                    </td>
                    <td>
                    	<?php echo $item['price']*$item['product-qty'] ?>
                    </td>
                </tr>
            <?php } ?>
            <tr>
            	<td></td>
                <td></td>
                <td></td>
                <td></td>
                <td style="text-align:right"><?php echo $text_total ?></td>
                <td style="text-align:right"><?php echo $this->session->data['cart_total'] ?></td>
            </tr>
        </table>
    </form>
	<script>
    	function submitcart() {
			$.blockUI({ message: "<h1><?php echo $text_pleasewait ?></h1>" });
			$.post("<?php echo HTTP_SERVER ?>?route=module/cart/validate", $("#list-cart").serialize() ,function(data){
				if (data == "true") {
					window.location = "<?php echo HTTP_SERVER ?>payment.html?step=2";
				} else {
					$("div[id*=err]").hide();
					var err = JSON.parse(data);
					var x;
					for (x in err)
					{
						$("#err"+x).html(err[x]).show();
					}	
				}
				$.unblockUI();
			});
		}
		
		function updatecart() {
			$.blockUI({ message: "<h1><?php echo $text_pleasewait ?></h1>" });
			$.post("<?php echo HTTP_SERVER ?>?route=module/cart/validate", $("#list-cart").serialize() ,function(data){
				if (data == "true") {
					location.reload();
				} else {
					$("div[id*=err]").hide();
					var err = JSON.parse(data);
					var x;
					for (x in err)
					{
						$("#err"+x).html(err[x]).show();
					}	
				}
				$.unblockUI();
			});
		}
		
		function deletecart() {
			if (confirm("<?php echo $text_deleteproducts ?>")) {
				$.blockUI({ message: "<h1><?php echo $text_pleasewait ?></h1>" });
				$.post("<?php echo HTTP_SERVER ?>?route=module/cart/delete", $("#list-cart").serialize() ,function(data){
					location.reload();
					$.unblockUI();
				});	
			}
		}
		
		function validate(evt) {
			var theEvent = evt || window.event;
			var key = theEvent.keyCode || theEvent.which;
			key = String.fromCharCode( key );
			var regex = /[0-9]/;
			if( !regex.test(key) ) {
				theEvent.returnValue = false;
				if(theEvent.preventDefault) theEvent.preventDefault();
			}
		}
		
		$("input[id*=qty]").change(function () {
			var id = $(this).attr("id");
			id = id.substring(3);
			var qty = $(this).val();
			$.post("<?php echo HTTP_SERVER ?>?route=module/cart/validate_qty", {id:id,qty:qty} ,function(data){
				if (data == "true") {
					$("#err"+id).hide();
				} else {
					$("#err"+id).html(data).show();
				}
			});
		});
    </script>
</div>
<?php } ?>