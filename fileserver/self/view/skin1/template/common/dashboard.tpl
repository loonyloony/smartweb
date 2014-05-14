<div class="section" id="sitemaplist">

	<div class="section-title"><?php echo $dash_header ?></div>
    
    <div class="section-content padding1">
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        <div style="width:90%;">
        	<table>
            	<tr>
                	<td>
                    	<div class="left">
                        	<h3><?php echo $dash_infor_header ?></h3>
                        </div>
                    </td>
                    <td>
                    	<div class="right">
                            <a onclick="save()"> <img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>save.png" /></a>
                            <input type="hidden" name="mediaid" value="<?php echo $item['mediaid']?>">
                        </div>
                    </td>
                </tr>
            </table>
        	
        	
            <div class="clearer">^&nbsp;</div>
        	<div id="error" class="error" style="display:none"></div>
        </div>  
        	<div id="main-two-columns">
            	<div class="col5 left">
            	
            	<p>
            		<label><?php echo $dash_title ?></label><br />
					<input type="text" name="Title" value="<?php echo $item['Title']?>" class="text" size=60 />
            	</p>
                <p>
            		<label><?php echo $dash_slogan ?></label><br />
					<input type="text" name="Slogan" value="<?php echo $item['Slogan']?>" class="text" size=60 />
            	</p>
                  
                <p>
            		<label><?php echo $dash_currency ?></label><br />
					<input type="text" name="Currency" value="<?php echo $item['Currency']?>" class="text" size=60 />
            	</p>
                
                <p>
            		<label><?php echo $dash_email ?></label><br />
					<input type="text" name="EmailContact" value="<?php echo $item['EmailContact']?>" class="text" size=60 />
            	</p>
                
                <p>
                	<label><?php echo $dash_url ?></label><br />
                    <input type="text" name = "WebsiteURL" value="<?php echo $item['WebsiteURL'] ?>" class="text" size=60  />
                </p>
                </div>
                <div class="col5 left">
                 <div>
            	<p id="pnImage">
              		<input type="hidden" id="listselectfile" name="listselectfile" />
                 	<input type="hidden" id="handler" />
                 	<input type="hidden" id="outputtype" />
                    <table>
                    	<tr>
                        	<td width="50px;"><label for="image">Hình ảnh</label></td>
                            <td><a onclick="browserFileImage()"><img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>upload.png" /></a></td>
                        </tr>
                    </table>
                    <img id="imagepreview" src="<?php echo $item['imagethumbnail']?>" />
                    <input type="hidden" id="imagepath" name="imagepath" value="<?php echo $item['brochure']?>" />
                    <input type="hidden" id="imageid" name="imageid" value="<?php echo $imageid?>" />
                    <input type="hidden" id="imagethumbnail" name="imagethumbnail" value="<?php echo $imagethumbnail?>" />
                </p>
                
                
                <div id="errorupload" class="error" style="display:none"></div>
                
                <div class="loadingimage" style="display:none"></div>
            </div>
            <div>
            	<p>
                	<label>SEO</label><br />
                    <textarea class="SEO" name="SEO"><?php echo $item['SEO'] ?></textarea>
                </p>
            </div>
                </div>
                <div class="clearer"></div>
            </div>
            <!--<div>
            	<h3>Trang chủ</h3>
                 <input type="hidden" id="listselectfile" name="listselectfile" />
                 <input type="hidden" id="handler" />
                 <input type="hidden" id="outputtype" />
                
                
                 <p>
                    <label><?php echo $lbl_image ?></label><br />
                    <div id="brochure">
                        <?php echo $item['brochure']?>
                    </div>
                    <input type="hidden" id="brochure_filepath" name="brochure" value="<?php echo $item['brochure']?>"/>
                    <input type="button" class="button" value="<?php echo $entry_photo ?>" onclick="browserFile('brochure','any')"/>
                </p>
            </div>-->
           
        </form>
    
    </div>
    
</div>

<script language="javascript">
function browserFile(eid,type)
{
    $('#handler').val(eid);
	$('#outputtype').val(type);
	showPopup("#popup", 800, 500);
	$("#popup").html("<img src='view/skin1/image/loadingimage.gif' />");
	$("#popup").load("?route=core/file")
		
}

function browserFileImage()
{
    //var re = openDialog("?route=core/file&dialog=true",800,500);
	$('#handler').val('image');
	$('#outputtype').val('image');
	showPopup("#popup", 800, 500);
	$("#popup").html("<img src='view/skin1/image/loadingimage.gif' />");
	$("#popup").load("?route=core/file&dialog=true");
		
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
							$.getJSON("?route=core/file/getFile&fileid="+data.file.fileid+"&width=50", 
							function(file) 
							{
								$('#'+handler).append(attachment.creatAttachmentRow(data.file.fileid,data.file.filename,file.file.imagepreview));
								
							});
							
							break;
					}
				});
		}
	}
}

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
	/*var oEditor = CKEDITOR.instances['editor1'] ;
	var pageValue = oEditor.getData();
	$('textarea#editor1').val(pageValue);*/
	$.post("?route=common/dashboard/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location.reload();
			}
			$.unblockUI();
		}
	);
}

</script>
<script src='<?php echo DIR_JS?>ajaxupload.js' type='text/javascript' language='javascript'> </script>