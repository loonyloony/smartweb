<?php
    $this->document->addScript("jquery.min.js");
	$this->document->addScript("jquery.mobile.customized.min.js");
	$this->document->addScript("jquery.easing.1.3.js");
	$this->document->addScript("camera.min.js");
	
    $this->document->addStyle("camera.css");
?>

<div class="fluid_container">
    	
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
		<?php if(count($banner) > 0){ foreach($banner as $item) { ?>
		
            <div data-thumb="images/resizepng-110x110/<?php echo $item['image'] ?>" data-src="images/root/<?php echo $item['image'] ?>">
                <div class="camera_caption fadeFromBottom">
                   <?php echo htmlspecialchars_decode($item['description']) ?>
                </div>
            </div>
			
         <?php } } ?>   
        </div>
    	
    </div>
    <div class="clearer">&nbsp;</div>
	
	 <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_1').camera({
				thumbnails: true
			});

			jQuery('#camera_wrap_2').camera({
				height: '400px',
				loader: 'bar',
				pagination: false,
				thumbnails: true
			});
		});
		
	</script>
	
	
	
	