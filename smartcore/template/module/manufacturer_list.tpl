<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>
<div class="elife-section-content elife-manufacturer">
   
   	<div class="elife-manufacturer-toolbar">
        <div class="elife-wrapper">
        	<div class="elife-pagination elife-right">
                <?php echo $paginationDisplay ?>
            </div>
            <div class="clearer"></div>
        </div>
    </div>
    
    <div class="elife-manufacturer-list">
        <div class="elife-wrapper">
            <ul id="manufacturer-row-0" class="manufacturer-row">
               
                <?php if(count($manufacturers) > 0) { foreach ($manufacturers as $item) {?>
                    <li id="manufacturerid" class="manufacturer">
                        <div class="manufacturer-image">
                            <a class="manufacturer-link" href="<?php echo HTTP_WEB.$item['seo_url']?>.html" title="<?php echo $item['name'] ?>">
                                <img height="120px" alt="<?php echo $item['name'] ?>" src="images/resize-120x120/<?php echo $item['image']?>">
                            </a>
                        </div>
                        <!--
                        <div class="manufacturer-name" title="<?php echo $item['name'] ?>">
                        	<div class="elife-center">
                            	<a href="<?php echo HTTP_WEB.$item['seo_url']?>.html"><span class="manufacturer-title"><?php echo $item['name']?></span></a>
                            </div>
                        </div>
                        -->
                    </li>
                <?php } } ?>
            </ul>
            <div class="clearer"></div>
        </div>
    </div>
    
    <div class="elife-manufacturer-toolbar">
        <div class="elife-wrapper">
        	<div class="elife-pagination elife-right">
                <?php echo $paginationDisplay ?>
            </div>
            <div class="clearer"></div>
        </div>
    </div>
    
</div>
<div class="elife-section-footer"></div>

