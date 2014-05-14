<?php if(count($banner) > 0){ ?>
<div class="promotionbox-section">
	<div class="promotionbox-title"><?php echo $title_promotionnews ?></div>
    <div class="promotionbox-content">    	
        <div class="slidespromotionbox">
            <div class="slides_container">
                <?php if(count($banner) > 0){ foreach($banner as $item) { ?>
                <div>
                    <a href="<?php echo $item['link']?>"><img width="240px" height="160px" src="images/root/<?php echo $item['image'] ?>" alt="banner" /></a>
                </div>
                <?php } } ?>
            </div>
        </div>
	</div>
</div>
<div class="promotionbox-footer open"></div>

<script>
	$(function(){
        $('.slidespromotionbox').slides({
			width: 240,
			height: 161,
			orientation: 'horizontal', 
			easing: "easeOutCirc",
            generateNextPrev: false,
            play: 10000,
            autoHeight: true
        });
    });
	$(document).ready(function(e) {
		$('#splash_promotionbox').animate
		(
			{top: '-60px', opacity: 0},
			{duration:0,queue:false}
		)
		.delay(1000)
		.animate({top:'0px', opacity:1});
		
		$(".promotionbox-content").delay(20000).slideToggle("slow", function(){
				if($(".promotionbox-content").is(':visible') == true)
				{
					$(".promotionbox-footer").removeClass("close").addClass("open");
				}
				else
				{
					$(".promotionbox-footer").removeClass("open").addClass("close");	
				}
		}); 
		
        $(".promotionbox-footer").click(function(){ 
			$(".promotionbox-content").slideToggle("fast", function(){
				if($(this).is(':visible') == true)
				{
					$(".promotionbox-footer").removeClass("close").addClass("open");
				}
				else
				{
					$(".promotionbox-footer").removeClass("open").addClass("close");	
				}
			}); 
		}); 
    });
</script>
<?php }?>