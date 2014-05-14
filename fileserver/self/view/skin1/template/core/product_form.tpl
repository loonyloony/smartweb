<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'></script>
<div class="section" id="sitemaplist">

	<div class="section-title">
    	<div class="titletext left"> QUẢN LÝ SẢN PHẨM </div>
        <div class="button right">
            <input type="button" class="button" value="<?php echo $button_save ?>"  onclick="save()"/>
            <input class="button" type="button" name="add" value="<?php echo $button_cancel ?>" onclick="goback()"/>
        </div>
        <div class="clearer">&nbsp;</div>
   	</div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        	
        <input type="hidden" id="productid" name="productid" value="<?php echo $product['productid']?>"> 
        <input type="hidden" id="handler" />
        <input type="hidden" id="outputtype" />
        <input type="hidden" id="listselectfile" name="listselectfile" />
            
        <div id="error" class="error" style="display:none"></div>  
		<div id="container">           
            <ul>
            	<li class="tabs-selected"><a href="#fragment-content"><span><?php echo $text_editor ?></span></a></li>
                <li><a href="#fragment-infor"><span><?php echo $text_information ?></span></a></li>
                <li><a href="#fragment-image"><span><?php echo $text_image ?></span></a></li>
                <li><a href="#fragment-attribute"><span><?php echo $label_product_attribute ?></span></a></li>
                <li><a href="#fragment-category"><span><?php echo $label_product_category ?></span></a></li>
            </ul>
            
            <div id="fragment-content">
        	<div>
            	<table>
                	<tr>
                    	<td width="150px"><label>Model:</label></td>
                        <td>
                        	<input type="text" id="model" name="model" value="<?php echo $product['model']?>" class="text"  style="width:290px" />
                       	</td>
                    </tr>
                    
                    <script>
						$('#model').change(function(e) {
							$.ajax({
									url: "?route=common/api/getAlias&title=" + toBasicText(this.value),
									cache: false,
									success: function(html)
									{
										$("#seo_url").val(html);
									}
							});
						});
					</script>  
                    
                    <tr>
                    	<td><label>Seo url:</label></td>
                        <td>
                        	<input type="text" id="seo_url" name="seo_url" value="<?php echo $product['seo_url']?>" class="text"  style="width:290px" />
                       	</td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_product_location?>:</label></td>
                        <td>
                        	<input type="text" id="title" name="location" value="<?php echo $product['location']?>" class="text"  style="width:290px" />
                       	</td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_product_quantity?>:</label></td>
                        <td>
                        	<input type="text" id="title" name="quantity" value="<?php echo $product['quantity']?>" class="text number"  style="width:75px" />
                       	</td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $text_image ?>:</label></td>
                        <td>
                        	<table>
                            	<tr>
                                	<td width="120px">
                                    	<a onclick="elifeupload_one('imagepath','imagepreview')" class="button"> <?php echo $button_selectimage ?></a>
                                    </td>
                                    <td>
                                                	
                                        <div id="image-content"> 
                                        <img id="imagepreview" imagetype="images/resizepng-200x160" src="images/resizepng-200x160/<?php echo $product['image']?>" /> 
                                        </div>

                                    	<input type="hidden" id="imagepath" name="image" value="<?php echo $product['image']?>" />
                                    </td>
                                </tr>
                            </table>
                       	</td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_product_original_price ?>:</label></td>
                        <td><input type="text" name="price" value="<?php echo $product['price']?>" class="text number"  style="width:290px" /></td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_product_subtract_stock ?>:</label></td>
                        <td><input type="checkbox" name="subtract_stock" value="" /></td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_date_available_from ?>:</label></td>
                        <td><input type="text" id="date_available_from" name="date_available_from" value="<?php echo $product['date_available_from'] ?>" class="text" /></td>
                    </tr>
                    <script language="javascript">
                    $(function() {
                        $("#date_available_from").datepicker({
                                changeMonth: true,
                                changeYear: true,
                                dateFormat: 'dd-mm-yy'
                                });
                        });
                 	</script>
                    
                    <tr>
                    	<td><label><?php echo $label_date_available_to ?>:</label></td>
                        <td><input type="text" id="date_available_to" name="date_available_to" value="<?php echo $product['date_available_to'] ?>" class="text" /></td>
                    </tr>
                    <script language="javascript">
                    $(function() {
                        $("#date_available_to").datepicker({
                                changeMonth: true,
                                changeYear: true,
                                dateFormat: 'dd-mm-yy'
                                });
                        });
                 	</script>
                </table>
                <div class="clearer">&nbsp;</div>
            </div>
            </div>

            <div id="fragment-infor">
                <div id="multilang">
                    <ul>
                        <?php 
                            if(isset($language)){
                                foreach($language as $key => $item){
                                    $class = "";
                                    if($key == 'vn'){
                                        $class = "tabs-selected";
                                    }
                        ?>
                        <li class="<?php echo $class ?>"><a href="#fragment-<?php echo $key ?>"><?php echo $item ?></a></li>
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
                    <div id="fragment-<?php echo $key ?>">

                       <table>
                       		<tr>
                                <td><label><?php echo $label_product_name ?></label></td>
                                <td>
                                    <input type="text" name="product_description[<?php echo $key ?>][name]" value="<?php echo $product_description[$key][name] ?>" class="text" size=60 />
                                </td>
                            </tr>
                            
                            <tr>
                                <td><label><?php echo $text_summary ?>:</label></td>
                                <td>
                                    <textarea name="product_description[<?php echo $key ?>][summary]" id="editor<?php echo $count ?>" cols="80" rows="10"><?php echo $product_description[$key][summary] ?></textarea>
                                </td>
                            </tr>
                                <script language="javascript">
                                    $(document).ready(function(){
                                        setCKEditorType("editor<?php echo $count ?>",2);
                                    });
                                </script>
                                <?php $count++ ?>
                            <tr>
                                <td><label><?php echo $text_description ?>:</label></td>
                                <td>
                                    <textarea name="product_description[<?php echo $key ?>][description]" id="editor<?php echo $count ?>" cols="80" rows="10"><?php echo $product_description[$key][description] ?></textarea>
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
                                    <input type="text" name="product_description[<?php echo $key ?>][meta_keyword]" value="<?php echo $product_description[$key][meta_keyword] ?>" class="text" size=60 />
                                </td>
                             </tr>
                             
                             <tr>
                                <td><label><?php echo $text_meta_description ?></label></td>
                                <td>
                                    <textarea name="product_description[<?php echo $key ?>][meta_description]" cols="80" rows="10"><?php echo $product_description[$key][meta_description] ?></textarea>
                                </td>
                             </tr>
                             
                             <tr>
                                <td><label><?php echo $label_product_tag ?></label></td>
                                <td>
                                    <input type="text" name="product_description[<?php echo $key ?>][tag]" value="<?php echo $product_description[$key][tag] ?>" class="text" size=60 />
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
            <div id="fragment-image">
				<table>
                	<tr>
                    	<td width="150px"><label for="image"><?php echo $label_subimage ?></label></td>
                        <td><a onclick="addSubImage()" class="button"><?php echo $button_selectimage ?></a></td>
                    </tr>
                 
                    <tr>
                    	<td></td>
                        <td id='attachment'>
                        	<!----------------- add subimage ----------------------->
                        	<p id="subImageList"></p>
                            
                            <span id="delfile"></span>
                			<input id="subimage" type="hidden" class="text" value="" size="120" />
                        </td>
                    </tr>
                    <!----------------- javascirpt upload image ----------------------->
                    <script language="javascript">
					$(document).ready(function() {
						// put all your jQuery goodness in here.
						<?php if(count(product_image) > 0){ foreach($product_image as $value){ ?>
						
							$('#subImageList').append(subImage.addImageSub("<?php echo $value['image']?>","<?php echo $value['sortorder']?>"));
						
						<?php } } ?>
					});	
					</script>
                </table>
            </div>
                        
            <!---------------------- product attribute -------------------------->
            <div id="fragment-attribute">
            	<div class="right">
                    <a onclick="addProductAttribute()" class="button"><?php echo $button_add ?></a>
            	</div>
                <div class="clearer"></div>
                <div>
                	<table>
                    	<thead>
                            <tr>
                                <th width="30%"><?php echo $label_product_attribute ?></th>
                                <th width="60%"><?php echo $text_description ?></th>
                                <th width="10%"></th>
                            </tr>
                        </thead>
                        
                        <tbody id="listProductAttribute">
                        	<?php $temp=0; if(isset($product_attribute)){ foreach($product_attribute as $attribute) { ?>
                            	<tr id="rowProductAttribute<?php echo $temp; ?>">
                                	<td>
                                    	<input type="text" class="text" size="40" name="product_attribute[<?php echo $temp ?>][name]" value="<?php echo $attribute[name]; ?>" />
                                    </td>
                                    <td>
                                    <?php if(isset($attribute['product_attribute_description'])){ foreach($attribute['product_attribute_description'] as $product_attribute_description) { ?>
                                    	<textarea class="text" name="product_attribute[<?php echo $temp ?>][product_attribute_description][<?php echo $product_attribute_description[languageid] ?>][description]" style="width: 550px; height: 100px;"><?php echo $product_attribute_description[description] ?></textarea><img src="<?php echo HTTP_SERVER . DIR_IMAGE . $product_attribute_description[languageid]?>.jpg" />
                                    <?php } } ?>
                                    </td>
                                    <td><a class="button" onclick="deleteProductAttribute(<?php echo $temp ?>)"><?php echo $button_delete ?></a></td>
                                </tr>
                                <script language="javascript">
								$(document).ready(function(e) {
                                    productAttribute.index++;
                                });
                                </script>
                            <?php $temp++; } } ?>
                        </tbody>
                    </table>
                </div>
            </div>
                        
            <!---------------------- product categories -------------------------->
            <div id="fragment-category">
                <div>
                    <table>
                        <tr>
                        	<td width="150px"><label><?php echo $label_product_category ?></label></td>
                            <td>
                            	<select id="sitemapid" name="sitemapid">
                                	<?php echo $sitemap ?>
                                </select>
                            </td>
                        </tr>
                    </table> 
                </div>
            </div>
        </div>   
        </form>
    
    </div>
    
</div>
<script language="javascript">

$(document).ready(function() {
	//tabs definition
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });	
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	//load picture product
	//$('#imagepreview').attr("src", "<?php echo $product['imagepreview'] ?>");
});

