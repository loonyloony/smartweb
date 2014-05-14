<div class="tulapwrapper"></div>
<!--<div class="slogan_billboard elife-abs"><img src="<?php echo DIR_IMAGE?>billboard.png" /></div>-->
<div class="masksliderholder">
	<div class="slogan1 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan1.png" /></div>
    <div class="slogan2 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan2.png" /></div>
    <div class="slogan3 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan3.png" /></div>
    <div class="slogan4 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan4.png" /></div>
	<!--<div class="slogan1 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan1.png" /></div>
    <div class="slogan2 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan2.png" /></div>
    <div class="slogan3 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan3.png" /></div>
    <div class="slogan4 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan4.png" /></div>
    
    <div class="slogan_box1 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan_box2.png" /></div>    
    <div class="slogan_box2 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan_box1.png" /></div>
    <div class="slogan_box3 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan_box3.png" /></div>
    <div class="slogan_box4 elife-abs"><img src="<?php echo DIR_IMAGE?>slogan_box4.png" /></div>-->
    
    <!--<div class="slogan_box1_white elife-abs"><img src="<?php echo DIR_IMAGE?>slogan_box_white.png" /></div>
    <div class="slogan_box2_white elife-abs"><img src="<?php echo DIR_IMAGE?>slogan_box_white.png" /></div>
    <div class="slogan_box3_white elife-abs"><img src="<?php echo DIR_IMAGE?>slogan_box_white.png" /></div>
    <div class="slogan_box4_white elife-abs"><img src="<?php echo DIR_IMAGE?>slogan_box_white.png" /></div>-->
   
</div>


<script>
	
	$(document).ready(function(e) {
        $('.slogan1').animate
		(
			{opacity: 0},
			{duration:0,queue:false}
		)
		.delay(500)
		.animate({opacity:1},{duration:500})
		.delay(1000)
		.animate({opacity:0},{duration:500});
		
		$('.slogan2').animate
		(
			{opacity: 0},
			{duration:0,queue:false}
		)
		.delay(1000)
		.animate({opacity:1},{duration:500});
		
		$('.slogan3').animate
		(
			{opacity: 0},
			{duration:0,queue:false}
		)
		.delay(3000)
		.animate({opacity:1},{duration:300});
		
		$('.slogan4').animate
		(
			{opacity: 0},
			{duration:0,queue:false}
		)
		.delay(3000)
		.animate({opacity:1},{duration:300});
		
		
		
		/////////////
		//cron_mask_loader();
		
		
    });
	
	var mask_time = 0;
	function cron_mask_loader()
	{
		if(mask_time == 0)
		{
			mask_time = 1000;	
		}
		else
		{
			mask_time = mask_time;	
		}
		mask_loader(mask_time);
		setTimeout('cron_mask_loader()', 40000);
	}
	
	var billboard_time = 0;
	function mask_loader(vtime)
	{
		dtime = 3000;
		
		if(billboard_time <= 0)
		{
			billboard_time = vtime+34000;
		}else
		{
			billboard_time = vtime+30000;
		}
		
		$('.slogan_box1').animate
		(
			{opacity: 0},
			{duration:0,queue:false}
		)
		.delay(vtime)
		.animate({opacity:1},{duration:1000})
		.delay(dtime)
		.animate({opacity:0},{duration:1000});
		
		
		$('.slogan_box2').animate
		(
			{opacity: 0},
			{duration:0,queue:false}
		)
		.delay(vtime+500)
		.animate({opacity:1},{duration:1000})
		.delay(dtime)
		.animate({opacity:0},{duration:1000});
		
		
		$('.slogan_box3').animate
		(
			{opacity: 0},
			{duration:0,queue:false}
		)
		.delay(vtime+1000)
		.animate({opacity:1},{duration:1000})
		.delay(dtime)
		.animate({opacity:0},{duration:1000});
		
		
		$('.slogan_box4').animate
		(
			{opacity: 0},
			{duration:0,queue:false}
		)
		.delay(vtime+1500)
		.animate({opacity:1},{duration:1000})
		.delay(dtime)
		.animate({opacity:0},{duration:1000});
		
		$('.slogan_billboard').animate
		(
			{bottom:'-400px', opacity: 0},
			{duration:0,queue:false}
		)
		.delay(billboard_time)
		.animate({bottom:'100px', opacity:1},{duration:1000})
		.delay(dtime+5000)
		.animate({bottom:'-400px', opacity:0},{duration:1000});
	}
</script>


