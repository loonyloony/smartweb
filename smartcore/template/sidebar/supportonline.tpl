<?php if(count($supportonline) > 0) { foreach($supportonline as $item) { ?>
<div>
	<h4><?php echo $item['title'] ?></h4>
    <?php if($item['telephone'] != ''){ ?>
    <p>ĐT: <?php echo $item['telephone'] ?></p>
    <?php } ?>
    <p><a href="ymsgr:sendIM?<?php echo $item['yahoo']?>"><img border="0" src="http://opi.yahoo.com/online?u=<?php echo $item['yahoo']?>&amp;m=g&amp;t=1"></a></p>
</div>
<div class="elife-hline"></div>
<?php } } ?>