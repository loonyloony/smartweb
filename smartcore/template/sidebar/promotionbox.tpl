<div id="promotion-box">
    <div class="slides">
		<?php 
        if(count($promotion)) { foreach($promotion as $item) { ?>
        <div class="banner">
            <div class="banner-image">
                <a class="banner-link" href="<?php echo $item['link'] ?>">
                    <img width="190px" src="images/resizepng-190x270/<?php echo $item['image'] ?>" />
                </a>
            </div>
            
            <div class="banner-name" title="<?php echo $item['title'] ?>">
                <a class="banner-link" href="<?php echo $item['link'] ?>">
                    <span class="name"><?php echo $item['title'] ?></span>
                </a>
            </div>
        </div>
		<?php } } ?>
    </div>
    <div class="clearer"></div>
</div>

<script language="javascript">
$("div#promotion-box").jContent({
		width: 190,
		height: 320,
		orientation: 'horizontal', 
		easing: "easeOutCirc", 
		duration: 1500,
		auto: true,
		pause_on_hover: true,
		direction: 'next',
		pause_on_hover: true,
		pause: 2500
});
</script>