<!--
		#################################
			- FRESHLINE BANNER -
		#################################
		-->
			
		<div class="maskholder">
		
			<div class="bggradient"></div>
			<div class="glare"></div>
			
			
			<div class="banner-maskslider" style="margin-top:0px;">
				<ul>	
                	<!-- THE 1. SLIDE -->
					<li data-transition="fadeup" data-startalign="center,bottom" data-zoom="none" data-zoomfact="0" data-endAlign="center,top" data-panduration="8" data-colortransition="4">
                    	<!--<img alt="" src="<?php echo DIR_IMAGE?>homeslider/slides/image3.jpg" data-bw="<?php echo DIR_IMAGE?>homeslider/slides/image3_blur.jpg" data-thumb="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb1.jpg" data-thumb_bw="<?php echo DIR_IMAGE?>homeslider/thumbs/thumb1_blur.jpg" />-->
                        <img src="" />
																											
							<div class="creative_layer">
                            	<div class="caption_transparent nobg fadeup" style="top:100px;left:440px; z-index:200"><img src="<?php echo DIR_IMAGE?>slogan_box2.png"></div>
                                <div class="caption_transparent nobg fadeup" style="top:225px;left:314px; z-index:200"><img src="<?php echo DIR_IMAGE?>slogan_box1.png"></div>
                                <div class="caption_transparent nobg fadeup" style="top:225px;left:564px; z-index:200"><img src="<?php echo DIR_IMAGE?>slogan_box3.png"></div>
                                <div class="caption_transparent nobg fadeup" style="top:100px;left:690px; z-index:200"><img src="<?php echo DIR_IMAGE?>slogan_box4.png"></div>																								
							</div>
							
					</li>
					
					<!-- THE 3. SLIDE -->
					<li data-transition="fade" data-startalign="right,bottom" data-zoom="none" data-zoomfact="3" data-endAlign="left,center" data-panduration="8" data-colortransition="4">
                    	<img src="" />
																											
							<div  class="creative_layer">                            
								
							</div>
							
					</li>	
                    
                    <!-- THE 3. SLIDE -->
					<li data-transition="fade" data-startalign="right,bottom" data-zoom="none" data-zoomfact="3" data-endAlign="left,center" data-panduration="8" data-colortransition="4">
                    		<img src="" />
																											
							<div  class="creative_layer">                            
								
							</div>
							
					</li>
                    
                    			
					<!-- THE 4. SLIDE -->
					<li data-transition="fade" data-startalign="right,top" data-zoom="none" data-zoomfact="3" data-endAlign="center,bottom" data-panduration="8" data-colortransition="4">
                    
                    		<img src="" />
																											
							<div  class="creative_layer">                            
								
							</div>
							
					</li>
                    
                    <!-- THE 4. SLIDE -->
					<li data-transition="fade" data-startalign="right,top" data-zoom="none" data-zoomfact="3" data-endAlign="center,bottom" data-panduration="8" data-colortransition="4">
                    
                    		<img src="" />
																											
							<div  class="creative_layer">                            
								<div class="caption_transparent nobg bottomup" style="right:0px;bottom:0px; z-index:200">
                                <img src="<?php echo DIR_IMAGE?>billboard.png"></div>
							</div>
							
					</li>

						


									

				</ul>
			</div>		<!-- THE END OF THE BANNER EXMAPLE -->
			
		</div>	
		
			
	
			

			<!--
			##############################
			 - ACTIVATE THE BANNER HERE -
			##############################
			-->
			<script type="text/javascript">
				var maskslider_width = $("#maskslider").width();
				if(maskslider_width < 800) maskslider_width = 800;
				
				var thumbxoffet = (maskslider_width/2) - 120;	
				
				var maskslider_height = $("#maskslider").height();
				if(maskslider_height < 600) maskslider_height = 600;	
				
				maskslider_width =  960;
				maskslider_height =  maskslider_height - 90;
				//$(".bannerholder .glare").height(maskslider_height);
				//$(".bannerholder .glare").width(maskslider_width);
				
				
				$(document).ready(function() {
					/*$.noConflict();	*/	
					
					createmaskslider();
						
					
					
						
			});
			
			function createmaskslider()
			{
				jQuery('.banner-maskslider').delay(5000).kenburn(
				{										
					width: maskslider_width,
					height: maskslider_height,
					
					thumbWidth:120,
					thumbHeight:70,
					thumbAmount:6,							
					thumbSpaces:0,
					thumbPadding:9,
					thumbStyle:"none",
					bulletXOffset:thumbxoffet,
					bulletYOffset:-110,
					
					repairChromeBug:"on",
												
					shadow:'false',
					timerShow:"off",
																			
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
			}
			</script>