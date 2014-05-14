<?php
	$this->document->addStyle("elife_gallery.css");
	$this->document->addScript("jquery.galleriffic.js");
	$this->document->addScript("jquery.opacityrollover.js");
    $this->document->addScript("jquery.history.js");
?>

<div class="elife-section-title"><h1><a><?php echo $media['title'] ?></a></h1></div>
<div class="seo_content" ><?php echo htmlspecialchars_decode($media['seo_content']) ?></div>
<div class="elife-section-content">
    <div>
        <?php echo htmlspecialchars_decode($media['description']) ?>
    </div>
    <div class="elife-post-author"><?php echo $media['author'] ?></a></div>
    <div class="elife-post-source"><?php echo $media['source'] ?></a></div>
    
    <!-- Start Advanced Gallery Html Containers -->
    <div id="gallery" class="content">
        <div id="controls" class="controls"></div>
        <div class="slideshow-container">
            <div id="loading" class="loader"></div>
            <div id="slideshow" class="slideshow"></div>
            <div id="caption" class="caption-container"></div>
        </div>
        <div id="captionToggle" style="display:none">
            <a href="#toggleCaption" class="off" title="Show Caption"><?php echo $text_showcaption ?></a>
        </div>
    </div>
    
    <div id="thumbs" class="navigation">
        <ul class="thumbs noscript">
        	<?php 
            if(isset($files)){ 
                foreach($files as $item) 
                {
            ?>
                <li>
                    <a class="thumb" name="leaf" href="images/resizepng-560x300/<?php echo $item['filepath']?>" title="<?php echo $item['title']?>">
                        <img src="images/fixsize-75x75/<?php echo $item['filepath'] ?>" alt="<?php echo $item['title']?>" />
                    </a>
                    <div class="caption">
                        <div class="download">
                            <a target="new" href="images/root/<?php echo $item['filepath']?>"><?php echo $text_downoriginal ?></a>
                        </div>
                        <div class="image-title"><?php echo $item['title']?></div>
                        <!--<div class="image-desc">Description</div>-->
                    </div>
                </li>
            <?php 	
                } 
            }
            ?>
        </ul>
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
		$('div.navigation').css({'width' : '300px', 'float' : 'left'});
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

		// Enable toggling of the caption
		var captionOpacity = 0.0;
		$('#captionToggle a').click(function(e) {
			var link = $(this);
			
			var isOff = link.hasClass('off');
			var removeClass = isOff ? 'off' : 'on';
			var addClass = isOff ? 'on' : 'off';
			var linkText = isOff ? 'Hide Caption' : 'Show Caption';
			captionOpacity = isOff ? 0.7 : 0.0;

			link.removeClass(removeClass).addClass(addClass).text(linkText).attr('title', linkText);
			$('#caption span.image-caption').fadeTo(1000, captionOpacity);
			
			e.preventDefault();
		});
		
		// Initialize Advanced Galleriffic Gallery
		var gallery = $('#thumbs').galleriffic({
			delay:                     2500,
			numThumbs:                 9,
			preloadAhead:              20,
			enableTopPager:            true,
			enableBottomPager:         false,
			maxPagesToShow:            99,
			imageContainerSel:         '#slideshow',
			controlsContainerSel:      '#controls',
			captionContainerSel:       '#caption',
			loadingContainerSel:       '#loading',
			renderSSControls:          false,
			renderNavControls:         false,
			playLinkText:              'Play Slideshow',
			pauseLinkText:             'Pause Slideshow',
			prevLinkText:              '&lsaquo; Previous Photo',
			nextLinkText:              'Next Photo &rsaquo;',
			nextPageLinkText:          'Next &rsaquo;',
			prevPageLinkText:          '&lsaquo; Prev',
			enableHistory:             false,
			autoStart:                 false,
			syncTransitions:           false,
			defaultTransitionDuration: 900,
			onSlideChange:             function(prevIndex, nextIndex) {
				// 'this' refers to the gallery, which is an extension of $('#thumbs')
				this.find('ul.thumbs').children()
					.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
					.eq(nextIndex).fadeTo('fast', 1.0);
			},
			onTransitionOut:           function(slide, caption, isSync, callback) {
				slide.fadeTo(this.getDefaultTransitionDuration(isSync), 0.0, callback);
				caption.fadeTo(this.getDefaultTransitionDuration(isSync), 0.0);
			},
			onTransitionIn:            function(slide, caption, isSync) {
				var duration = this.getDefaultTransitionDuration(isSync);
				slide.fadeTo(duration, 1.0);
				
				// Position the caption at the bottom of the image and set its opacity
				var slideImage = slide.find('img');
				caption.width(slideImage.width())
					.css({
						'bottom' : Math.floor((slide.height() - slideImage.outerHeight()) / 2),
						'left' : Math.floor((slide.width() - slideImage.width()) / 2) + slideImage.outerWidth() - slideImage.width()
					})
					.fadeTo(duration, captionOpacity);
			},
			onPageTransitionOut:       function(callback) {
				this.fadeTo('fast', 0.0, callback);
			},
			onPageTransitionIn:        function() {
				this.fadeTo('fast', 1.0);
			},
			onImageAdded:              function(imageData, $li) {
				$li.opacityrollover({
					mouseOutOpacity:   onMouseOutOpacity,
					mouseOverOpacity:  1.0,
					fadeSpeed:         'fast',
					exemptionSelector: '.selected'
				});
			}
		});

		/**** Functions to support integration of galleriffic with the jquery.history plugin ****/

		// PageLoad function
		// This function is called when:
		// 1. after calling $.historyInit();
		// 2. after calling $.historyLoad();
		// 3. after pushing "Go Back" button of a browser
		function pageload(hash) {
			// alert("pageload: " + hash);
			// hash doesn't contain the first # character.
			if(hash) {
				$.galleriffic.gotoImage(hash);
			} else {
				gallery.gotoIndex(0);
			}
		}

		// Initialize history plugin.
		// The callback is called at once by present location.hash. 
		//$.historyInit(pageload, "advanced.html");

		// set onlick event for buttons using the jQuery 1.3 live method
		$("a[rel='history']").live('click', function() {
			if (e.button != 0) return true;

			var hash = this.href;
			hash = hash.replace(/^.*#/, '');

			// moves to a new page. 
			// pageload is called at once. 
			// hash don't contain "#", "?"
			$.historyLoad(hash);

			return false;
		});

		/****************************************************************************************/

		
	});
</script>