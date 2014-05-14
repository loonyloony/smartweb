/*---START HAM CHUNG THUONG XAI-----------------------------------------------------*/
function linkto(url) //Ham chuyen trang web
{
	window.location = url
}

function data_updateList(url) //Ham update list dung dung
{
	showloading();
	$.post(url,$('#formlist').serialize(),function(data)
		{
			if(data=="true"){
				$.unblockUI();
				window.location.reload();
			}
			else if(data!="" && trim(data)!="")
			{
				alert(data);
				window.location.reload();
			}
		}
	);
}

function data_deleteList(url) //Ham delete list dung chung
{
	if(confirm("Bạn muốn xóa những bài viết này hay không ?")){		
		$.post(url,$('#formlist').serialize(),function(data){
				if(data=="true"){
					window.location.reload();
				}
				else if(data!="" && trim(data)!="")
				{
					alert(data);
					window.location.reload();
				}
			
			}
		);
	}
}
/*---END HAM CHUNG THUONG XAI-----------------------------------------------------*/

/*---START CAC HAM DANH CHO UPLOAD-----------------------------------------------------*/
function elifeupload_multi(controlid)
{
	var objResult = window.showModalDialog("../component/elifeupload/index.php", "", "dialogWidth:800px; dialogHeight:600px; center:yes");
	strResult = $("#upload_return").val();
	result = strResult.split(",");
		
	if(controlid != "")
	{
		var str="";
		for (var i = 0; i < result.length; i++) {
			str += result[i]+",";
		}
		$("#"+controlid).val(str);
	}
	if(result.length > 0)
	{
		UPLOAD_FILE_LIST = result;
		UPLOAD_FILE_ITEM = result[0];
	}
	return str;
}

function elifeupload_one(controlid, previewid)
{
	var objResult = window.showModalDialog("../component/elifeupload/index.php", "", "dialogWidth:800px; dialogHeight:600px; center:yes");
	strResult = $("#upload_return").val();
	result = strResult.split(",");
	
	if(result.length > 0)
	{
		UPLOAD_FILE_LIST = result;
		UPLOAD_FILE_ITEM = result[0];
		$("#"+controlid).val(result[0]);
		if(previewid != "")
		{
			var button = $("#"+previewid);
			if(button.attr("imagetype"))
			{
				var imagepath = button.attr("imagetype")+"/"+result[0];
				//alert(imagepath);
				$("#"+previewid).attr("src",imagepath);	
			}
			else
			{
				$("#"+previewid).html(result[0]);	
			}
			
		}
		return result[0];
	}
	else
	{
		return "";	
	}
}

function elifeupload_editor(controlid)
{
	var objResult = window.showModalDialog("../component/elifeupload/index.php", "", "dialogWidth:800px; dialogHeight:600px; center:yes");
	strResult = $("#upload_return").val();
	result = strResult.split(",");
	
	if(controlid != "")
	{
		var oEditor = CKEDITOR.instances[controlid] ;
		if (oEditor.mode == 'wysiwyg' )
		{
			var str="";
			for (var i = 0; i < result.length; i++) {
				str += '<img alt="" width=auto height=auto src="images/autosize-700x700/'+result[i]+'"/>';
			}
			oEditor.insertHtml( str ) ;
			var temp = oEditor.getData()
			oEditor.setData( temp );
		}
		else
		{
			alert( 'You must be on WYSIWYG mode!' ) ;
		}
	}
	if(result.length > 0)
	{
		UPLOAD_FILE_LIST = result;
		UPLOAD_FILE_ITEM = result[0];
	}
	return str;
}

function elifeupload_onefile(controlid, previewid)
{
	var objResult = window.showModalDialog("../component/elifeupload/index.php", "", "dialogWidth:800px; dialogHeight:600px; center:yes");
	strResult = $("#upload_return").val();
	result = strResult.split(",");
	
	if(result.length > 0)
	{
		UPLOAD_FILE_LIST = result;
		UPLOAD_FILE_ITEM = result[0];
		$("#"+controlid).val(result[0]);
		if(previewid != "")
		{
			var button = $("#"+previewid);
			var imagepath = result[0];
			$("#"+previewid).html(imagepath);
		}
		return result[0];
	}
	else
	{
		return "";	
	}
}
/*---END CAC HAM DANH CHO UPLOAD-----------------------------------------------------*/


