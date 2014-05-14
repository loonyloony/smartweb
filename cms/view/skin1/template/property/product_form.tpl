<style>
.option-value-wrapper {
  position: relative;
  width: 730px;
  float: right
}
</style>
<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<div class="section" id="sitemaplist">
  <div class="section-title">
    <div class="titletext left"> <?php echo $title_heading_product?> <?php echo SKINID ?></div>
    <div class="button right">
      <input type="button" class="button" value="<?php echo $button_save ?>"  onclick="save()"/>
      <input class="button" type="button" name="add" value="<?php echo $button_cancel ?>" onclick="goback()"/>
    </div>
    <div class="clearer">&nbsp;</div>
  </div>
  <div class="section-content padding1">
    <form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
      <input type="hidden" id="productid" name="productid" value="<?php echo $product['productid']?>">
      <input type="hidden" name="sitemapid" id="sitemapid" value="<?php echo $_GET['sitemapid'] ?>" />
      <div id="error" class="error" style="display:none"></div>
      <div id="container">
        <ul>
          <li class="tabs-selected"><a href="#fragment-map"><span><?php echo $label_product_map ?></span></a></li>
          <li><a href="#fragment-content"><span><?php echo $text_editor ?></span></a></li>
          <li><a href="#fragment-infor"><span><?php echo $text_information ?></span></a></li>
          <li><a href="#fragment-image"><span><?php echo $text_image ?></span></a></li>
          <li><a href="#fragment-additional"><span><?php echo $label_product_additional ?></span></a></li>
          <li><a href="#fragment-category"><span><?php echo $label_product_category ?></span></a></li>
        </ul>
        
        <!---------------------- product location map -------------------------->
        <div id="fragment-map">
          <div>
          	<?php 
            	include(DIR_TEMPLATE."property/form_tab_map.tpl");
            ?>
          </div>
        </div>
        
        <!------- content ---------->
        <div id="fragment-content">
          <div>
            <table>
              <tr>
                <td width="150px"><label><?php echo $text_product_feature?>:</label></td>
                <td>
                	<select id="feature" name="feature">
                    	<option value="sale">sale</option>
                        <option value="rent">rent</option>
                    </select>
              	</td>
              </tr>	
              <tr>
                <td width="150px"><label><?php echo $label_product_location?>:</label></td>
                <td><input type="text" id="location" name="location" value="<?php echo $product['location']?>" class="text"  style="width:290px" /></td>
              </tr>
              <tr>
                <td width="150px"><label><?php echo $label_product_postalcode?>:</label></td>
                <td><input type="text" id="title" name="postalcode" value="<?php echo $product['postalcode']?>" class="text" maxlength="10"  style="width:80px" /></td>
              </tr>
              <tr>
                <td><label><?php echo $label_product_district?>:</label></td>
                <td><select id="zoneid" name="zoneid"><?php echo $cboZone?></select></td>
              </tr>
              <tr>
                <td><label><?php echo $label_product_near_station?>:</label></td>
                <td>
                    <select id="stationid" name="stationid">
                        <option value="">Not provided</option>
                        <?php echo $cboStation?>
                    </select>
                </td>
              </tr>
              <tr>
                <td><label><?php echo $text_image ?>:</label></td>
                <td><table>
                    <tr>
                      <td width="200px">
                          <a onclick="elifeupload_one('imagepath','imagepreview')" class="button"><?php echo $button_selectimage ?></a>
                          <p><a style="margin-top: 5px" onclick="deleteMainImage()" class="button"><?php echo $button_unselect_image ?></a></p>
                      </td>
                      <td>
                        <img id="imagepreview" imagetype="images/resizepng-200x160" src="images/resizepng-200x160/<?php echo $product['image']?>" />
                        <input type="hidden" id="imagepath" name="image" value="<?php echo $product['image']?>" />
                      </td>
                    </tr>
                  </table></td>
              </tr>
              
              <tr>
                <td><label><?php echo $label_product_property_type?>:</label></td>
                <td><select id="propertytypeid" name="propertytypeid"><?php echo $cboPropertyType?></select></td>
              </tr>
              <tr>
                <td><label><?php echo $label_product_room_type?>:</label></td>
                <td><select id="roomtypeid" name="roomtypeid"><?php echo $cboRoomType?></select></td>
              </tr>
              
              <tr>
                <td><label><?php echo $label_product_price ?>:</label></td>
                <td><input type="text" name="price" value="<?php echo $product['price']?>" class="text number"  style="width:290px" /></td>
              </tr>
              <tr>
                <td><label><?php echo $label_product_floor_size ?>:</label></td>
                <td><input type="text" name="length" value="<?php echo $product['length']?>" class="text number"  style="width:290px" /><span>&nbsp;(<?php echo $label_product_floor_size_unit?>)</span></td>
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
										dateFormat: 'dd/mm/yy'
									});
								});
								
							</script>
            </table>
            <div class="clearer">&nbsp;</div>
          </div>
        </div>
        
        <!-- fragment info --->
        <div id="fragment-infor">
          <div id="multilang">
            <ul>
              <?php 
                  if(isset($language)){
                      foreach($language as $key => $item){
                          $class = "";
                          if($key == LANGUAGE_DEFAULT){
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
                  <td width="150px;"><label><?php echo $label_product_name ?></label></td>
                  <td><input type="text" id="product_name_<?php echo $key ?>" name="product_description[<?php echo $key ?>][name]" value="<?php echo $product_description[$key][name] ?>" class="text" size=60 /></td>
                </tr>
                <tr>
                  <td><label>Seo url:</label></td>
                  <td><input type="text" id="seo_url_<?php echo $key ?>" name="product_description[<?php echo $key ?>][seo_url]" value="<?php echo $product_description[$key][seo_url]?>" class="text" size=60 /></td>
                </tr>
                <?php if ($product_description[$key]['seo_url'] == '') {?>
                <script>
                    $(document).ready(function() {
											createSeo("<?php echo $key ?>");	
										});
                </script>
                <?php } ?>
                <tr>
                  <td><label><?php echo $text_summary ?>:</label></td>
                  <td><textarea name="product_description[<?php echo $key ?>][summary]" cols="80" rows="10"><?php echo $product_description[$key][summary] ?></textarea></td>
                </tr>
                <script language="javascript">
										$(document).ready(function(){
												//setCKEditorType("editor<?php echo $count ?>",2);
										});
								</script>
                <?php //$count++ ?>
                <tr>
                  <td><label><?php echo $text_description ?>:</label></td>
                  <td><textarea name="product_description[<?php echo $key ?>][description]" cols="135" rows="20"><?php echo $product_description[$key][description] ?></textarea></td>
                </tr>
                <script language="javascript">
										$(document).ready(function(){
												//setCKEditorType("editor<?php echo $count ?>",2);
										});
								</script>
                <?php //$count++ ?>
                <tr>
                  <td><label><?php echo $text_meta_keyword ?></label></td>
                  <td><input type="text" name="product_description[<?php echo $key ?>][meta_keyword]" value="<?php echo $product_description[$key][meta_keyword] ?>" class="text" size=60 /></td>
                </tr>
                <tr>
                  <td><label><?php echo $text_meta_description ?></label></td>
                  <td><textarea name="product_description[<?php echo $key ?>][meta_description]" cols="80" rows="10"><?php echo $product_description[$key][meta_description] ?></textarea></td>
                </tr>
                <tr>
                  <td><label><?php echo $text_seo_content ?></label></td>
                  <td><textarea name="product_description[<?php echo $key ?>][seo_content]" id="editor<?php echo $count ?>" cols="80" rows="10"><?php echo $product_description[$key][seo_content] ?></textarea></td>
                </tr>
                <script language="javascript">
						$(document).ready(function(){
								setCKEditorType("editor<?php echo $count ?>",2);
						});
				</script>
                <?php $count++ ?>
                
                <tr>
                  <td><label><?php echo $label_product_tag ?></label></td>
                  <td><input class="text" type="textbox" name="product_description[<?php echo $key ?>][tag]" id="editor<?php echo $count ?>" value="<?php echo $product_description[$key][tag] ?>" /></td>
                </tr>
                
              </table>
            </div>
            <?php 
                    }
                }
            ?>
          </div>
        </div>
        
        
        
        
        <!------ tab image ----->
        <div id="fragment-image">
          <table>
            <tr>
              <td width="150px"><label for="image"><?php echo $label_subimage ?></label></td>
              <td><a onclick="addSubImage()" class="button"><?php echo $button_selectimage ?></a></td>
            </tr>
            <tr>
              <td></td>
              <td><!----------------- add subimage ----------------------->
                <p id="subImageList"></p>
                <span id="delfile"></span>
                <input id="subimage" type="hidden" class="text" value="" size="120" /></td>
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
        
        <!---------------------- product additional -------------------------->
        <div id="fragment-additional">
          
          <div>
            <table class="choose">
              <thead>
              	<tr>
                  <th width="30%"><?php echo $text_additionalsource_name ?></th>
                  <th width="60%"></th>
              	</tr>
              </thead>
              <tbody id="listProductAdditional">
                
                <?php if(isset($additional_source)) {?>
                <?php foreach($additional_source as $additional) {?>
                <tr>
                  <td><label><?php echo $additional['sourcename']?></label></td>
                  <td>
                  	<?php $index = 0;?>
                  	<?php $arrValues = explode(',', $additional['sourcevalue']); ?>
                    <?php foreach($arrValues as $value) {?>
                    	<span class="choose-item"> 
                        	<?php if((isset($product_additional[$additional['additionalsourceid']]) && $product_additional[$additional['additionalsourceid']] == $index) || $index == 0) {?>
                  				<input type="radio" name="additional[<?php echo $additional['additionalsourceid']?>]" value="<?php echo $index?>" checked="checked"/> <?php echo trim($value)?>
                            <?php } else {?>
                            	<input type="radio" name="additional[<?php echo $additional['additionalsourceid']?>]" value="<?php echo $index?>" /> <?php echo trim($value)?>
                            <?php }?>
                        </span>
                        <?php $index++;?>
                    <?php }?>
                  </td>
                </tr>
                <?php }?>
                <?php }?>
                
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
                <td><select id="sitemapid" name="sitemapid">
                    <?php echo $sitemap ?>
                  </select></td>
              </tr>
            </table>
          </div>
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
	//tabs definition
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow',});	
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	$('#feature').val("<?php echo $product['feature']?>");
	/*
	$('#zoneid').change(function(){
		var zoneid = $(this).val();
		
		var url = "?route=property/product/getCboStationByZoneId&zoneid="+zoneid;
		$.get(url, function(data){
			$('#stationid').html(data);
		});
		
	});
	*/
	
});

