<!-- HTML CHI TIẾT TIN TỨC -->
<div class="elife-section-title"><h1><a><?php echo $news['title'] ?></a></h1></div>
<div class="seo_content" ><?php echo htmlspecialchars_decode($news['seo_content']) ?></div>

<div class="elife-section-content">
    <p class="elife-post-date"><?php echo $text_postdate ?>: <?php echo $this->date->formatMySQLDate($news['updateddate']) ?></p>
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
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
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
		<div class="fb-like" data-href="<?php echo $pageURL ?>" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>       
    </div>
	
    <div class="tweet_btn" style="margin-left:185px;">
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
<?php if(count($othernews) > 0) { ?>
<div class="elife-post-others">
	<h2><?php echo $text_relatednews ?></h2>
    <ul>
        <?php foreach($othernews as $item) { ?>
        <li><a title="title" href="<?php echo $item['link'] ?>"><?php echo $item['title'] ?></a></li>
        <?php } ?>
    </ul>
</div>
<?php } ?>

<div class="elife-section-footer"></div>