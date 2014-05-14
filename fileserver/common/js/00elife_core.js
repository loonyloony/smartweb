/*---START HAM CHUNG THUONG XAI-----------------------------------------------------*/
function linkto(url) //Ham chuyen trang web
{
	window.location = url
}

function isNumber(char)
{
    if( char!=8 && char!=0 && (char<45 || char>57) )
    {
        return false;
    }
    else
        return true
}

/*---START HAM XU LY CHUOI & SO------------------------------------------------------*/
function numberReady()
{
	$(".number").keyup(function (e)
	{
		num = formateNumber($(this).val().replace(/,/g,""));
		$(this).val(num)
	});
	$(".number").keypress(function (e)
	{
	  	return isNumber(e.which);
	});
	
	$('.number').focus(function(e) {
        if(this.value == 0)
			this.value = "";
    });
	$('.number').blur(function(e) {
        if(this.value == "")
			this.value = 0;
    });
	$(".number").each(function(index){
		//alert(formateNumber($(this).val()))
		$(this).val(formateNumber($(this).val()))
		
	});
}

function formateNumber(num)
{
	if(num =="")
		return 0;
	
	num = String(num).replace(/,/g,"");
	ar = (""+num).split("\.");
	div = Number(ar[0]) + "";
	mod = ar[1];

	arr = new Array();
	block = "";
	
	for(i=div.length-1; i>=0 ; i--)
	{
		
		block = div[i] + block;
		
		if(block.length == 3)
		{
			arr.unshift(block);
			block ="";
		}
		
	}
	arr.unshift(block);
	
	divnum = arr.join(",");
	divnum = trim(divnum,",")
	divnum = divnum.replace("-,","-")
	if(mod == undefined)
		return divnum;
	else
		return divnum+"\."+mod;
}

function trim(str, chars) {
	return ltrim(rtrim(str, chars), chars);
}
 
function ltrim(str, chars) {
	chars = chars || "\\s";
	return str.replace(new RegExp("^[" + chars + "]+", "g"), "");
}
 
function rtrim(str, chars) {
	chars = chars || "\\s";
	return str.replace(new RegExp("[" + chars + "]+$", "g"), "");
}

function bodau(str) {  
	str= str.toLowerCase();  
	str= str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a");  
	str= str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e");  
	str= str.replace(/ì|í|ị|ỉ|ĩ/g,"i");  
	str= str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o");  
	str= str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u");  
	str= str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y");  
	str= str.replace(/đ/g,"d");  
	str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g,"-"); 
	/* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */ 
	str= str.replace(/-+-/g,"-"); //thay thế 2- thành 1- 
	str= str.replace(/^\-+|\-+$/g,"");  
	//cắt bỏ ký tự - ở đầu và cuối chuỗi  
	return str;  
}   
/*---END HAM XU LY CHUOI & SO------------------------------------------------------*/
