<div class="section">
	
    <div class="section-title">
    	<div class="left titletext"><?php echo $menu_addons ?></div>
        <div class="clearer">&nbsp;</div>
    </div>

    <div class="section-content padding1">  

        <?php if(count($addon)){ foreach($addon as $item){ ?>
        <div class="elife-item-setting left">
          <div class="image-icon"> <a href="<?php echo $item['link'] ?>"><img src="view/skin1/image/stacks/addon.png" /></a></div>
            <a href="<?php echo $item['link'] ?>" class="elife-item-name"><?php echo $item['addonname'] ?></a>
            <div class="clearer"></div>
        </div>
        <?php } } ?>
            
    </div>

</div>
