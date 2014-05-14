<?php $this->document->addScript("snowfall.jquery.js"); ?>
<script type='text/javascript'> 	
		$(document).ready(function(){
			//Start the snow default options you can also make it snow in certain elements, etc.
			$(document).snowfall({deviceorientation : true, round : true, minSize: 5, maxSize:8});
		});
</script>