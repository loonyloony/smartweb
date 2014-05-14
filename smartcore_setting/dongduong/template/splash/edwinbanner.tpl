<!--<div id="text-splash-edwin">
	<?php echo htmlspecialchars_decode($banner[0]['description']) ?>
</div>-->
<?php 
	
	$lang = $this->request->get['lang'];

?>
<div id="widget_container">
	<ul id="rl_widgetrow_prl">
    	<?php if(count($banner)>0) {  ?>
    	<li class="widget">
        	<div class="widget_cat"><?php echo $banner[0]['title'] ?></div>
            <div class="widget_image">
            	<img src="images/resizepng-320x0/<?php echo $banner[0]['image'] ?>" alt="<?php echo $banner[0]['title'] ?>" />
            </div>
            <div class="widget_content">
            	<?php echo htmlspecialchars_decode($banner[0]['description']) ?>
            </div>
            <div class="widget_cta">
            	<a class="elife-button" href="<?php if($lang == 'en') echo 'collection.html'; else echo 'bo-suu-tap.html'; ?>"><?php echo $text_readmore; ?> ...</a>
            </div>
     	</li>
		<li class="widget">
        	<div class="widget_cat"><?php echo $banner[1]['title'] ?></div>
            <div class="widget_image">
            	<img src="images/resizepng-320x0/<?php echo $banner[1]['image'] ?>" alt="<?php echo $banner[1]['title'] ?>" />
            </div>
            <div class="widget_content">
            	<?php echo htmlspecialchars_decode($banner[1]['description']) ?>
            </div>
            <div class="widget_cta">
            	<a class="elife-button" href="<?php if($lang == 'en') echo 'news.html'; else echo 'tin-tuc.html'; ?>"><?php echo $text_readmore; ?> ...</a>
            </div>
     	</li>
		<li class="widget">
        	<div class="widget_cat"><?php echo $banner[2]['title'] ?></div>
            <div class="widget_image">
            	<img src="images/resizepng-320x0/<?php echo $banner[2]['image'] ?>" alt="<?php echo $banner[2]['title'] ?>" />
            </div>
            <div class="widget_content">
            	<?php echo htmlspecialchars_decode($banner[2]['description']) ?>
            </div>
            <div class="widget_cta">
            	<a class="elife-button" href="<?php if($lang == 'en') echo 'new-trend.html'; else echo 'xu-huong-moi.html'; ?>"><?php echo $text_readmore; ?> ...</a>
            </div>
     	</li>
        <?php } ?>
    </ul>
    <div class="clearer"></div>
</div>