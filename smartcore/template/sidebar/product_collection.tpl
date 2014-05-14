<?php if(count($products) > 0){ ?>
<div class="elife-product-list">
    <div class="elife-wrapper">
        <div id="product-collection" class="product-row">
            <div class="slides">
                <?php if(count($products) > 0){ foreach($products as $item){ ?>
                <div class="product">
                    <div class="product-image">
                        <a class="product-link" href="<?php echo $item['link'] ?>">
                            <img width="160px" src="images/resizepng-160x0/<?php echo $item['image'] ?>" />
                        </a>
                    </div>
                    
                    <div class="product-name" title="<?php echo $item['name'] ?>">
                        <a class="product-link" href="<?php echo $item['link'] ?>">
                        	<span class="name"><?php echo $item['name'] ?></span>
                        </a>
                    </div>
                </div>
                <?php } } ?>
            </div>
        </div>
    </div>
</div>

<script language="javascript">
$("div#product-collection").jContent({
	width: 160,
	height: 200,
	orientation: 'vertical', 
	easing: "easeOutCirc", 
	duration: 1500,
	auto: true,
	pause_on_hover: true,
	direction: 'next',
	pause: 2500
});
</script>
<?php } ?>