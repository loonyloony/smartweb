<div class="section" id="sitemaplist">

	<div class="section-title"><?php echo $title_heading_manufacturer?></div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<div class="right">
            	<a onclick="save()" class="button"><?php echo $button_save ?></a>
            	<a onclick="linkto('?route=product/manufacturer')" class="button"><?php echo $button_cancel ?></a>
     	        <input type="hidden" name="manufacturerid" value="<?php echo $manufacturer['manufacturerid']?>">
            </div>
            <div class="clearer">^&nbsp;</div>
        	<div id="error" class="error" style="display:none"></div>
            <div id="container">
            	<ul>
                	<li class="tabs-selected"><a href="#fragment-editor"><?php echo $text_editor ?></a></li>
                    <li><a href="#fragment-information"><?php echo $text_information ?></a></li>
                </ul>
                
                <div id="fragment-editor">
                	<div id="multilang">
                    	<ul>
                        	<?php 
                            	if(isset($language)){
                                	foreach($language as $key => $item){
                                    	$class = "";
                                        if($key == 1){
                                        	$class = "tabs-selected";
                                       	}
                            ?>
                        	<li class="<?php echo $class ?>"><a href="#fragment-<?php echo $item ?>"><?php echo $item ?></a></li>
                            <?php 
                            		}
                                }
                            ?>
                        </ul>
                        
                        <!-- tabs editor -->
                        <?php
                        	$count = 1;
                        	if(isset($language)){ 
                        		foreach($language as $key => $item){
                        ?>
                        <div id="fragment-<?php echo $item ?>">

                			<table>
                            	<tr>
                                	<td><label><?php echo $text_summary ?>:</label></td>
                                    <td>
                                    	<textarea name="product_manufacturer_description[<?php echo $key ?>][summary]" id="editor<?php echo $count ?>" cols="80" rows="10"><?php echo $product_manufacturer_description[$key][summary] ?></textarea>
                                    </td>
                                </tr>
                                    <script language="javascript">
                                    	$(document).ready(function(){
											setCKEditorType("editor<?php echo $count ?>",1);
										});
                                    </script>
                                    <?php $count++ ?>
                                <tr>
                                	<td><label><?php echo $text_description ?>:</label></td>
                                    <td>
                                    	<textarea name="product_manufacturer_description[<?php echo $key ?>][description]" id="editor<?php echo $count ?>" cols="80" rows="10"><?php echo $product_manufacturer_description[$key][description] ?></textarea>
                                    </td>
                                </tr>
                                	<script language="javascript">
                                    	$(document).ready(function(){
											setCKEditorType("editor<?php echo $count ?>",2);
										});
                                    </script>
                                	<?php $count++ ?>
                                 <tr>
                                 	<td><label><?php echo $text_meta_keyword ?></label></td>
                                    <td>
                                    	<input type="text" name="product_manufacturer_description[<?php echo $key ?>][meta_keyword]" value="<?php echo $product_manufacturer_description[$key][meta_keyword] ?>" class="text" size=60 />
                                    </td>
                                 </tr>
                                 
                                 <tr>
                                 	<td><label><?php echo $text_meta_description ?></label></td>
                                    <td>
                                    	<textarea name="product_manufacturer_description[<?php echo $key ?>][meta_description]" cols="80" rows="10"><?php echo $product_manufacturer_description[$key][meta_description] ?></textarea>
                                    </td>
                                 </tr>
                            </table>
						
                        </div>
						<?php 
                        		}
                        	}
                        ?>
                    </div>
                	
                </div>
                
                <div id="fragment-information">
                	<table>
                    	<tr>
                        	<td width="150px"><label><?php echo $text_manufacturer_name ?>:</label></td>
                            <td><input type="text" name="name" value="<?php echo $manufacturer['name']?>" class="text" size=60 /></td>
                        </tr>
                        
                        <tr>
                        	<td><label for="image"><?php echo $text_image ?></label></td>
                            <td>
                            	<table>
                                	<tr>
                                    	<td width="150px"><a id="btnAddImage" class="button"><?php echo $button_selectimage ?></a></td>
                                        <td>
                                        	<img id="sub_preview" src="" />
                                            <input type="hidden" id="sub_imagepath" name="image" value="<?php echo $manufacturer['image']?>" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                        	<td><label>Seo_url:</label></td>
                            <td><input type="text" name="seo_url" value="<?php echo $manufacturer['seo_url'] ?>" class="text" size="60" /></td>
                        </tr>
                        
                        <tr>
                        	<td><label>Website:</label></td>
                            <td><input type="text" name="link" value="<?php echo $manufacturer['link'] ?>" class="text" size="60" /></td>
                        </tr>
                    </table>
                </div>
            </div>
            
        </form>
    
    </div>
    
</div>

<script src='<?php echo DIR_JS?>ajaxupload.js' type='text/javascript' language='javascript'> </script>
<script language="javascript">
var DIR_UPLOADPHOTO = "<?php echo $DIR_UPLOADPHOTO?>";
var DIR_UPLOADATTACHMENT = "<?php echo $DIR_UPLOADATTACHMENT?>";

$(document).ready(function() {
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	$('#sub_preview').attr("src", "<?php echo $manufacturer['imagepreview'] ?>");	
});

/*function browserFileImage()
{
	$('#handler').val('image');
	$('#outputtype').val('image');
	showPopup("#popup", 800, 500);
	$("#popup").html("<img src='view/skin1/image/loadingimage.gif' />");
	$("#popup").load("?route=core/file")
		
}*/

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
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	
	var countLanguage = eval("<?php echo count($language) ?>");
	countLanguage = (countLanguage * 2) + 1;
	for(i=1; i<countLanguage; i++){
		var value = 'editor'+i;
		var oEditor = CKEDITOR.instances[value]	;
		var pageValue = oEditor.getData();
		$('textarea#' + value).val(pageValue);
	}
	
	$.post("?route=product/manufacturer/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=product/manufacturer";
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
