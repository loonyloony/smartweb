<script>
	 $(document).ready(function() {
        $('#container,#container_edit,#container_infor').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
		
			var arr_language=<?php echo json_encode($arr_language) ?>;
			for(var x in arr_language){
				
				setCKEditorType('summary'+x,1,'800px','150px');
				
				CKEDITOR.replace( 'description'+x,
					{
						height : '300',
						width:'800'
					});	
				setCKEditorType('metadescription'+x,1,'800px','150px');	
				setCKEditorType('metakeyword'+x,1,'800px','150px');
			
			}
			
			
    });
	

function backhistory(){
			window.location=HTTP_SERVER;
	}	
	


$('#titlevn').change(function(e) {
	
    $.ajax({
			url: "?route=common/api/getAlias&title=" + toBasicText(this.value),
			cache: false,
			success: function(html)
			{
				
				
				$("#seourl").val(html);
			}
	});
});



		
		function save(){
			
				showloading();
				var url="?route=module/<?php echo $module ?>/save";
				var arr_language=<?php echo json_encode($arr_language) ?>;
				for(var x in arr_language){
						var summary = CKEDITOR.instances['summary'+x] ;
						var pageValue = summary.getData();
						$('textarea#summary'+x).val(pageValue);
						
						var description = CKEDITOR.instances['description'+x] ;
						var pageValue = description.getData();
						$('textarea#description'+x).val(pageValue);
						
						var metakeyword = CKEDITOR.instances['metakeyword'+x] ;
						var pageValue = metakeyword.getData();
						$('textarea#metakeyword'+x).val(pageValue);
						
						var metadescription = CKEDITOR.instances['metadescription'+x] ;
						var pageValue = metadescription.getData();
						$('textarea#metadescription'+x).val(pageValue);
				
				
				}
				
				
				$.post(url,$('#frmform').serialize(),function(data){
						
						if(data=="true")
						{
							alert("<?php echo $text_success ?>");
							window.location.reload();
							$.unblockUI();
						}else{
							$.unblockUI();
							$('#error').html(data).show('slow');
							
						}
					
					});
			}
			
		
		$('.btndeleteimage').live('click',function(){
			$(this).parent().parent().remove();
			});




function browserFileImage()
{
    //var re = openDialog("?route=core/file&dialog=true",800,500);
	$('#handler').val('image');
	$('#outputtype').val('image');
	showPopup("#popup", 800, 500);
	$("#popup").html("<img src='view/skin1/image/loadingimage.gif' />");
	$("#popup").load("?route=core/file&dialog=true");
		
}
function browserFileAttachment()
{
	$('#handler').val('attachment');
	$('#outputtype').val('attachment');
	showPopup("#popup", 800, 500);
	$("#popup").html("<img src='view/skin1/image/loadingimage.gif' />");
	$("#popup").load("?route=core/file&dialog=true");
}
function browserFile()
{
    //var re = openDialog("?route=core/file&dialog=true",800,500);
	$('#handler').val('file');
	$('#outputtype').val('file');
	showPopup("#popup", 800, 500);
	$("#popup").html("<img src='view/skin1/image/loadingimage.gif' />");
	$("#popup").load("?route=core/file&dialog=true")
		
}

function browserFileEditor()
{
    //var re = openDialog("?route=core/file&dialog=true",800,500);
	$('#handler').val('editor1');
	$('#outputtype').val('editor');
	showPopup("#popup", 800, 500);
	$("#popup").html("<img src='view/skin1/image/loadingimage.gif' />");
	$("#popup").load("?route=core/file&dialog=true")
		
}

function addImageTo()
{
	var str= trim($("#listselectfile").val(),",");
	var arr = str.split(",");
	
	if(str!="")
	{
		for (i=0;i<arr.length;i++)
		{
			$.getJSON("?route=core/file/getFile&fileid="+arr[i], 
				function(data) 
				{
					switch($('#outputtype').val())
					{
						case 'editor':
							width = "";
							
							var value = "<img src='<?php echo HTTP_IMAGE?>"+data.file.filepath+"'/>";
							
							var oEditor = CKEDITOR.instances[$('#handler').val()] ;
							
							// Check the active editing mode.
							if (oEditor.mode == 'wysiwyg' )
							{
								// Insert the desired HTML.
								oEditor.insertHtml( value ) ;
								$("#listselectfile").val('');
								var temp = oEditor.getData()
								oEditor.setData( temp );
							}
							else
								alert( 'You must be on WYSIWYG mode!' ) ;
							break;
						case 'image':
						
							var handler = $('#handler').val();
							$('#'+handler+'id').val(data.file.fileid)
							$('#'+handler+'path').val(data.file.filepath)
							$.getJSON("?route=core/file/getFile&fileid="+data.file.fileid+"&width=200", 
							function(file) 
							{
								$('#'+handler+'thumbnail').val(file.file.imagepreview)
								$('#'+handler+'preview').attr('src',file.file.imagepreview)
							});
							
							break;
						case 'file':
							var handler = $('#handler').val();
							$('#'+handler+'id').val(data.file.fileid);
							$('#'+handler+'path').val(data.file.filepath);
							$('#'+handler+'name').html(data.file.filename);
							break;
						case 'attachment':
							var handler = $('#handler').val();
							url="?route=core/file/getFile&fileid="+data.file.fileid+"&width=120";							
							$.getJSON(url, 
							function(file) 
							{
								
								$('#'+handler).append(attachment.addImageSub(data.file.fileid,data.file.filename,data.file.filepath,file.file.imagepreview));
								
							});
							
							break;
					}
				});
		}
	}
}
function Attachment()
	{
		this.index = 0;
		
		this.addImageSub=function(iid,name,path,thums){
				
				var img="<div class='image_item'><img src='"+thums +"'/><input type='hidden' name='subfileid[]'  value='"+iid+"' /><input type='hidden' name='subfilepath[]'  value="+path+" /></div>";
									
						var strlanguage="<?php foreach($arr_language as $key=>$value){ ?>";
						strlanguage +="<input type='text' class='text left' size='80' name=sub<?php echo $key ?>[] />   <div class='icon_language left'><img class='icon_language' width='32' height='24' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $key ?>.png'  /></div><br>";
						strlanguage +="<?php }?>";
						
					var control='<a class="btndeleteimage button"><?php echo $button_remove ?></a>';
				
				var row	="<tr><td width='150px'>"+img+"</td><td>"+strlanguage+"</td><td>"+control+"</td></tr>";
					
			attachment.index++;
			return row;
		}
	
	}
	var attachment = new Attachment();


</script>