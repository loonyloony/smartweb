<?php 
	$this->document->addScript("jquery-ui.js"); 
	$this->document->addStyle("jquery-ui.css");
?>
<!-- HTML TIN TỨC -->
<div class="elife-section-title"><h1><a><?php echo $product['name'] ?></a></h1></div>
<div class="seo_content" ><?php echo htmlspecialchars_decode($product['seo_content']) ?></div>
<div class="elife-section-content">
    <div class="elife-item-line"></div>
    <div class="elife-product-detail">
        <table width="100%">
            <tr>
                <td width="300px">
                    <a title="<?php echo $product['name'] ?>" href="">
                        <img src="images/resizepng-250x0/<?php echo $product['image']?>" alt="<?php echo $product['name'] ?>" />
                    </a>
                </td>
                <td>
                    <p><label><?php echo $text_model ?>:</label> <span class="model"><?php echo $product['model'] ?></span></p>
                    <p><label><?php echo $text_price ?>:</label> 
                        <span class="product-price">
                            <span><?php echo ($product['price'] != 0) ? $this->string->numberFormate($product['price']).' đ' : 'Call' ?></span> 
                        	
                        </span>
                        
                    </p>
                    <p>
                    	<span class="add-to-cart"><a onclick="showbox(<?php echo $product['productid'] ?>)"><?php echo $button_checkout ?></a></span>
                    </p>
                    <p>
                       <?php echo htmlspecialchars_decode($product['summary']) ?>
                    </p>
                </td>
            </tr>
        </table>
        <div class="product-description">
            <p><?php echo htmlspecialchars_decode($product['description']) ?></p>
        </div>	
        <div class="clearer"></div>
    </div>
    
    <div class="elife-content-line"></div>
    <h2>Sản phẩm khác</h2>
    <div class="elife-product-list">
        <div class="elife-wrapper">
            <ul id="product-row-0" class="product-row">
                <!--Product-->
                <?php if(count($products) > 0) { foreach ($products as $item) { ?>
                    <li id="productid" class="product">
                        <div class="product-image">
                            <a class="product-link" href="<?php echo $item['link'] ?>" title="<?php echo $item['name'] ?>">
                                <!--<span class="sale-icon"></span>-->
                                <img height="182px" alt="<?php echo $item['name'] ?>" src="images/resizeblack-182x182/<?php echo $item['image']?>">
                            </a>
                        </div>
                        <div class="product-name" title="<?php echo $item['name'] ?>">
                            <a class="product-link" href="<?php echo $item['link'] ?>" title="<?php echo $item['name'] ?>">
                                <!--<span class="model"><?php echo $text_model?>: <?php echo $item['model'] ?></span>-->
                                <span class="name"><?php echo $item['name'] ?></span>
                                
                                <span class="product-price">
                                    <span class="sale-price"><?php if($item['price'] != 0){ echo $this->string->numberFormate($item['price']).'đ'; }else{ echo 'Call';} ?></span>
                                	<span class="add-to-cart"><a class="elife-button" onclick="showbox(<?php echo $item['productid'] ?>)"><?php echo $button_checkout ?></a></span>
                                </span>
                            </a>
                        </div>
                    </li>
                <?php } } ?>
            </ul>
            <div class="clearer"></div>
        </div>
    </div>
</div>
<div id="dialog" style="display:none" title="<?php echo $text_addtocart ?>">
	
	</div>
<div class="elife-section-footer"></div>

<script>
function showbox(id)
{
	$.post("<?php echo HTTP_SERVER ?>?route=common/shoppingcart/choose_qty",{id : id},function(data){
		$("#dialog").html(data);
	});
	
	$("#dialog").dialog({width: 335});
}
</script>