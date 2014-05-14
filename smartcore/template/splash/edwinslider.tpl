<?php
	$this->document->addStyle("edwinslider.css");
    $this->document->addScript("jquery.themepunch.plugins.min.js");
	$this->document->addScript("jquery.edwinburn.js");
?>
		<!--
		#################################
			- FRESHLINE edwin -
		#################################
		-->
			
		<div class="edwinholder">
		
			<div class="bggradient"></div>
			<div class="glare"></div>
			
			
			<div id="edwin-homeslider" class="edwinburn dark" style="margin-top:0px;">
				<ul>								
                    <!-- THE 1. SLIDE -->
					<li data-transition="fadeup" data-startalign="center,top" data-zoom="in" data-zoomfact="2" data-endalign="center,bottom" data-panduration="8" data-colortransition="4">
                    	<img class="main" src="<?php echo DIR_IMAGE?>bg1.jpg" />
                        <img class="blur" src="<?php echo DIR_IMAGE?>bg1.jpg" />
																											
							<div  class="creative_layer">
                            	
								<div class="caption_transparent nobg fadeup" style="top:280px;left:250px; z-index:200"><img src="<?php echo DIR_IMAGE?>slogan01.png"></div>	
                                <div class="caption_transparent nobg fadeup" style="top:360px;left:350px; z-index:200"><img src="<?php echo DIR_IMAGE?>slogan02.png"></div>																									
							</div>
							
					</li>
					
					 <!-- THE 2. SLIDE -->
					<li data-transition="fadeup" data-startalign="center,bottom" data-zoom="in" data-zoomfact="1" data-endalign="center,top" data-panduration="6" data-colortransition="4">
                    	<img class="main" src="<?php echo DIR_IMAGE?>bg2.jpg" />
                        <img class="blur" src="<?php echo DIR_IMAGE?>bg2.jpg" />
																									
							
					</li>
                    					
					 <!-- THE 3. SLIDE -->
					<li data-transition="fadeup" data-startalign="center,right" data-zoom="in" data-zoomfact="1" data-endalign="center,center" data-panduration="8" data-colortransition="4">
                    	<img class="main" src="<?php echo DIR_IMAGE?>bg3.jpg" />
                        <img class="blur" src="<?php echo DIR_IMAGE?>bg3.jpg" />
																											
							<div  class="creative_layer">
                            	
								<div class="caption_transparent nobg fadeup" style="bottom:200px;left:250px; z-index:200"><img src="<?php echo DIR_IMAGE?>slogan04.png"></div>																									
							</div>
							
					</li>
					
					 <!-- THE 4. SLIDE -->
					<li data-transition="fadeup" data-startalign="center,top" data-zoom="in" data-zoomfact="2" data-endalign="center,bottom" data-panduration="8" data-colortransition="4">
                    	<img class="main" src="<?php echo DIR_IMAGE?>bg4.jpg" />
                        <img class="blur" src="<?php echo DIR_IMAGE?>bg4.jpg" />
																											
							<div  class="creative_layer">
                            	
								<div class="caption_transparent nobg fadeup" style="top:280px;left:250px; z-index:200"><img src="<?php echo DIR_IMAGE?>slogan03.png"></div>	
																								
							</div>
							
					</li>	
                    
					
						


									

				</ul>
			</div>		<!-- THE END OF THE edwin EXMAPLE -->
			
		</div>	
		
			
	
			

			<!--
			##############################
			 - ACTIVATE THE edwin HERE -
			##############################
			-->
			<script type="text/javascript">
				top_container = $(".edwinholder").parent();
				var homeslider_width = top_container.width();
				if(homeslider_width < 800) homeslider_width = 800;
				
				var thumbxoffet = (homeslider_width/2) - 120;	
				
				var homeslider_height = top_container.height();
				if(homeslider_height < 600) homeslider_height = 600;	
				
				//$(".edwinholder .glare").height(homeslider_height);
				//$(".edwinholder .glare").width(homeslider_width);
				
				
				$(document).ready(function() {
					//$.noConflict();		
					
					createhomeslider();
						
			});
			
			function createhomeslider()
			{
				jQuery('#edwin-homeslider').edwinburn(
				{										
					width: homeslider_width,
					height: homeslider_height,
					
					effectStyle: "kenburn",
					
					thumbWidth:120,
					thumbHeight:70,
					thumbAmount:6,							
					thumbSpaces:0,
					thumbPadding:9,
					thumbStyle:"bullet",
					bulletXOffset:thumbxoffet,
					bulletYOffset:-110,
					
					repairChromeBug:"off",
												
					shadow:'false',
					timerShow:"on",
																			
					touchenabled:'off',
					pauseOnRollOverThumbs:'off',
					pauseOnRollOverMain:'off',
					preloadedSlides:10,							
					
					timer:6
												
					
					////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					//												 Google Fonts !!											 //
					// local GoogleFont JS from your server: http://www.yourdomain.com/kb-plugin/js/jquery.googlefonts.js		 //
					// GoogleFonts from Original Source: http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js or https:... // 
					//																											//
					/////////////////////////////////////////////////////////////////////////////////////////////////////////////
				});
			}
			</script>