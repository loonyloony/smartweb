<?php
    $this->document->addScript("jquery.simpleslides.js");
    $this->document->addStyle("elife_simpleslides.css");
?>

<div id="slides">
  <div class="slides_container">
    <?php if(count($banner) > 0){ foreach($banner as $item) { ?>
    <div> <a href="<?php echo ($item['link'] == '') ? '#' : $item['link'] ?>"><img src="images/root/<?php echo $item['image'] ?>" alt="<?php echo $item ['title']?>" /></a> </div>
    <?php } } ?>
  </div>
</div>
<div class="clearer">&nbsp;</div>
<script>
    $(function(){
        $('#slides').slides({
            generateNextPrev: true,
            play: 6000,
			width: 989,
            autoHeight: true
        });
    });
</script>
