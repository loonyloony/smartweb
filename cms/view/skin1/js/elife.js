$(document).ready(function() {
	
	$(".pnlSearch").hide();
	
	$(".btnTimKiem").click(function(){
		$(".pnlSearch").toggle(300);
	});
	
	$("table.ben-table-framework tr.parent").click(function(){
	if($(this).find("input[name*='delete']").attr('checked') == "checked"){
		$(this).removeClass("selected");
		$(this).find("input[name*='delete']").attr('checked',false);	
	}  
	else
	{
		$(this).addClass("selected");
		$(this).find("input[name*='delete']").attr('checked',true);	
	}
	});
	
	$("span.calc").each(function(){
		num = formateNumber($(this).html().replace(/,/g,""));
		$(this).html(num);
	});
	
	$("td.calc").each(function(){
		num = formateNumber($(this).html().replace(/,/g,""));
		$(this).html(num);
	});
	
	$("input.calc").each(function(){
		num = formateNumber($(this).val().replace(/,/g,""));
		$(this).val(num);
	});
	
	$(".calc").keyup(function(e){
		num = formateNumber($(this).val().replace(/,/g,""));
		$(this).val(num);
	});
	
	
	$(".calc").keypress(function (e)
	{	
	  return isNumber(e.which);
	});
	
	$(".date").each(function(){
		if(trim($(this).html()) != "")
		{
			var date = Date.createFromMysql($(this).html());
			var dateString = date.format("dd/mm/yyyy");
			$(this).html(dateString);
		}
	});
	
	$(".textdate").each(function(){
		if(trim($(this).val()) != "")
		{
			var date = Date.createFromMysql($(this).val());
			var dateString = date.format("dd/mm/yyyy");
			$(this).val(dateString);
		}
	});
	

});

$('#clickme').click(function() {
  $('#book').toggle('slow', function() {
    // Animation complete.
  });
});



function checkall(obj)
{
	$("input[name*='delete']").attr('checked', obj.checked);	
	if(obj.checked == true)
	{
		$(".ben-table tr").addClass("selected");
	}
	else
	{
		$(".ben-table tr").removeClass("selected");
	}
}

Date.createFromMysql = function(mysql_string)
{ 
   if(typeof mysql_string === 'string')
   {
      var t = mysql_string.split(/[- :]/);

      //when t[3], t[4] and t[5] are missing they defaults to zero
      return new Date(t[0], t[1] - 1, t[2], t[3] || 0, t[4] || 0, t[5] || 0);          
   }

   return null;   
}


/*******/
/*$(".parent").live('click',function () {
	var active=$(this).next("tr").attr('class');
	
	if(active!="active"){
		z
		$(this).addClass("active");
		$(this).next("tr").removeClass("orderhide");
		$(this).next("tr").addClass("active");
	}else{
		
		if(active=="active")
		{
			$(this).removeClass("active");
			$(this).next("tr").addClass("orderhide");
		}
	}
});*/
function checkunicode(string){
	var flag=false;
	var length=string.length;
	var unicode=new Array(
	'à','á','ạ','ả','ã','â','ấ','ầ','ẫ','ậ',
	'ẩ','ă','ằ','ắ','ặ','ẳ','ẵ','è','é','ẹ',
	'ẻ','ẽ','ê','ề','ế','ệ','ể','ễ','ì','í',
	'ị','ĩ','ò','ó','ọ','ỏ','õ','ô','ố','ồ',
	'ộ','ổ','ỗ','ơ','ờ','ớ','ở','ợ','ỡ','ù',
	'ú','ụ','ủ','ũ','ư','ừ','ứ','ự','ử','ữ',
	'ý','ỳ','ỵ','ỷ','ỹ','đ'
	
	);
	for(var i=0;i<length;i++){
		if(!(unicode.indexOf(string[i]))){
			flag=true;
		}
	}
	return flag;

	
}


	
function uploadImage(id,obj){

	
		DIR_UPLOADPAVATAR ="?route=common/uploadfile/uploasdImage";
		
		new AjaxUpload(jQuery('#'+id), {
		action: DIR_UPLOADPAVATAR,
		name: 'image2',
		responseType: 'json',
		onChange: function(file, ext){
		},
		onSubmit: function(file, ext){
			
			// Allow only images. You should add security check on the server-side.
			if (ext && /^(jpg|png|jpeg|gif)$/i.test(ext)) {                            
				showloading();
			} else {
				alert('Tap tin ban vua chon khong hop le');
				return false;
			}                            
		},
		onComplete: function(file, response){
			$.unblockUI();
			if(response.files.error == 'none')
			{
				var result=obj;
				
			}
			else
			{
				showinfor(response.files.error);
			}
		}
		});
}
	
			
		


