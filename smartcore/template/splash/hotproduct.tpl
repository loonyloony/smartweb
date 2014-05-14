<div class="elife-product-list">
	<div class="elife-wrapper">
    	<ul id="product-row-0" class="product-row">
            <!--Product-->
            <?php 
            	if(count($products) > 0) { foreach ($products as $item) { ?>
                <li id="productid" class="product">
                    <div class="product-image">
                        <a class="product-link" href="<?php echo $item['link'] ?>">
                            <!--<span class="sale-icon"></span>-->
                            <img alt="<?php echo $item['name'] ?>" src="images/fixsize-220x182/<?php echo $item['image']?>">
                        </a>
                    </div>
                    <div class="product-name" title="<?php echo $item['name'] ?>">
                        <a class="product-link" href="<?php echo $item['link'] ?>">
                            <span class="model">Model: <?php echo $item['model'] ?></span>
                            <span class="name"><?php echo $item['name'] ?></span>
                            
                            <span class="product-price">
                                <span class="sale-price"><?php if($item['price'] != 0){ echo $this->string->numberFormate($item['price']).'đ'; }else{ echo 'Call';} ?></span>
                            </span>
                        </a>
                    </div>
                </li>
            <?php } } ?>
        </ul>
        <div class="clearer"></div>
	</div>
</div>