/********************************************************** Product Attribute ***********************************************************************/

//add product attribute
function addProductAttribute(){
	productAttribute.add();
}

//delete product attribute
function deleteProductAttribute(id){
	$('#rowProductAttribute' + id).remove();
}

function ProductAttribute(){
	var arrayOfLanguage = <?php echo json_encode($language) ?>;
	this.index = 0;
	this.show = function(){
		
	}
	
	this.add = function(){
		var cellproductattributename = "<td><input type='text' class='text' value='' name='product_attribute[" + productAttribute.index + "][name]' size=40 /></td>";
		var cellproductattributedescription = "<td>";
		$.each(arrayOfLanguage, function(index, value){
			cellproductattributedescription += "<textarea class='text' style='width: 550px; height: 100px;' value='' name='product_attribute[" + productAttribute.index + "][product_attribute_description][" + index +"][description]' /></textarea> <img src='<?php echo HTTP_SERVER.DIR_IMAGE ?>" + index + ".jpg' />";
			cellproductattributedescription += "<br />";
		});
		cellproductattributedescription += "</td>";
		var celloptionvaluetool = "<td><a onclick='deleteProductAttribute(" + productAttribute.index + ")' class='button'><?php echo $button_delete ?></a></td>";
		
		var row = "<tr id='rowProductAttribute" + productAttribute.index + "'>";
		row += cellproductattributename;
		row += cellproductattributedescription;
		row += celloptionvaluetool;
		row +="</tr>";
		$('#listProductAttribute').append(row);
		productAttribute.index++;
	}	
}

