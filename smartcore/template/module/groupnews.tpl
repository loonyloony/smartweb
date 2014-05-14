<div id="groupnews-content">	
    <div class="groupnews-title"><?php echo htmlspecialchars_decode($sitemap) ?></div>
    <div class="groupnews-detail">
    	<?php if(count($childSitemap) > 0 ) { ?>
        <ul id="group-news"> 
        <?php foreach ($childSitemap as $item) { ?>
        	<li>
            	<a class="head-title" href="<?php echo $item['link'] ?>"><?php echo $item['sitemapname'] ?></a>
                <?php if(count($childSitemap) > 0 ) { ?>
                <ul>
                	<?php foreach ($item['news'] as $news) { ?>
                    <li><a href="<?php echo $news['link'] ?>" ><?php echo $news['title'] ?></a></li>
                    <?php } ?>
                </ul>
                <?php } ?>
            </li>
        
        <?php } ?>
        </ul>
        <?php } ?>
    </div>
</div>

