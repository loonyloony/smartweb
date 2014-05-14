// JavaScript Document
var screen_height = $(window).height();
var screen_width = $(window).width();
$(document).ready(function(){
	if(screen_height < 600) screen_height = 600;
	$("#elife-fixbackground").height(screen_height);
	$("#elife-fixbackground").width(screen_width);
	
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
	/*$('#elife-header').hide().fadeIn(500);
	$('#elife-logo').animate
	(
		{top: '-60px', opacity: 0},
		{duration:0,queue:false}
	)
	.delay(500)
	.animate({top:'0px', opacity:1});
	
	$('#elife-navigation').animate
	(
		{'margin-top': '30px', opacity: 0},
		{duration:0,queue:false}
	)
	.delay(500)
	.animate({'margin-top': '0px', opacity:1});

	if($("body").attr("id") != "layout_contact")
	{
		$('.elife-content .elife-section-content').jScrollPane();
	}*/
});