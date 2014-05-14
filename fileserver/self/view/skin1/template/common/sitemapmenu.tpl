<!----------------------------- website content management ------------------------------------->
<div class="box-sitebar-title">
	<div class="sitebar-title">
    	<div class="sitebar-title-text"><?php echo $title_content_management ?></div>
    </div>
</div>
<div class="section">

	<div class="content">
		<div class="sitemapmenu">
       		<ul>
            	<?php echo $menu?>
        	</ul>
        </div>

    </div>

</div>

<script>
	$(document).ready(function(){
		$(".sitemapmenu a").click(function(){
			return false;	
		});
		$(".sitemapmenu li").each(function(){
			if($(this).has('ul').html() == null)
			{
				$(this).find(".treeindent").addClass("bgnone");
			}
			else
			{
				$(this).find(".treeindent").addClass("bgplus");
				/*.click(function(){
					var parent = $(this).parent().parent();
					parent.find("ul:first").slideToggle('fast');
					if($(this).hasClass("bgplus") == true)
					{
						$(this).removeClass("bgplus");
						$(this).addClass("bgminus");
					}
					else
					{
						$(this).addClass("bgplus");
						$(this).removeClass("bgminus");
					}
				});
				if($(this).hasClass("bgplus") == true)
				{
					$(this).removeClass("bgplus");
					$(this).addClass("bgminus");
				}
				else
				{
					$(this).addClass("bgplus");
					$(this).removeClass("bgminus");
				}*/
			}
		});	
		
		$(".treeindent").click(function(){
			var parent = $(this).parent().parent();
			parent.find("ul:first").slideToggle('fast');
			if(parent.find(".treeindent:first").hasClass("bgplus") == true)
			{
				parent.find(".treeindent:first").removeClass("bgplus");
				parent.find(".treeindent:first").addClass("bgminus");
			}
			else
			{
				parent.find(".treeindent:first").addClass("bgplus");
				parent.find(".treeindent:first").removeClass("bgminus");
			}
		});
		
		$(".sitemapmenu a span.sitemaptext").click(function(){
			linkto($(this).parent().attr("href"));	
		});
		
	});
</script>