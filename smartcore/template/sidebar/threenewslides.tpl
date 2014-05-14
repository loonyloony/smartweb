<?php $this->document->addScript("jquery.totemticker.js") ?>
<?php $this->document->addScript("jquery.jscroll.js") ?>
	<ul id="vertical-ticker">
<?php
	foreach($news as $item) {
?>
		<li>
                <img class="new-image" src="images/fixsize-75x75/<?php echo $item['imagepath']; ?>" />
                	
                <a class="new-title" href="<?php echo $this->url->getURL($item['alias'], 'media', $item['mediaid']); ?>">
                	<img class="arrow" src="<?php echo DIR_IMAGE?>arrow.png" />	
                	<?php echo mb_strtolower($item['title'], 'UTF-8'); ?>
                </a>
            	<div class="clearer"></div>
    	</li>
<?php
 	}
?>
	</ul>
<script>
	$('#vertical-ticker').totemticker({
	row_height  :   '90px',
	next        :   '#ticker-next',
	previous    :   '#ticker-previous',
	stop        :   '#stop',
	start       :   '#start',
	});
	
	/*$(function() {
		 $(".elife-sidebar-right").jScroll({top : 36});
	});*/
</script>