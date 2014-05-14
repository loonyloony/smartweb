<?php
	$this->document->addScript("jquery.themepunch.plugins.min.js");
	$this->document->addScript("jquery.themepunch.kenburn.min.js");
	$this->document->addStyle("elife_homeslider.css");
?>
		<!--
		#################################
			- FRESHLINE BANNER -
		#################################
		-->
			
		<div class="bannerholder">
		
			<div class="bggradient1"></div>
			<div class="glare1"></div>
			
			
			<div id="banner-homeslider" style="margin-top:0px;">
				
				<ul>								
                    <!-- THE 1. SLIDE -->
                    <?php if($this->smartweb->sitemapid == "11") {?>
					<li data-transition="none" data-startalign="center,top" data-zoom="in" data-zoomfact="3" data-endAlign="center,bottom" data-panduration="8" data-colortransition="4">
                    	<img width="740" alt="" src="<?php echo DIR_IMAGE?>homeslider/slides/image3.jpg" data-bw="<?php echo DIR_IMAGE?>homeslider/slides/image3_blur.jpg" data-thumb="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb1.jpg" data-thumb_bw="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb1_blur.jpg">
																											
							<div  class="creative_layer">
								<div class="caption_transparent nobg fadeup" style="bottom:100px;right:100px;"><img width="500px" src="<?php echo DIR_IMAGE?>homeslider/slides/slogan.png"></div>																									
							</div>
							
					</li>
                    <?php } ?>
					
					<!-- THE 3. GIA DINH -->
                    <?php if($this->smartweb->sitemapid == "14") {?>
					<li data-transition="none" data-startalign="left,bottom" data-zoom="none" data-zoomfact="3" data-endAlign="center,center" data-panduration="8" data-colortransition="4"><img alt="" src="<?php echo DIR_IMAGE?>homeslider/slides/image6.jpg" data-bw="<?php echo DIR_IMAGE?>homeslider/slides/image6_blur.jpg" data-thumb="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb3.jpg" data-thumb_bw="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb3_blur.jpg">
																											
							<div  class="creative_layer">
								<div class="caption_black nobg slideleft" style="bottom:0px;left:-10px;">
                                	<a style="display:block;" href="index.php">
                                	<img width="400px" src="<?php echo DIR_IMAGE?>homeslider/slides/3dgiadinh.png" />
                                    </a>
                                </div>																
								<div class="caption_black nobg faderight" style="top:10px;left:100px"><img width="300px" src="<?php echo DIR_IMAGE?>homeslider/slides/car.png" /></div>	
							</div>
							
					</li>	
                    <?php } ?>				
					<!-- THE 3. SLIDE THUONG MAI -->
                    <?php if($this->smartweb->sitemapid == "15") {?>
					<li data-transition="fade" data-startalign="right,center" data-zoom="in" data-zoomfact="1.6" data-endAlign="left,center" data-panduration="11" data-colortransition="4"><img alt="" src="<?php echo DIR_IMAGE?>homeslider/slides/image7_blur.jpg" data-bw="<?php echo DIR_IMAGE?>homeslider/slides/image7.jpg" data-thumb="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb4.jpg" data-thumb_bw="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb4_blur.jpg">
																											
								<div  class="creative_layer">
                                <div class="caption_black nobg flyleft" style="bottom:0px;right:330px"><img src="<?php echo DIR_IMAGE?>homeslider/slides/avatarobject1.png" /></div>
                                <div class="caption_black nobg flyleft" style="top:-20px;right:-200px"><img src="<?php echo DIR_IMAGE?>homeslider/slides/avatarobject2.png" /></div>
                                <div class="caption_black nobg flyleft" style="top:-100px;right:0px"><img src="<?php echo DIR_IMAGE?>homeslider/slides/avatar3d.png" /></div>
                                <div class="caption_black nobg fadeup" style="bottom:-100px;right:0px"><img src="<?php echo DIR_IMAGE?>homeslider/slides/avatargirl.png" /></div>
								<div class="caption_black nobg fadeup" style="bottom:0px;left:0px;"><img width="300px" src="<?php echo DIR_IMAGE?>homeslider/slides/3dthuongmai.png" /></div>										
							</div>
							
					</li>
					<?php } ?>
					<!-- THE 6. SLIDE -->
                    <?php if($this->smartweb->sitemapid == "16") {?>
					<li data-transition="slide" data-startalign="left,center" data-zoom="in" data-zoomfact="2" data-endAlign="right,center" data-panduration="15" data-colortransition="4"><img alt="" src="<?php echo DIR_IMAGE?>homeslider/slides/image8.jpg" data-bw="<?php echo DIR_IMAGE?>homeslider/slides/image8_blur.jpg" data-thumb="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb6.jpg" data-thumb_bw="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb6_blur.jpg">
																											
							<div  class="creative_layer">		
								<div class="caption_den nobg wiperight" style="top:20px;right:300px; color:black"><img width="300px" src="<?php echo DIR_IMAGE?>homeslider/slides/3dgiaoduc.png" /></div>		
							</div>
							
					</li>	
                    <?php } ?>
                    <?php if($this->smartweb->sitemapid == "33") {?>
					<!-- THE 3. SLIDE HOLOSCREEN -->
					<li data-transition="fade" data-startalign="right,center" data-zoom="in" data-zoomfact="1.6" data-endAlign="left,center" data-panduration="11" data-colortransition="4"><img alt="" src="<?php echo DIR_IMAGE?>homeslider/slides/image9_blur.jpg" data-bw="<?php echo DIR_IMAGE?>homeslider/slides/image9.jpg" data-thumb="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb4.jpg" data-thumb_bw="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb4_blur.jpg">
																											
								<div  class="creative_layer">
                                <div class="caption_black nobg fadeleft" style="bottom:-20px;right:0px"><img width="100px" src="<?php echo DIR_IMAGE?>homeslider/slides/holoscreen_projector.png" /></div>
                                <div class="caption_black nobg fadeslow" style="bottom:100px;right:80px"><img width="400px" src="<?php echo DIR_IMAGE?>homeslider/slides/holoscreen.png" /></div>
								<div class="caption_black nobg fadeup" style="bottom:0px;left:-10px;"><img width="400px" src="<?php echo DIR_IMAGE?>homeslider/slides/holoscreen_title.png" /></div>										
							</div>
							
					</li>
					<?php } ?>
						


									

				</ul>
			</div>		<!-- THE END OF THE BANNER EXMAPLE -->
			
		</div>	
		
			
	
			

			<!--
			##############################
			 - ACTIVATE THE BANNER HERE -
			##############################
			-->
			<script type="text/javascript">
				var homeslider_width = $(".bannerholder").width();
				if(homeslider_width < 800) homeslider_width = 800;
				var thumbxoffet = (homeslider_width/2) - 120;
				 				 				 
				$(document).ready(function() {
					$.noConflict();						
					jQuery('#banner-homeslider').kenburn(
						{										
							width: 740,
							height: 300,
							
							thumbWidth:120,
							thumbHeight:70,
							thumbAmount:6,							
							thumbSpaces:0,
							thumbPadding:9,
							thumbStyle:"none",
							bulletXOffset:thumbxoffet,
							bulletYOffset:-96,
							
							repairChromeBug:"on",
														
							shadow:'false',
							timerShow:"on",
																					
							touchenabled:'on',
							pauseOnRollOverThumbs:'off',
							pauseOnRollOverMain:'off',
							preloadedSlides:10,							
							
							timer:10,
														
							
							////////////////////////////////////////////////////////////////////////////////////////////////////////////////
							//												 Google Fonts !!											 //
							// local GoogleFont JS from your server: http://www.yourdomain.com/kb-plugin/js/jquery.googlefonts.js		 //
							// GoogleFonts from Original Source: http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js or https:... // 
							//																											//
							/////////////////////////////////////////////////////////////////////////////////////////////////////////////
							googleFonts:'PT+Sans+Narrow:400,700',
							googleFontJS:'<?php echo DIR_JS?>jquery.googlefonts.js'
						});
						
					jQuery('.tnone').click(function() {
						jQuery('.tbull').removeClass('selected');
						jQuery('.tthumb').removeClass('selected');
						jQuery('.tnone').addClass('selected');
						jQuery('.kenburn_thumb_container').css({'visibility':'hidden'});
						jQuery('.thumbbuttons').css({'visibility':'hidden'});
						jQuery('.bannershadow').cssAnimate({'margin-top':"100px"});
					});
					
					jQuery('.tthumb').click(function() {
						jQuery('.tbull').removeClass('selected');
						jQuery('.tthumb').addClass('selected');
						jQuery('.tnone').removeClass('selected');
						jQuery('.kenburn_thumb_container').css({'visibility':'visible'});
						jQuery('.thumbbuttons').css({'visibility':'hidden'});
						jQuery('.bannershadow').cssAnimate({'margin-top':"150px"});
					});
					
					jQuery('.tbull').click(function() {
						jQuery('.tbull').addClass('selected');
						jQuery('.tthumb').removeClass('selected');
						jQuery('.tnone').removeClass('selected');
						jQuery('.kenburn_thumb_container').css({'visibility':'hidden'});
						jQuery('.thumbbuttons').css({'visibility':'visible'});
						jQuery('.thumbbuttons').show(0);
						jQuery('.bannershadow').cssAnimate({'margin-top':"100px"});
					});
					
					
						
					jQuery('.tbull').click();
					jQuery('.thumbbuttons').hide(0);
					
						
			});
			</script>