<?php if(count($banner) > 0){ foreach($banner as $item){ ?>
<a target="_blank" href="<?php echo $item['link'] ?>">
	<img src="images/resizepng-0x32/<?php echo $item['image'] ?>" />
</a>
<?php } } ?>