function deleteMainImage() {
    $('#imagepreview').attr('src', '');
    $('#imagepath').attr('src', '');
}

function createSeo(key) {
	$("#product_name_"+key).on('change keyup paste',function(){
		var name = $(this).val();
		name = bodau(name);
		name = name.toLowerCase(); // lowercase
		name = name.replace(/^\s+|\s+$/g, ''); // remove leading and trailing whitespaces
		name = name.replace(/\s+/g, '-'); // convert (continuous) whitespaces to one -
		name = name.replace(/[^a-z-]/g, ''); // remove everything that is not [a-z] or -			
		$("#seo_url_"+key).val(name); 
	});
	
}

/********************************************************** jquery tab ***********************************************************************/
function showTab()
{
	$('.option-tabs').hide();

	$('#option-tabs ul li').each(function(index, element) {
		if($(this).hasClass('selected'))
		{
			$($(this).find('a').attr('href')).show('slow');
		}

	});
}

showTab();

$('#option-tabs ul li').live('click', function(e) {
	$('#option-tabs ul li').each(function(index, element) {
		if($(this).hasClass('selected'))
		{
			$(this).removeClass('selected');
		}
	});
	
	$(this).addClass('selected');

	showTab();
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
/*******************************************************************************************************************************************************/

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	
	var countLanguage = eval("<?php echo count($language) ?>");
	countLanguage = (countLanguage * 2) + 1;
	for(i=1; i<countLanguage; i++){
		var value = 'editor'+i;
		var oEditor = CKEDITOR.instances[value]	;
		if(oEditor != null) {
			var pageValue = oEditor.getData();
			$('textarea#' + value).val(pageValue);
		}
	}
	
	$.post("?route=property/product/save", $("#frm").serialize(),
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
		re = "?route=module/propertyproduct&sitemapid=<?php echo $_GET['sitemapid'] ?>";
	window.location = re;
}

/*************** add images *******************/

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
