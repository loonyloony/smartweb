$(function () { 
	// Stack initialize
	var openspeed = 300;
	var closespeed = 300;
	$('.stack2>img').toggle(function(){
		var vertical = 0;
		var horizontal = 0;
		var $el=$(this);
		$el.next().children().each(function(){
			$(this).animate({top: vertical + 'px', left: horizontal + 'px'}, openspeed);
			vertical = vertical + 55;
			horizontal = (horizontal+.15)*2;
		});
		$el.next().animate({top: '40px', left: '10px'}, openspeed).addClass('openStack')
		   .find('li a>img').animate({width: '50px', marginLeft: '9px'}, openspeed);
		$el.animate({paddingBottom: '0'});
		$("#sidebar").fadeOut();
	}, function(){
		//reverse above
		var $el=$(this);
		$el.next().removeClass('openStack').children('li').animate({top: '-33px', left: '-10px'}, closespeed);
		$el.next().find('li a>img').animate({width: '79px', marginLeft: '0'}, closespeed);
		$el.animate({paddingBottom: '35px'});
		$("#sidebar").fadeIn();
	});
	
	// Stacks additional animation
	$('.stack2 li a').hover(function(){
		$("img",this).animate({width: '56px'}, 100);
		$("span",this).animate({marginRight: '30px'});
	},function(){
		$("img",this).animate({width: '50px'}, 100);
		$("span",this).animate({marginRight: '0'});
	});
	
	//load popup
	/*$('.stack2 li a').click(function(){
		$("#main-content .section:first").fadeOut();
		$("#main-content #cpanel-section").fadeIn();
		$("#main-content #cpanel-section .section-title .titletext").html($(this).find("span:first").html());
		
		if($(this).attr("href") != "")
		{
			var url = "index.php?route="+$(this).attr("href");
			$("#main-content #cpanel-section .section-content").load(url);
		}
		return false;	
	});
	
	$("#closecpanel").click(function(){
		$("#main-content .section:first").fadeIn();
		$("#main-content #cpanel-section").fadeOut();
		$("#main-content #cpanel-section .section-content").html('<div class="loading"></div>');
	});*/
});

$(function(){
	var jqDockOpts = {align: 'left', duration: 200, labels: 'tc', size: 48, distance: 85};
	$('#jqDock').jqDock(jqDockOpts);
});