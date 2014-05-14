<div class="marquee" id="mycrawler">
    <?php if(count($logoslides) > 0){ foreach($logoslides as $item) { ?>
        <a href="<?php echo $item['link'] ?>" target="_blank"><img src="images/resizepng-0x30/<?php echo $item['image'] ?>" alt="<?php echo $item['title'] ?>" /></a>
    <?php } } ?>
</div>

<script type="text/javascript">
marqueeInit({
	uniqueid: 'mycrawler',
	style: {
		'width': '100%',
		'padding': '5px'
	},
	inc: 5, //speed - pixel increment for each iteration of this marquee's movement
	mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
	moveatleast: 2,
	neutral: 150,
	savedirection: true
});
</script>