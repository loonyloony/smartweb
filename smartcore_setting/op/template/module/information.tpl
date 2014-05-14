<div class="elife-section-title"><h1><a><?php echo htmlspecialchars_decode($media['title']) ?></a></h1></div>
<div class="seo_content" ><?php echo htmlspecialchars_decode($media['seo_content']) ?></div>
<?php echo $contentsplash?>


<div class="elife-section-content">
    <div>
        <?php echo htmlspecialchars_decode($media['description']) ?>
    </div>
    
    <?php if(count($media['filedownload'])>0){ ?>
    <div>
    <?php foreach($media['filedownload'] as $item){ ?>
    Download :<span class="left"><a href="file/default/<?php echo $item['image'] ?>"><?php echo $item['image'] ?></a></span>
    </div>
    <?php 
        }
    }?>
</div>
<div class="elife-post-author"><?php echo $media['author'] ?></a></div>
<div class="elife-post-source"><?php echo $media['source'] ?></a></div>
<div class="elife-post-social">
    <div class="tweet_btn">
        <a href="<?php echo $this->smartweb->weburl?>" class="twitter-share-button"
        data-url="<?php  ?>"
        data-via="organicthemes"
        data-text="The Current State Of The Music Industry"
        data-related=""
        data-count="horizontal">Tweet</a>
    </div>
    <div class="plus_btn">
        <g:plusone size="medium" href="<?php echo $this->smartweb->weburl?>"></g:plusone>
    </div>
   <!--<div class="fb-like" data-href="<?php echo HTTP_SERVER.$this->smartweb->weburl?>" data-send="false" data-layout="button_count" data-width="450" data-show-faces="true"></div>-->
   <div class="like_btn">
        <div class="fb-like" href="<?php echo $this->smartweb->weburl?>" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
    </div>
    <div class="clearer">&nbsp;</div> 
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

<div class="elife-post-footer">
    <span><a href="<?php echo HTTP_SERVER ?>" class="elife-button">&larr; <?php echo $button_backhome ?> </a></span>
</div>
<div class="elife-section-footer"></div>





