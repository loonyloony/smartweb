<div class="seo_content" ><?php echo htmlspecialchars_decode($news['seo_content']) ?></div>
<div class="elife-left blog-list">
    
    <!-- HTML CHI TIẾT TIN TỨC -->
    
    <div class="elife-section-title" style="display:block"><h1><a><?php echo $news['title'] ?></a></h1></div>
    <?php if($news['imagepath'] != ""){?>
    <img class="elife-post-image" src="images/resizepng-700x0/<?php echo $news['imagepath']?>" />
    <?php } ?>
    <div class="elife-section-content">
        <p class="elife-post-date"><b><?php echo $text_postdate ?>: <?php echo $this->date->formatMySQLDate($news['updateddate']) ?></b><br /><br /></p>
        
        <p>
           <?php echo htmlspecialchars_decode($news['description']); ?>
        </p>
        <div class="elife-post-author"><?php echo $news['author'] ?></div>
        <div class="elife-post-source"><?php echo $news['source'] ?></div>
        <br />
        <!-- HTML KẾT NỐI MẠNG XÃ HỘI CHO TỪNG BÀI VIẾT -->
        <!-- Social -->
        <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
        <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
        <!-- Make Social Buttons Load in Ajax -->
        <script type="text/javascript">
            jQuery(document).ajaxComplete(function($) {
                gapi.plusone.go();
                twttr.widgets.load();
                try {
                    FB.XFBML.parse();
                }catch(ex){}
            });
        </script>
        <!-- Social -->
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
					js.async=true;
          js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=246727095428680";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
        </script>
    </div>
    
    <div class="elife-post-social">
    <?php
        $pageURL = 'http';
        if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
        $pageURL .= "://";
        if ($_SERVER["SERVER_PORT"] != "80") {
        $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
        } else {
        $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
        }
    ?>
        <div class="like_btn">
            <div class="fb-like" href="<?php echo $pageURL ?>" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
        </div>
        <div class="tweet_btn">
            <a href="http://twitter.com/share" class="twitter-share-button"
            data-url="<?php echo $pageURL ?>"
            data-via="organicthemes"
            data-text="The Current State Of The Music Industry"
            data-related=""
            data-count="horizontal">Tweet</a>
        </div>
        <div class="plus_btn">
            <g:plusone size="medium" href="<?php echo $pageURL ?>"></g:plusone>
        </div>
        <div class="clearer">&nbsp;</div>
    </div>
    <div class="elife-content-line"></div>
    <div class="elife-section-footer">
    	<div class="fb-comments" data-href="<?php echo $pageURL ?>" data-width="700" data-num-posts="10"></div>
    </div>
    <?php if(count($othernews) > 0) { ?>
    <div class="elife-post-others">
        <h2><?php echo $text_relatepost ?></h2>
        <ul>
            <?php foreach($othernews as $item) { ?>
            <li><a title="title" href="<?php echo $item['link'] ?>"><?php echo $item['title'] ?></a></li>
            <?php } ?>
        </ul>
    </div>
    <?php } ?>
    
    
</div>
<?php
    
    
    
?>
<div class="elife-right blog-nav">
    <h2><?php echo $title_topics ?></h2>
    <div class="tag-list">
        <ul>
            <?php 
            if (count($tags) != 0) {
                foreach ($tags as $item) {
            ?> 
            <li><a href="<?php echo $urlnofilter.'tag='.$item['key'] ?>" ><?php echo $item['key'] ?> (<?php echo $item['count']?>)</a></li>
            <?php }} ?>
        </ul>
    </div>
    <h2><?php echo $title_timeline ?></h2>
    <div class="tag-list">
        <?php if(count($listmonth) != 0) {
        echo "<ul>";	
        foreach ($listmonth as $item){ ?>
            <li><a href="<?php echo $urlnofilter.'date='.$item ?>"><?php echo $text_month ?> <?php echo $item ?></a></li>
        
        <?php }
        echo "</ul>";
        } ?>
    </div>
</div>
<div class="clearer"></div>