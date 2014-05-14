<div class="elife-section-title"> <h1><a> <?php echo $text_payment ?> </a></h1> </div>

<?php if ($my_cart_list == "" || count($my_cart_list) == 0) { ?>
	<div><?php echo $title_noproduct_incart ?></div>
<?php } else { ?>
<div class="up-content">
    	<form id="frm_cart" method="post">
        <div id="error"></div>      
			<h3> <?php echo $title_contactinfo ?> </h3>
            <table>
            	<tr>
                	<td>
                    	<label for="name"><?php echo $title_fullname ?></label>
					</td>
                    <td>
                    	<input type="text" class="elife-textbox" value="<?php echo $customer['firstname']." ".$customer['lastname'] ?>" name="name" size="50" />
					</td>
                </tr>
                <tr>
                	<td>
                    	<label for="telephone"><?php echo $text_phone ?></label>
                    </td>
                    <td>
                    	<input type="text" class="elife-textbox" value="<?php echo $customer['telephone'] ?>" name="telephone" size="50" />
                    </td>
                <tr>
                	<td>
                   		<label for="email"><?php echo $text_email ?></label>
                    </td>
                    <td>
                    	<input type="text" class="elife-textbox" value="<?php echo $customer['email'] ?>" name="email" size="50" />
					</td>
               	</tr>
                <tr>
                	<td>
                    	<label for="address"><?php echo $title_address ?></label>
                    </td>
                    <td>
                    	<input type="text" class="elife-textbox" value="<?php echo $customer['address'] ?>" name="address" size="50" />
                    </td>
               	</tr>
        	</table>
            <h3> <?php echo $text_orderinformation ?></h3>
            <div id="cart-list">
                <table class="cart-tbl">
                    <tr>
                    	<th><?php echo $text_image ?></th>
                        <th><?php echo $text_products ?></th>
                        <th><?php echo $text_qty ?></th>
                        <th><?php echo $text_price ?></th>
                        <th><?php echo $text_subtolal ?></th>
                    </tr>

                    <?php foreach ($my_cart_list as $item) { ?>
                    <tr>
                    	<td>
                        	<?php if(count($item['image']) > 0) { foreach($item['image'] as $image) { ?>
                            <img src="images/resize-100x100/<?php echo $image ?>" alt="<?php echo $item['name'] ?>" />
                            <?php } } else { ?>
                            <img src="images/resize-100x100/<?php echo $item['image'] ?>" alt="<?php echo $item['name'] ?>" />
                            <?php } ?>
                        </td>
                        <td>
                            <?php echo $item['name'] ?>
                        </td>
                        <td style="text-align:center">
                            <?php echo $item['product-qty'] ?>
                        </td>
                        <td>
                            <?php echo $this->string->numberFormate($item['price']) ?> đ
                        </td>
                        <td>
                            <?php echo $this->string->numberFormate($item['price'] * $item['product-qty']) ?> đ
                        </td>
                    </tr>
                    <?php } ?>
                    <tr>
                        <td colspan="4"><span style="color:#000; font-weight:bold"><?php echo $text_total ?></span></td>
                        <td><span style="font-weight:700; color:#FB0282"><?php echo $this->string->numberFormate($this->session->data['cart_total']) ?> đ</span></td>
                    </tr>
                </table>
            </div>
        </form>
</div>
    
<div class="up-bottom">
    <div id="cart-navigation">
        <button type="submit" onclick="save_cart()" class="elife-button" id="btn_submit"><?php echo $text_payment ?></button>
        <a class="elife-button" id="btn_reset" onclick="reset_cart()"><?php echo $button_reset ?></a>
    </div>
</div>
<script>
	function save_cart() {
		$.post("<?php echo HTTP_SERVER ?>?route=module/cart/pay", $("#frm_cart").serialize() ,function(data){
			if(data == "true")
			{
				alert("<?php echo $text_paymentsuccess ?>");
				window.location.href = "<?php echo HTTP_SERVER ?>";
			} else {
				$("#error").html(data).show('slow');
				//$(window).scrollTop(500);
				$("html, body").animate({ scrollTop: 0 }, "slow");
			}
		});
	}
	
	function reset_cart() {
		location.reload();
	}
	
	
</script>

<?php } ?>