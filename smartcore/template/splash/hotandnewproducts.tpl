<div id="hot-products">
	<div class="hot-title"> <?php echo $title_hotproducts ?> </div>
    <div class="hot-content">
    	<div class="elife-product-list">
            <div class="elife-wrapper">
                <ul id="product-row-0" class="product-row">
                    <!--Product-->
                    <?php if(count($hotproducts) > 0) { foreach ($hotproducts as $item) { ?>
                        <li id="productid" class="hot-products">
                            <div class="product-image">
                                <a class="product-link" href="<?php echo $item['link'] ?>">
                                    <!--<span class="sale-icon"></span>-->
                                    <img height="123px" alt="<?php echo $item['name'] ?>" src="images/resizeblack-184x123/<?php echo $item['image']?>">
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
    </div>
</div>

<div id="new-products">
	<div class="new-title"> <?php echo $title_newproducts ?> </div>
    <div class="new-content">
    	<div class="elife-product-list">
            <div class="elife-wrapper">
                <ul id="product-row-0" class="product-row">
                    <!--Product-->
                    <?php if(count($newproducts) > 0) { foreach ($newproducts as $item) { ?>
                        <li id="productid" class="new-products">
                            <div class="product-image">
                                <a class="product-link" href="<?php echo $item['link'] ?>">
                                    <!--<span class="sale-icon"></span>-->
                                    <img height="123px" alt="<?php echo $item['name'] ?>" src="images/resizeblack-184x123/<?php echo $item['image']?>">
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
    </div>
</div>