var productAttribute = new ProductAttribute();

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
	
	$.post("?route=core/product/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				goback();
			}
			else
			{
			
				$('#error').html(data).show('slow');
				$.unblockUI();
				
			}
			
		}
	);
}

function goback()
{
	var re = "?<?php echo $_SESSION['return']?>";
	if(re == '')
		re = "?route=module/product&sitemapid=<?php echo $_GET['sitemapid'] ?>";
	window.location = re;
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

function browserFileAttachment()
{
	$('#handler').val('attachment');
	$('#outputtype').val('attachment');
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
							$.getJSON("?route=core/file/getFile&fileid="+data.file.fileid+"&width=200&height=200px", 
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

function SubImage()
{
	this.index = 0;
	
	this.addImageSub=function(path, sortorder){
		var img="<div class='image_item'><img src='images/resize-200x200/"+ path +"'/><input type='hidden' name='product_image[" + subImage.index + "][image]'  value='" + path + "' /><input type='hidden' name='product_image[" + subImage.index + "][sortorder]'  value='" + sortorder + "' /></div>";						
		var control='<a class="btndeleteimage"><img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>button/delete.png"/></a>';
		
		var row = "<div style='width:200px; height:250px; margin: 5px; border: 1px solid #CCC; padding: 2px; float:left;'>"; 
		row += "<div style='width:200px; height:200px; text-align:center'>" + img + "</div>";
		row += "<div style='width:100px; margin: 0 auto; text-align:center;'>" + control + "</div>";
		row += "</div>";
				
		subImage.index++;
		return row;
	}

}

var subImage = new SubImage();

//delete subimage		
$('.btndeleteimage').live('click',function(){
	$(this).parent().parent().remove();
});

//add subimage
function addSubImage(){
	elifeupload_multi('subimage');
	var strSubImage = $('#subimage').val();
	var arrayOfSubImage = strSubImage.split(",");
	for(var i in arrayOfSubImage){
		if(arrayOfSubImage[i] != ""){
			$('#subImageList').append(subImage.addImageSub(arrayOfSubImage[i], 1));
		}
	}
}
</script>

<script src="<?php echo DIR_JS?>jquery.tabs.pack.js" type="text/javascript"></script>
