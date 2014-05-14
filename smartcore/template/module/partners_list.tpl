<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>

<div class="elife-section-content">
    <div class="elife-item-line"></div>
    <div class="elife-partners-list">
    <?php 
    if(count($medias) > 0){
        foreach($medias as $item) {
    ?>
        <div class="logo-block elife-left">
            <a title="<?php echo $item['title'] ?>" href="<?php echo $item['link'] ?>">
                <img src="images/resizepng-200x200/<?php echo $item['imagepath']?>" alt="<?php echo $item['title'] ?>" />
            </a>
        </div>
    <?php 
        }
    }
    ?>  
        <div class="clearer"></div>
    </div>
</div>

<div class="elife-section-footer"></div>