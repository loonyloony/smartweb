<!-- HTML TIN TỨC -->
<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>

<div class="elife-section-content">
    <div class="elife-item-line"></div>
    <div id="elife-post-contatiner">
    <input type="hidden" id="flag" value="<?php echo $flag?>" />
    <?php 
        if(isset($medias)){ 
            foreach($medias as $item) {
    ?>
    <div class="elife-post">
        <?php if($item['imagepath'] != "") {?>
        <img class="elife-post-image" src="images/resizepng-150x0/<?php echo $item['imagepath'] ?>" />
        <?php } ?>
        <div>
            <h3><a class="elife-post-title" href="<?php echo $item['link'] ?>"><?php echo $item['title'] ?></a></h3>
            <p class="elife-post-date"><?php echo $item['updateddate'] ?></p>
            <p class="elife-post-summary">
                <?php echo $item['summary'] ?>
            </p>
            <p class="elife-text-right"><a title="News title" href="<?php echo $item['link'] ?>"><?php echo $button_view ?></a></p>
        </div>
        <div class="clearer">&nbsp;</div>
    </div>
    <div class="elife-item-line"></div>
    <?php 	
            } 
        }
    ?>
    </div>
</div>

<div class="elife-section-footer"></div>