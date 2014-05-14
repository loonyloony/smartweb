var UPLOAD_LIST = [];
var UPLOAD_ITEM = '';

$(document).ready(function(){
	
	$(".error").each(function(index){
		if(trim($(this).html()) == "")
		{
			$(this).hide();	
		}
	});
	
	$('img').each(function() {
		$(this).error(function(){
			var str = "";
			var imagetype = $(this).attr("imagetype")+"";
			
			if(imagetype != "" && imagetype != "undefined")
			{
			  //str = imagetype+"/default/noimage.gif";
			}
			else
			{
			  //str = "images/autosize-200x200/default/noimage.gif";
			}
		  	//this.src = str;
		});
		
	 });
	
	numberReady();
					   
});