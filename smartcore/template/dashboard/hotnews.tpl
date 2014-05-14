<div class="elife-new-list">
	<div class="elife-wrapper">
    	<ul id="product-row-0" class="product-row">
            <!--Product-->
            <?php 
            	if(count($news) > 0) { for($i=0;$i<count($news);$i++) { ?>
				<?php if($i==0) {?>
					<li class="special">
						<?php if($news[$i]['imagepath']=='') { ?>
						<img src="images/fixsize-700x360/upload/default_img_special.png" alt="<?php echo $item['title'] ?>" />
						<?php }else{?>
						<img src="images/fixsize-700x360/<?php echo $news[$i]['imagepath'] ?>" alt="<?php echo $item['title'] ?>" />
						<?php } ?>
						<div id="title-special"><a href="<?php echo HTTP_SERVER.$news[$i]['alias'] ?>.html" ><?php echo $news[$i]['title']?></a></div>						
					</li>
				<?php } else{ ?>				
						<li class="normal">
							<?php if($news[$i]['imagepath']=='') { ?>
							<img class="elife-left" src="images/fixsize-178x120/upload/default_img_normal.png" alt="<?php echo $item['title'] ?>" />
							<?php }else{?>
							<img class="elife-left" src="images/fixsize-178x120/<?php echo $news[$i]['imagepath'] ?>" alt="<?php echo $item['title'] ?>" />
							<?php } ?>
							<div class="title-normal"><a href="<?php echo HTTP_SERVER.$news[$i]['alias'] ?>.html"><?php echo $news[$i]['title']?></a></div>	
							<div class="summary-normal"><?php echo $this->string->getTextLength( html_entity_decode($news[$i]['summary']),0,50).'...' ?></div>							
							<div class="clearer"></div>
						</li>					
				<?php } ?>
            <?php } } ?>
        </ul>
        <div class="clearer"></div>
	</div>
</div>