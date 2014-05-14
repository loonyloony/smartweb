<input type="hidden" id="flag" value="<?php echo $flag?>" />
<?php 
    if(isset($medias)){ 
        foreach($medias as $item) {
?>
<div class="elife-post">
    <h3><a class="elife-post-title" href="<?php echo $item['link'] ?>" title="<?php echo $item['title'] ?>"><?php echo $item['title'] ?></a></h3>
    <p class="elife-post-date"><?php echo $item['updateddate'] ?></p>
    <?php if($item['imagepath'] != "") {?>
    <img class="elife-post-image" src="images/resizepng-700x0/<?php echo $item['imagepath'] ?>" alt="<?php echo $item['title'] ?>" />
    <?php } else {
        echo "<p></p>";
    } ?>
    <div>
        
        <p class="elife-post-summary">
            <?php echo $item['summary'] ?>
        </p>
        
    </div>
    <div class="clearer">&nbsp;</div>
    <div class="elife-left elife-post-social">
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
    <div class="like_btn">
        <div class="fb-like" href="<?php echo $item['link'] ?>" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
    </div>
    <div class="tweet_btn">
        <a href="http://twitter.com/share" class="twitter-share-button"
        data-url="<?php echo $item['link'] ?>"
        data-via="organicthemes"
        data-text="The Current State Of The Music Industry"
        data-related=""
        data-count="horizontal">Tweet</a>
    </div>
    <div class="plus_btn">
        <g:plusone size="medium" href="<?php echo $item['link'] ?>"></g:plusone>
    </div>
    <div class="clearer">&nbsp;</div>
    </div>
    <div class="elife-right"><b><a title="<?php echo $item['title'] ?>" href="<?php echo $item['link'] ?>"><?php echo ($this->config->get('config_languageid') == 'vn')?'Xem chi tiết' : 'View detail' ?></a></b></div>
    <div class="clearer">&nbsp;</div>
</div>
<div class="elife-item-line"></div>
<?php 	
        } 
    }
?>