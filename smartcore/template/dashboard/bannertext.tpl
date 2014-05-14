<?php
	$this->document->addStyle("bannertext.css");
?>
<div class="banner_text">
    <?php if(count($banner) > 0){ foreach($banner as $item) { ?>
        <div class="text-link">
        	<h3><a href="<?php echo ($item['link'] == '') ? '#' : $item['link'] ?>"><?php echo 		$item ['title']?></a></h3>
            <?php echo $item['image'] ?>
        </div>
    <?php } } ?>
</div>