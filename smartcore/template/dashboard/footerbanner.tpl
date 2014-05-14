<div class="footer_banner">
    <?php if(count($banner) > 0){ foreach($banner as $item) { ?>
        <a href="<?php echo ($item['link'] == '') ? '#' : $item['link'] ?>"><img src="images/root/<?php echo $item['image'] ?>" alt="<?php echo 		$item ['title']?>" /></a>
    <?php } } ?>
</div>