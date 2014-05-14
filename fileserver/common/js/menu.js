/*function mainmenu(){
$(" #elife-menu ul ul ").css({display: "none"}); // Opera Fix
$(" #elife-menu ul li").hover(function(){
		$(this).find('ul:first').css({visibility: "visible",display: "none"}).show(400);
		},function(){
		$(this).find('ul:first').css({visibility: "hidden"});
		});
}*/
function mainmenu(){
$(" #elife-menu ul ").css({display: "none"}); // Opera Fix
$(" #elife-menu li").hover(function(){
		$(this).find('ul:first').css({visibility: "visible",display: "none"}).show(400);
		},function(){
		$(this).find('ul:first').css({visibility: "hidden"});
		});
}

/*function mainmenu(){
//$(" #elife-menu ul ul ").css({display: "none"}); // Opera Fix
$(" #elife-menu ul li").hover(function(){
		
		$(this).find('ul:first').css({visibility: "visible",display:"none"}).slideDown(400).show();
		},function(){
			//$(this).find('ul:first').css({visibility: "hidden"});
			$(this).find('ul:first').slideUp('medium');
		});
		
}
*/
mainmenu();
