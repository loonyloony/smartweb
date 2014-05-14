<?php
	$this->document->addScript("jwplayer.js");
?>

<div class="elife-section-title"><h1><a><?php echo $media['title'] ?></a></h1></div>
<div class="elife-section-content">
	<div id="container"></div>
</div>

<script type="text/javascript">
    jwplayer("container").setup({
        'flashplayer': '<?php echo HTTP_SERVER.DIR_COMPONENT?>player/player.swf',
		'id': 'playerID',
		'width': '750',
		'height': '350',
		'playlist.position': 'right',
		'playlist.size': '300',
		'skin': '<?php echo HTTP_SERVER.DIR_COMPONENT?>player/glow.zip',
		'backcolor': 'ffffff',
    	'frontcolor': '000000',
    	'lightcolor': '000000',
    	'screencolor': 'cccccc',
        'playlist': <?php echo json_encode($files) ?>,
        repeat: 'list'
    });
</script>