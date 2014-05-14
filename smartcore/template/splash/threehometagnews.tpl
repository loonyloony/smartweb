<?php if(count($media)> 0) {
	foreach($media as $item) {
?>
	<div class="hometag elife-left">
    	<h2 class="elife-section-title"><a href="<?php echo $item['link'] ?>"><?php echo $item['title'] ?></a></h2>
        <div class="elife-section-content"><?php echo htmlspecialchars_decode($item['summary']) ?></div>
        <br />
        <a class="view-more" href="<?php echo $item['link'] ?>"><?php echo $text_viewmore ?></a>
    </div>
<?php    
    }
} ?>
	<div class="clearer"></div>
<script>
	$(document).ready(function() {
		var height = 0;
		$("#threehometagnews .hometag .elife-section-content").each(function() {
			if($(this).height() > 0) height = $(this).height();
		});	
		$("#threehometagnews .hometag .elife-section-content").css("height",height+30);
	});
	
</script>