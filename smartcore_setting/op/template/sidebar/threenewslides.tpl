<?php $this->document->addScript("jquery.min.js") ?>
<?php $this->document->addScript("jquery.simplyscroll.js") ?>
<?php $this->document->addStyle("jquery.simplyscroll.css"); ?>
	<ul id="scroller" style="height:400px; text-align:center;">
<?php
	foreach($news as $item) {
?>
		<li>
                <img width="90%" class="new-image" src="images/fixsize-110x110/<?php echo $item['imagepath']; ?>" /><br/>
                	
                <a class="new-title" href="<?php echo $this->url->getURL($item['alias'], 'media', $item['mediaid']); ?>">
                		
                	<?php //echo mb_strtolower($item['title'], 'UTF-8'); ?>
					<?php echo  ucfirst($item['title']); ?>
                </a>
            	<div class="clearer"></div>
    	</li>
<?php
 	}
?>
	</ul>
<script type="text/javascript">
(function($) {
	$(function() { //on DOM ready
		$("#scroller").simplyScroll({
			customClass: 'vert',
			orientation: 'vertical',
            auto: true,
            manualMode: 'loop',
			frameRate: 30,
			speed: 1
		});
	});
})(jQuery);
</script>