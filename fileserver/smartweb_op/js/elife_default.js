// JavaScript Document
var screen_height = $(window).height();
var screen_width = $(window).width();
$(document).ready(function(){
	/*if(screen_height < 600) screen_height = 600;
	$("#elife-fixbackground").height(screen_height);
	$("#elife-fixbackground").width(screen_width);
	*/
	$(".elife-section-content p").each(function(){
		if($(this).html().trim() == "" || $(this).html().trim() == "&nbsp;")
		{
			$(this).hide();	
		}
	});
	
	var content_w = $(".elife-content").width() - 20;
	$(".elife-section-content img").each(function(){
		$(this).error(function(){
		  	$(this).hide();	
		});
		
		if(parseFloat($(this).attr("hspace")) > 0)
		{
			var margin = $(this).attr("hspace");
			$(this).css({
				"margin-left":margin,
				"margin-right":margin
			})
		}
		
		if($(this).width() > content_w)
		{
			//alert(content_w);
			$(this).css("width", content_w);
			$(this).removeCss("height");
		}
	});
	
	//Effect
	//$('#elife-fixbackground').hide().delay(500).fadeIn(500);
	$('#elife-header').hide().fadeIn(500);
	$('#elife-logo').animate
	(
		{top: '-60px', opacity: 0},
		{duration:0,queue:false}
	)
	.delay(500)
	.animate({top:'0px',opacity:1});
	// slogan
	$('#slogan').animate
			(
				{left: '-60px', opacity: 0},
				{duration:0,queue:false}
			)
			.delay(1000)
			.animate({left:'135px',top:'25px', opacity:1});
	
	//menu mobile
    $('#elife-nav-mobile').click(function(data){
        $('#elife-menu').slideToggle('slow');
    });

    $(window).resize(function(){
        var width = $(window).width();
        if(width > 840) {
            $('#elife-menu').show();
        }
    });
	
	//$(" #elife-menu ul ul ").css({display: "none"}); // Opera Fix
			$(" #elife-menu ul li").hover(function(){
			
			$(this).find('ul:first').css({visibility: "visible",display:"none"}).slideDown(300).show();
			},function(){
				//$(this).find('ul:first').css({visibility: "hidden"});
				$(this).find('ul:first').slideUp('medium');
			});
		
	
	
});