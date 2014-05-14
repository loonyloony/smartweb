// JavaScript Document
function confirm_check(url,mess)
{
	anser=confirm(mess)
	
	if(anser==true)
		window.location = url
}


function searchMatrix(matrix,col,need)
{
	for(i=0;i < matrix.length ;i++)
		if(matrix[i][col]==need)
			return i
	return -1
}
function getPosOfNode(idparent,eid)
{
	var e = document.getElementById(idparent);
	i=0
	chi=e.childNodes[i]
	while(chi)
	{
		if(chi.id == eid)
			return i
		
		i++
		chi=e.childNodes[i]
	}
	return -1
}



function importJavaScript(jsFile) {
	
	var scriptElt = document.createElement('script');
	
	scriptElt.type = 'text/javascript';
	
	scriptElt.src = jsFile;
	
	document.getElementsByTagName('head')[0].appendChild(scriptElt);

}


function showPopup(popupid, width, height, overlayclose )
{
	$(document).ready(function() { 
		$.blockUI({ 
			message: $(popupid),
			css: { 
				top:  ($(window).height() - height) /2 + 'px', 
				left: ($(window).width() - width) /2 + 'px', 
				width: width+'px',
				height: height+'px'
			} 			
		});
		
		if(overlayclose != false)
		{
			$('.blockOverlay').attr('title','Click to close').click(function(){closePopup();});  
		}
	});	
}

function closePopup()
{
	$.unblockUI();	
	if (CKEDITOR.instances['editorPopup']) {
		CKEDITOR.instances.editorPopup.destroy();
	}
}

function loadPopup(id)
{
	$("#popupbody").load("index.php?route=core/fileadjust&id="+id);
	
	$.blockUI(
	{ 
		message: $('#popup'),
		css: { 
			top:  ($(window).height() - 500) /2 + 'px', 
			left: ($(window).width() - 600) /2 + 'px', 
			width: '700px',
			height: '500px'
			}
	});
}

function postStringData(object) {
	var str = "";
	$(object).each(function(){
		str += $(this).attr('name') + "=" + $(this).val() + "&";
	});
	return str;
}

function openDialog(url,width,height) {
    var result = window.showModalDialog(url, "", "dialogWidth:"+width+"px; dialogHeight:"+height+"px;");
}
function daysInMonth(month,year) 
{
	var m = [31,28,31,30,31,30,31,31,30,31,30,31];
	if (month != 2) return m[month - 1];
	if (year%4 != 0) return m[1];
	if (year%100 == 0 && year%400 != 0) return m[1];
	return m[1] + 1;
} 

function toMonth(month)
{
	if(month<10)
		return "0"+month;
	else
		return month;
}


function toBasicText(str)
{
	var iChars = "!@#$%^&*()+=-[]\\\';,./{}|\":<>?"; 
	for (var i = 0; i < str.length; i++) 
	{ 
		if (iChars.indexOf(str.charAt(i)) != -1) 
		{ 
			
			str = str.replace(str.charAt(i),"");
		}
		//alert(str.charAt(i))
	}
	return str;
}

function getPrefix(letter,n)
{
	var s = "";
	for(i=0;i<n;i++)
	{
		s+=letter;	
	}
	return s;
}

function isNumber(char)
{
	if( char!=8 && char!=0 && (char<45 || char>57) )
	{
		return false;
	}
	else true
}
function getFileExt(filepath)
{
	arr = filepath.split("\.");
	return arr[arr.length-1];
}



function printObject(o) {
  var out = '';
  for (var p in o) {
    out += p + ': ' + o[p] + '\n';
  }
  alert(out);
}
function logout()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
	
	$.get(HTTP_SERVER+"?route=sitebar/login/logout", 
		function(data){
			if(data == "true")
			{
				alert("Bạn đã đăng xuất thành công!");
				//window.location = "<?php echo HTTP_SERVER?>site/default/login";
				window.location = HTTP_SERVER;
			}
			else
			{
				
				$('#error').html(data).show('slow');
				
				
			}
			$.unblockUI();
		}
	);	
}