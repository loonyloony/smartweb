<div class="section" id="sitemaplist">

	<div class="section-title">Quản lý chất liệu</div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<div class="button right">
            	<input type="button" value="Lưu" class="button" onClick="save()"/>
     	        <input type="button" value="Bỏ qua" class="button" onclick="linkto('?route=core/material')"/>   
     	        <input type="hidden" name="id" value="<?php echo $item['id']?>">
            </div>
            <div class="clearer">^&nbsp;</div>
        	<div id="error" class="error" style="display:none"></div>
        	<div>   
            	<p>
                    <label>Tên chất liệu:</label><br />
                    <input type="text" name="materialname" value="<?php echo $item['materialname']?>" class="text" size=60 />
                </p>
                <p>
                	 <label for="image">Hình ảnh</label><br />
                     <a id="btnAddImage" class="button">Chọn hình ảnh</a><br />
                     <img id="sub_preview" src="" />
                    <input type="hidden" id="sub_imagepath" name="imagepath" value="<?php echo $item['imagepath']?>" />
                    <input type="hidden" id="sub_imageid" name="imageid" value="<?php echo $item['imageid']?>"  />
                    <input type="hidden" id="sub_imagethumbnail" name="sub_imagethumbnail" />
                    <!--<?php echo $item['imagepreview'] ?>-->
                </p>  

                <p>
                    <label>Mô tả:</label><br />
                     <textarea name="description" id="editor1" cols="80" rows="10"><?php echo $item['description']?></textarea>
                </p>
            </div>
            
        </form>
    
    </div>
    
</div>

<script src='<?php echo DIR_JS?>ajaxupload.js' type='text/javascript' language='javascript'> </script>
<script language="javascript">
var DIR_UPLOADPHOTO = "<?php echo $DIR_UPLOADPHOTO?>";
var DIR_UPLOADATTACHMENT = "<?php echo $DIR_UPLOADATTACHMENT?>";

$(document).ready(function() { 
	setCKEditorType('editor1',2);
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	//alert("<?php echo $item['imagepreview'] ?>")
	$('#sub_preview').attr("src", "<?php echo $item['imagepreview'] ?>");	
});



function browserFileEditor()
{
    //var re = openDialog("?route=core/file",800,500);
	$('#handler').val('editor1');
	$('#outputtype').val('editor');
	showPopup("#popup", 800, 500);
	$("#popup").html("<img src='view/skin1/image/loadingimage.gif' />");
	$("#popup").load("?route=core/file")
		
}

function save()
{
	$.blockUI({ message: "<h1>Đang xử lý...</h1>" });
	var oEditor = CKEDITOR.instances['editor1'] ;
	var pageValue = oEditor.getData();
	$('textarea#editor1').val(pageValue);  
	$.post("?route=core/material/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=core/material";
			}
			else
			{
			
				$('#error').html(data).show('slow');
				$.unblockUI();
				
			}
			
		}
	);
}

new AjaxUpload(jQuery('#btnAddImage'), {
	action: DIR_UPLOADPHOTO,
	name: 'image2',
	responseType: 'json',
	onChange: function(file, ext){
		//$('#sub_preview').hide();
	},
	onSubmit: function(file, ext){
		// Allow only images. You should add security check on the server-side.
		if (ext && /^(jpg|png|jpeg|gif)$/i.test(ext)) {                            
			$('#pnImage').hide();
			$('.loadingimage').show();
		} else {
			alert('Your selection is not image');
			return false;
		}                            
	},
	onComplete: function(file, response){
		if(response.files.error == 'none')
		{
			$('input#sub_imageid').val(response.files.imageid);
			$('input#sub_imagepath').val(response.files.imagepath);
			$('input#sub_imagethumbnail').val(response.files.imagethumbnail);
			$('#sub_preview').attr("src", response.files.imagethumbnail);

			$('#errorupload').hide();	
		}
		else
		{
			$('#errorupload').html(response.files.error);
			$('#errorupload').show();
		}
		$('#pnImage').show();
		$('.loadingimage').hide();
		
	}
});

</script>
