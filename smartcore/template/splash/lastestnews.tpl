<div class="lastestnews">
	<ul>
    <?php if(count($news) > 0) { foreach($news as $item) { ?>
    	<li>
        	<a href="<?php echo $item['link'] ?>"><?php echo $item['title'] ?></a>
        </li>
    <?php } } ?>
    </ul>
</div>