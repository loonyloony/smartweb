<div class="section" id="sitemaplist">

    <div class="section-title">
        <div class="titletext left"><?php echo $title?></div>
        <div class="button right">
        <?php if($add == "" && $_GET['route'] != 'module/information'){ ?>
        <input type="button" value="<?php echo $button_add ?>" class="button" onclick="window.location='<?php echo $add ?>'"/>
        <?php } ?>
        <input type="button" value="<?php echo $button_save ?>" class="button" onclick="save()"/>
        <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="backhistory()"/>
        <input type="hidden" name="id" value="<?php echo $sitemap['id']?>" />
        
        </div>
        <div class="clearer"></div>
    </div>
    
	<div class="section-content padding1">