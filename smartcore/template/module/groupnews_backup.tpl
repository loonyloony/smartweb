<div id="groupnews-content">	
    <div class="groupnews-title"><?php echo $sitemap ?></div>
    <div class="groupnews-detail">
    	<!-- hot news -->
        <div class="groupnews-hot-news">
        	<div class="item-hot-news">
            	<div class="above-left-hot-news elife-left">
                    <a href="<?php echo $hotnews[0]['link'] ?>">
                        <img src="images/fixsize-368x146/<?php echo $hotnews[0]['imagepath'] ?>" />
                    </a>
                    <div class="above-left-title-hot-news">
                    	<a href="<?php echo $hotnews[0]['link'] ?>"><?php echo $hotnews[0]['title'] ?></a>
                    </div>
                </div>
                <div class="above-right-hot-news elife-right">
                	<a href="<?php echo $hotnews[1]['link'] ?>">
                        <img src="images/fixsize-271x146/<?php echo $hotnews[1]['imagepath'] ?>" />
                    </a>
                    <div class="above-right-title-hot-news">
                    	<a href="<?php echo $hotnews[1]['link'] ?>"><?php echo $hotnews[1]['title'] ?></a>
                    </div>
                </div>
                <div class="clearer"></div>
            </div>
            
            <div class="item-hot-news">
            	<?php for($i=2; $i<5; $i++){ ?>
                <div class="below-hot-news elife-left">
                    <a href="<?php echo $hotnews[$i]['link'] ?>">
                        <img src="images/fixsize-213x146/<?php echo $hotnews[$i]['imagepath'] ?>" />
                    </a>
                    <div class="title-hot-news">
                    	<a href="<?php echo $hotnews[$i]['link'] ?>"><?php echo $hotnews[$i]['title'] ?></a>
                    </div>
                </div>
                <?php } ?>
                <div class="clearer"></div>
            </div>
        </div>
    
    	<!-- 2 above large news -->
        <?php for($i=0; $i < 2; $i++) { ?>
        <div class="large-news">
        	<div class="title-large-news"><?php echo $medias[$i]['sitemapname']  ?></div>
            <div class="content-large-news">
            	<div class="content-left-large-news elife-left">
                	<div class="image-content-left-large-news elife-left">
                    	<?php if($medias[$i]['news'][0]['imagepath'] != ""){ ?>
                        <a href="<?php echo $medias[$i]['news'][0]['link'] ?>">
                    		<img src="images/resizepng-160x0/<?php echo $medias[$i]['news'][0]['imagepath'] ?>" />
						</a>                            
                        <?php } ?>
                    </div>
                    <div class="content-content-left-large-news elife-left">
                    	<div class="title-content-content-left-large-news">
                        	<a href="<?php echo $medias[$i]['news'][0]['link'] ?>"><?php echo $medias[$i]['news'][0]['title'] ?></a>
                        </div>
                        <div class="content-content-content-left-large-news">
                        	<?php echo htmlspecialchars_decode($medias[$i]['news'][0]['summary']) ?>
                        </div>
                    </div>
                    <div class="clearer"></div>
                </div>
                
                <div class="content-right-large-news elife-right">
                	<?php for($j=1; $j<5; $j++){ if($medias[$i]['news'][$j]['title'] != ''){?>
                    	
                    	<div class="title-right-large-news">
                        	<a href="<?php echo $medias[$i]['news'][$j]['link'] ?>"><?php echo $medias[$i]['news'][$j]['title'] ?></a>
                        </div>
                    <?php } } ?>
                </div>
                
                <div class="clearer"></div>
            </div>
        </div>
        <?php } ?>
        
        <!-- small news -->
        <?php for($i=2; $i < count($medias) - 2;) { ?>
        <div class="small-news">
        	<!-- left small news -->
            <div class="left-small-news elife-left">
            	<div class="title-large-news"><?php echo $medias[$i]['sitemapname']  ?></div>
            	<!-- main small news -->
            	<div class="main-small-news">
                    <div class="content-content-left-small-news elife-left">
                    	<?php if($medias[$i]['news'][0]['imagepath'] != ""){ ?>
                        <a href="<?php echo $medias[$i]['news'][0]['link'] ?>">
                    		<img src="images/resizepng-160x0/<?php echo $medias[$i]['news'][0]['imagepath'] ?>" class="elife-left" />
						</a>                            
                        <?php } ?>
                    	<div class="title-content-content-left-large-news">
                        	<a href="<?php echo $medias[$i]['news'][0]['link'] ?>"><?php echo $medias[$i]['news'][0]['title'] ?></a>
                        </div>
                        <div class="content-content-content-left-large-news">
                        	<?php echo htmlspecialchars_decode($medias[$i]['news'][0]['summary']) ?>
                        </div>
                    </div>
                    <div class="clearer"></div>
                </div>
                
                <!-- sub small news -->
                <div class="sub-small-news">
                	<?php for($j=1; $j<5; $j++){ if($medias[$i]['news'][$j]['title'] != ''){?>
                    	<div class="title-right-large-news">
                        	<a href="<?php echo $medias[$i]['news'][$j]['link'] ?>"><?php echo $medias[$i]['news'][$j]['title'] ?></a>
                        </div>
                    <?php } } ?>
                </div>
            	
            </div>
            
            
            <!-- right small news -->
            <div class="right-small-news elife-right">
            	<div class="title-large-news"><?php echo $medias[$i + 1]['sitemapname']  ?></div>
                <div class="main-small-news">
                    
                    <div class="content-content-left-small-news">
                    	
                        <?php if($medias[$i + 1]['news'][0]['imagepath'] != ""){ ?>
                        <a href="<?php echo $medias[$i + 1]['news'][0]['link'] ?>">
                    		<img src="images/resizepng-160x0/<?php echo $medias[$i + 1]['news'][0]['imagepath'] ?>" class="elife-left"/>
						</a>                            
                        <?php } ?>
                    	<div class="title-content-content-left-large-news">
                        	<a href="<?php echo $medias[$i + 1]['news'][0]['link'] ?>"><?php echo $medias[$i + 1]['news'][0]['title'] ?></a>
                        </div>
                        <div class="content-content-content-left-large-news">
                        	<?php echo htmlspecialchars_decode($medias[$i + 1]['news'][0]['summary']) ?>
                        </div>
                    </div>
                    <div class="clearer"></div>
                </div>
                
                <!-- sub small news -->
                <div class="sub-small-news">
                	<?php for($j=1; $j<5; $j++){ if($medias[$i + 1]['news'][$j]['title'] != ''){?>
                    	<div class="title-right-large-news">
                        	<a href="<?php echo $medias[$i + 1]['news'][$j]['link'] ?>"><?php echo $medias[$i + 1]['news'][$j]['title'] ?></a>
                        </div>
                    <?php } } ?>
                </div>
            
            </div>
            <div class="clearer"></div>
        </div>
        <?php $i=$i+2; } ?>
        
        <!-- bottom news -->
        <?php for($i= count($medias) - 2; $i < count($medias); $i++) { ?>
        	<div class="bottom-news">
        	<div class="title-large-news"><?php echo $medias[$i]['sitemapname']  ?></div>
            <div class="content-bottom-news">
            	<div class="content-bottom-news">
                	<div class="image-content-left-large-news elife-left">
                    	<?php if($medias[$i]['news'][0]['imagepath'] != ""){ ?>
                        <a href="<?php echo $medias[$i]['news'][0]['link'] ?>">
                    		<img src="images/resizepng-160x0/<?php echo $medias[$i]['news'][0]['imagepath'] ?>" />
						</a>                            
                        <?php } ?>
                    </div>
                    <div class="content-content-bottom-news elife-left">
                    	<div class="title-content-content-left-large-news">
                        	<a href="<?php echo $medias[$i]['news'][0]['link'] ?>"><?php echo $medias[$i]['news'][0]['title'] ?></a>
                        </div>
                        <div class="content-content-content-left-large-news">
                        	<?php echo htmlspecialchars_decode($medias[$i]['news'][0]['summary']) ?>
                        </div>
                    </div>
                    <div class="clearer"></div>
                    </div>
                    
                    <?php for($j=1; $j<5;){ ?>
                    <div class="sub-bottom-news">
                        <div class="left-sub-bottom-news elife-left">
                            <div class="main-sub-bottom-news">
                                <div class="image-sub-bottom-news elife-left">
                                	<?php if($medias[$i]['news'][$j]['imagepath'] != ""){ ?>
                                    <a href="<?php echo $medias[$i]['news'][$j]['link'] ?>">
                                        <img src="images/resizepng-100x0/<?php echo $medias[$i]['news'][$j]['imagepath'] ?>" />
                                    </a>
                                    <?php } ?>
                                </div>
                                
                                <div class="title-sub-bottom-news elife-left">
                                    <a href="<?php echo $medias[$i]['news'][$j]['link'] ?>"><?php echo $medias[$i]['news'][$j]['title'] ?></a>
                                </div>
                                <div class="clearer"></div>
                            </div>
                        </div>
                        
                        <div class="right-sub-bottom-news elife-right">
                        	<div class="main-sub-bottom-news">
                            	<div class="image-sub-bottom-news elife-left">
                                	<?php if($medias[$i]['news'][$j + 1]['imagepath'] != ""){ ?>
                                	<a href="<?php echo $medias[$i]['news'][$j + 1]['link'] ?>">
                                    	<img src="images/resizepng-100x0/<?php echo $medias[$i]['news'][$j + 1]['imagepath'] ?>" />
                                    </a>
                                    <?php } ?>
                                </div>
                                <div class="title-sub-bottom-news elife-left">
                                    <a href="<?php echo $medias[$i]['news'][$j + 1]['link'] ?>"><?php echo $medias[$i]['news'][$j + 1]['title'] ?></a>
                                </div>
                                <div class="clearer"></div>
                            </div>
                        </div>
                        
                        <div class="clearer"></div>
                    </div>
                    <?php $j=$j+2;} ?>
                    
                    
                    <div class="clearer"></div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>

<script language="javascript">
	$(document).ready(function(e) {
		$(".below-hot-news").hover(function(){
			$(this).children(".title-hot-news").slideToggle('fast');
		});
		
		$(".above-left-hot-news").hover(function(){
			$(this).children(".above-left-title-hot-news").slideToggle('fast');
		});
		
		$(".above-right-hot-news").hover(function(){
			$(this).children(".above-right-title-hot-news").slideToggle('fast');
		});
    });
</script>