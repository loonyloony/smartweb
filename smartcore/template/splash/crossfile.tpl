<?php
	$this->document->addScript("jquery.easing.min.js");
	$this->document->addScript("jquery.pause.min.js");
	$this->document->addScript("jquery.cross-slide.js");
?>
<div id="backroundfadecontainer"></div>

<style>
#backroundfadecontainer{background:red}
</style>

<script>
$(document).ready(function(){
	screen_height = $(window).height();
	screen_width = $(window).width();
	$("#backroundfadecontainer").height(screen_height);
	$("#backroundfadecontainer").width(screen_width);
	/*$(window).resize(function(){
		screen_height = $(window).height();
		screen_width = $(window).width();
		$("#backroundfadecontainer").height(screen_height);
		$("#backroundfadecontainer").width(screen_width);
	});*/
	 
	$backround = $('#backroundfadecontainer');	
	
	$backround.crossSlide({
		fade: 1,
		variant: true,
		easing: 'easeInOutQuad',
		delay:1000
	}, [
		{
			src:  'skin/image/buffethanoi/bg_home3.jpg',
			from: '100% 80% 1.5x',
			to:   '100% 80% 1x',
			time: 5
		}, {
			src:  'skin/image/buffethanoi/bg_home2.jpg',
			from: '100% 80% 1x',
			to:   '100% 80% 1x',
			time: 5
		}, {
			src:  'skin/image/buffethanoi/bg_home1.jpg',
			from: '100% 80% 1x',
			to:   '80% 0%',
			time: 5
		}, {
			src:  'skin/image/buffethanoi/bg_home4.jpg',
			from: '100% 80% 1x',
			to:   '80% 0%',
			time: 5
		}
	]);
	/*$('#backroundfadecontainer').crossSlide({
		sleep: 2,
		fade: 1
	}, [
		{ 
			src: 'skin/image/buffethanoi/bg_home3.jpg',
			alt:  'Sand Castle',
			from: '50% 50% 1x',
			to:   '100% 0% 1.7x',
			time: 5 
		},
		{
			src: 'skin/image/buffethanoi/bg_home2.jpg',
			alt:  'Sunflower',
			from: 'top left',
			to:   'bottom right 1.5x',
			time: 5   
		},
		{
			src: 'skin/image/buffethanoi/bg_home1.jpg',
			alt:  'Rubber Ring',
		    from: '100% 50%',
		    to:   '30% 50% 1.5x',
		    time: 5
		}
	]);*/
});
</script>