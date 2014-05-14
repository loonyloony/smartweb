<div id="sub-title">
	<div class="elife-wrapper">
    	<?php echo $text_mostview ?>
    </div>
 </div>
    
<div class="content-detail">
    <div class="main-content-detail">
    	<div class="viewmost-image">
        	 <a href="<?php echo $news[0]['link'] ?>">
             	<img src="images/resizepng-233x0/<?php echo $news[0]['imagepath'] ?>" />
             </a>
        </div>
        <div class="viewmost-content">
        	<div class="viewmost-content-title">
            	<a href="<?php echo $news[0]['link'] ?>"><?php echo $news[0]['title'] ?></a>
            </div>
            <div class="viewmost-content-summary">
            	<?php echo htmlspecialchars_decode($news[0]['summary']) ?>
            </div>
            <div class="clearer"></div>
        </div>
    </div>
    
    <?php for($i=1; $i < 8; $i++) { ?>
    <div class="child-viewmost">
        <a href="<?php echo $news[$i]['link'] ?>"><?php echo $news[$i]['title'] ?></a>
    </div>
    <?php } ?>
</div>
<div class="clearer"></div>