/*---START HAM XU LY CKEDITOR-----------------------------------------------------*/
function setCKEditorType(strID, intType,ckwidth,ckheight, ckcontentcss)
{
	switch (intType)
	{
		case 0: // giao dien full
		CKEDITOR.replace( strID,
				{
					toolbar : [ ['Source','-','Save','NewPage','Preview','-','Templates'],['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print','SpellChecker','Scayt'],['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],['Form','Checkbox','Radio','TextField','Textarea','Select','Button','ImageButton','HiddenField'],'/',['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],['Link','Unlink','Anchor'],['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],'/',['Styles','Format','Font','FontSize'],['TextColor','BGColor'],['Maximize','ShowBlocks','-','About'] ], height: ckheight, width: ckwidth, contentsCss: ckcontentcss
				});
		//CKEDITOR.config.contentsCss = ['../view/skin1/css/ckeditor.css'];
		//CKEDITOR.config.height =ckheight ;
		//CKEDITOR.config.width = ckwidth;
		break;
		
		case 1: //Giao dien simply nhat
		CKEDITOR.replace( strID,
				{
					toolbar : [ ['Bold','Italic','Underline'],['Font','FontSize','TextColor','BGColor'],['Smiley'],['Link','Unlink'],['NumberedList','BulletedList'],['Outdent','Indent'],['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],['Iframe'],['RemoveFormat'],['Maximize'] ], height: ckheight, width: ckwidth, contentsCss: ckcontentcss
				});
		//CKEDITOR.config.contentsCss = ['../view/skin1/css/ckeditor.css'];
		//CKEDITOR.config.height =ckheight ;
		//CKEDITOR.config.width = ckwidth;
		break;
		
		case 2: //giao dien edit content
		CKEDITOR.replace( strID,
				{
					toolbar : [ ['Source','Bold','Italic','Underline'],['Font','FontSize','TextColor','BGColor'],['Smiley'],['Link','Unlink'],['NumberedList','BulletedList'],['Outdent','Indent'],['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],['RemoveFormat'],['Maximize'],['PasteText','PasteFromWord'],['Flash','Table','SpecialChar'] ], height: ckheight, width: ckwidth, contentsCss: ckcontentcss
				});
		//CKEDITOR.config.contentsCss = ['../view/skin1/css/ckeditor.css'];
		//CKEDITOR.config.height =ckheight ;
		//CKEDITOR.config.width = ckwidth;
		break;
		
		case 3:
		CKEDITOR.replace( strID,
				{
					toolbar : [ ['Source','-','Save','NewPage','Preview','-','Templates'],['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print','SpellChecker','Scayt'],['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],['Form','Checkbox','Radio','TextField','Textarea','Select','Button','ImageButton','HiddenField'],'/',['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],['Link','Unlink','Anchor'],['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],'/',['Styles','Format','Font','FontSize'],['TextColor','BGColor'],['Maximize','ShowBlocks','-','About'] ], height: ckheight, width: ckwidth, contentsCss: ckcontentcss
				});
		//CKEDITOR.config.contentsCss = ['../view/skin1/css/ckeditor.css'];
		//CKEDITOR.config.height = '400px';
		//CKEDITOR.config.width = '640px';
		break;
		case 4: //giao dien edit content
		CKEDITOR.replace( strID,
				{
					toolbar : [['Font'] ], height: ckheight, width: ckwidth, contentsCss: ckcontentcss
				});
		//CKEDITOR.config.contentsCss = ['../view/skin1/css/ckeditor.css'];
		//CKEDITOR.config.height = '100px';
		//CKEDITOR.config.width = '300px';
		break;
	}	
}
/*---END HAM XU LY CKEDITOR-----------------------------------------------------*/


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
	$(".elife-datepicker").datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: 'dd-mm-yy'
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
