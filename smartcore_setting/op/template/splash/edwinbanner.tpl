<div id="mainwrapper">	
<?php if(count($banner) > 0){ foreach($banner as $item) { ?>	
	<div id="box-6" class="box">
		<img id="image-6" src="images/root/<?php echo $item['image'] ?>" alt="<?php echo $item ['title']?>"/>
		<span class="caption scale-caption">		
			<p><?php echo htmlspecialchars_decode($item['description']) ?></p>
		</span>
	</div>	
<?php } } ?>
</div>