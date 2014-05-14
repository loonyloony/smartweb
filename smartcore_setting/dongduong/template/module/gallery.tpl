<?php
	$this->document->addStyle("");
	$this->document->addStyle("galleriffic-2.css");
	
	$this->document->addScript("jquery-1.3.2.js");
	$this->document->addScript("jquery.galleriffic.js");
    $this->document->addScript("jquery.opacityrollover.js");
?>
<script type="text/javascript">
	document.write('<style>.noscript { display: none; }</style>');
</script>
<div id="page">
			<div id="container">
				<h1><a><?php echo $media['title'] ?></a></h1>
				<h2><?php echo htmlspecialchars_decode($media['description']) ?></h2>

				<!-- Start Advanced Gallery Html Containers -->
				<div id="gallery" class="content">
					<div id="controls" class="controls"></div>
					<div class="slideshow-container">
						<div id="loading" class="loader"></div>
						<div id="slideshow" class="slideshow"></div>
					</div>
					<div id="caption" class="caption-container"></div>
				</div>
				<div id="thumbs" class="navigation">
					<ul class="thumbs noscript">
						<?php 
						if(isset($files)){ 
							foreach($files as $item) 
							{
						?>
						<li>
							<a class="thumb" href="images/resizepng-502x502/<?php echo $item['filepath']?>" title="<?php echo $item['title']?>">
								<img src="images/fixsize-75x75/<?php echo $item['filepath'] ?>" alt="<?php echo $item['title']?>" />
							</a>
							<div class="caption">
								<div class="download">
									<a target="new" href="images/root/<?php echo $item['filepath']?>"><?php echo $text_downoriginal ?></a>
								</div>															
							</div>
						</li>
						 <?php 	
							} 
						}
						?>
					</ul>
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
    <!-- End Advanced Gallery Html Containers -->
    <div class="elife-post-social">
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
        <div class="tweet_btn">
            <a href="http://twitter.com/share" class="twitter-share-button"
            data-url="<?php echo $this->smartweb->weburl?>"
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
    </div>
    
    <div class="elife-post-footer">
        <span><a href="<?php echo HTTP_SERVER ?>" class="elife-button">&larr; <?php echo $button_backhome ?> </a></span>
    </div>
</div>
<div class="elife-section-footer"></div>



<script type="text/javascript">
			jQuery(document).ready(function($) {
				// We only want these styles applied when javascript is enabled
				$('div.navigation').css({'width' : '185px', 'float' : 'left'});
				$('div.content').css('display', 'block');

				// Initially set opacity on thumbs and add
				// additional styling for hover effect on thumbs
				var onMouseOutOpacity = 0.67;
				$('#thumbs ul.thumbs li').opacityrollover({
					mouseOutOpacity:   onMouseOutOpacity,
					mouseOverOpacity:  1.0,
					fadeSpeed:         'fast',
					exemptionSelector: '.selected'
				});
				
				// Initialize Advanced Galleriffic Gallery
				var gallery = $('#thumbs').galleriffic({
					delay:                     2500,
					numThumbs:                 8,
					preloadAhead:              10,
					enableTopPager:            true,
					enableBottomPager:         true,
					maxPagesToShow:            7,
					imageContainerSel:         '#slideshow',
					controlsContainerSel:      '#controls',
					captionContainerSel:       '#caption',
					loadingContainerSel:       '#loading',
					renderSSControls:          true,
					renderNavControls:         true,
					playLinkText:              'Play Slideshow',
					pauseLinkText:             'Pause Slideshow',
					prevLinkText:              '&lsaquo; Previous Photo',
					nextLinkText:              'Next Photo &rsaquo;',
					nextPageLinkText:          'Next &rsaquo;',
					prevPageLinkText:          '&lsaquo; Prev',
					enableHistory:             false,
					autoStart:                 false,
					syncTransitions:           true,
					defaultTransitionDuration: 900,
					onSlideChange:             function(prevIndex, nextIndex) {
						// 'this' refers to the gallery, which is an extension of $('#thumbs')
						this.find('ul.thumbs').children()
							.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
							.eq(nextIndex).fadeTo('fast', 1.0);
					},
					onPageTransitionOut:       function(callback) {
						this.fadeTo('fast', 0.0, callback);
					},
					onPageTransitionIn:        function() {
						this.fadeTo('fast', 1.0);
					}
				});
			});
		</script>