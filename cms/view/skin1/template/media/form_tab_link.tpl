<?php if($flag=="true"){ ?>
<div id="tablink">

    <?php if(count($items['group']) > 0) { for($i=0;$i<count($items['group']);$i++){ if($items['groupkey'][$i]==$items['group'][$i]['sitemapid']){ ?>
    
    <input class="refersitemap" id="refe-<?php echo $items['group'][$i]['sitemapid'] ?>" type="checkbox" checked="checked" name="groupkey[]" value="<?php echo $items['group'][$i]['sitemapid'] ?>" />
    <span class="refersitemap"> <?php echo $items['group'][$i]['sitemapname'] ?></span>
    
    <?php }else{ ?>
    
    <input class="refersitemap" id="refe-<?php echo $items['group'][$i]['sitemapid'] ?>" type="checkbox"  name="groupkey[]" value="<?php echo $items['group'][$i]['sitemapid'] ?>" />
    <span class="refersitemap"><?php echo $items['group'][$i]['sitemapname'] ?></span>
    
    <?php } } ?> <br />
    
    <textarea name="link" cols="80"><?php echo $items['common']['link'] ?></textarea>
    
</div>
<?php } } ?>