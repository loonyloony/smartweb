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
        
        <div id="error" class="error" style="display:none"></div>
		<div id="container">           
            <ul>
            	<li class="tabs-selected"><a href="#fragment-content"><span><?php echo $text_editor ?></span></a></li>
                <li><a href="#fragment-infor"><span><?php echo $text_information ?></span></a></li>
                <li><a href="#fragment-image"><span><?php echo $text_image ?></span></a></li>
                <li><a href="#fragment-option"><span><?php echo $label_option ?></span></a></li>
                <li><a href="#fragment-attribute"><span><?php echo $label_product_attribute ?></span></a></li>
                <li><a href="#fragment-reward"><span><?php echo $label_reward ?></span></a></li>
                <li><a href="#fragment-special"><span><?php echo $label_special ?></span></a></li>
                <li><a href="#fragment-discount"><span><?php echo $label_discount ?></span></a></li>
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
                                	<td width="150px"><a onclick="elifeupload_one('imagepath','imagepreview')" class="button"><?php echo $button_selectimage ?></a></td>
                                    <td>
                                    	<img id="imagepreview" imagetype="images/resizepng-200x160" src="images/resizepng-200x160/<?php echo $product['image']?>" />
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
                                <td width="150px;"><label><?php echo $label_product_name ?></label></td>
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
                        <td>
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
            
            <!------------------------ product option ---------------------------->
            <div id="fragment-option">
            	<table>
                	<tr>
                    	<td width="150px"><label><?php echo $label_option_name ?></label></td>
                        <td>
                        	<select id="option" name="option">
                            	<?php echo $option ?>
                            </select>
                            <a onclick="checkOption()" class="button"><?php echo $button_add ?></a>
                        </td>
                    </tr>
                    	<td colspan="2">
                        	<div id="option-tabs">
                            	<ul>
                                	<?php $temp = 0; if(count($product_option) > 0){ foreach($product_option as $item) {  ?>
                                    	<li class="<?php echo ($temp == 0) ? 'selected' : '' ?>">
                                        	<a href='#fragment-<?php echo $item[optionid] ?>'>
                                        		<span><?php echo $item['optionname'] ?></span>
                                            </a>
                                        </li>
                                        <input class='option' type='hidden' value='<?php echo $item[optionid] ?>' name='product_option[<?php echo $item[optionid] ?>][value]' />

                                        <script language="javascript">
											$(document).ready(function(e) {
												var content = '';
												content += '<div id="content<?php echo $item[optionid] ?>">';
												
												content += '</div>';
												$.post("?route=product/product/getOptionValue", {optionid : "<?php echo $item['optionid'] ?>"}, function(data){
													if(data){
														obj = jQuery.parseJSON(data);
														var labeloptionvaluename = "<label><?php echo $label_option_value_name ?>:</label>";
														var selectoptionvalue = "<select id='optionvalue<?php echo $item[optionid] ?>' name='<?php echo $item[optionid] ?>'>";
														for(i in obj.optionvalue){
															 selectoptionvalue += "<option value='" + obj.optionvalue[i].option_value_id + "'>" + obj.optionvalue[i].name + "</option>";
														}
														selectoptionvalue += "</select>";
														
														var optionid = "<?php echo $item['optionid'] ?>" ;
														//var optionvalueid = $('#optionvalue" + optionid + "').val();
														var buttonaddoptionvalue = "<a onclick='checkOptionValue(" + optionid + ")' class='button' ><?php echo $button_add ?></a>";
														
														var row = "<div>";
														row += labeloptionvaluename;
														row += '&nbsp;&nbsp;&nbsp;';
														row += selectoptionvalue;
														row += '&nbsp;&nbsp;&nbsp;';
														row += buttonaddoptionvalue;
														row += "</div>";
														$("#content" + optionid).append(row);
														
														var table = "<table class='optionvalue'>";
														table += "<thead>";
														table += "<th width='232px'><?php echo $label_option_value_name ?></th>";
														table += "<th width='50px'><?php echo $label_product_subtract_stock ?></th>";
														table += "<th width='115px'><?php echo $label_product_original_price ?></th>";
														table += "<th width='95px'><?php echo $label_product_quantity ?></th>";
														table += "<th width='95px'><?php echo $label_reward ?></th>";
														table += "<th width='55px'></th>";
														table += "</thead>";
														table += "<tbody id='listoptionvalue" + optionid + "'>";
														table += "</tbody>";
														table += "<table>";
														$("#content" + optionid).append(table);
													}
												});
												
												//append content
												$('#option-tabs').append("<div style='width:730px; margin-left:250px;' class='option-tabs' id='fragment-<?php echo $item['optionid'] ?>'>" + content + "</div>");
												//$('#option-tabs').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
												showTab();
												getOptionValueByOptionid("<?php echo $item['optionid'] ?>", "<?php echo $_GET['productid'] ?>");
                                            });
										    //var optionid = "";
											
                                        </script>
                                    <?php $temp++; } } ?>
                                </ul>
                                
                               
                            </div>
                            
      						<div class="clearer"></div>
                        </td>                    
                    <tr>
                    
                    </tr>
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
            
            <!------------------------ product reward ---------------------------->
            <div id="fragment-reward">
            	<table>
                	<tr>
                		<td width="250px"><label><?php echo $label_product_point ?></label></td>
                    	<td><input type="text" name="points" value="<?php echo $product['points']?>" class="text number"  style="width:100px" /></td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_user_group_point ?></label></td>
                        <td>
                        	<select id="customergroupreward" name="">
                            	<?php echo $customergroup ?>
                            </select>
                        	<a onclick="addRewardPoint()" class="button"><?php echo $button_add ?></a>
                        </td>
                    </tr>
                    
                    <tr>
                    	 <td colspan="2">
                        	<table>
                            	<thead>
                                	<th><?php echo $label_user_type ?></th>
                                    <th><?php echo $label_reward ?></th>
                                    <th></th>
                                </thead>
                                
                                <tbody id="listproductreward">
                                	<?php $temp = 0; if(count($product_reward) > 0){ foreach($product_reward as $reward) { ?>
                                    	<tr	id="productreward<?php echo $temp ?>">
                                        	<td><label><?php echo $reward['name'] ?></label></td>
                                            <td style="text-align:center">
                                            	<input type="text" class="text" value="<?php echo $reward['points'] ?>" name="product_reward[<?php echo $temp ?>][points]" />
                                                <input type="hidden" value="<?php echo $reward['customer_group_id'] ?>" name="product_reward[<?php echo $temp ?>][customer_group_id]" />
                                            </td>
                                            <td><a class='button' onclick='deleteProductReward(<?php echo $temp ?>)'><?php echo $button_delete ?></a></td>
                                        </tr>
                                        
										<script language="javascript">
                                            $(document).ready(function(e) {
                                                productReward.index++;
												productReward.arrayCustomerGroupId.push("<?php echo $reward['customer_group_id'] ?>");
                                            });
                                        </script>
                                    <?php $temp++ ;} } ?>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            
            <!----------------------- product special --------------------------->
            <div id="fragment-special">
            	<table>
                	<tr>
                    	<td width="250px"><label><?php echo $label_product_special_price ?></label></td>
                        <td>
                        	<select id="customergroupspecial" name="">
                            	<?php echo $customergroup ?>
                            </select>
                        	<a onclick="addProductSpecial()" class="button"><?php echo $button_add ?></a>
                        </td>
                    </tr>
                    
                    <tr>
                    	 <td colspan="2">
                        	<table>
                            	<thead>
                                	<th><?php echo $label_user_type ?></th>
                                    <th><?php echo $text_information ?></th>
                                    <th><?php echo $text_tool ?></th>
                                </thead>
                                
                                <tbody id="listproductspecial">
                                	<?php $temp = 0; if(count($product_special) > 0){ foreach($product_special as $special) { ?>
                                    	<tr	id="rowProductSpecial<?php echo $temp ?>">
                                        	<td><label><?php echo $reward['name'] ?></label></td>
                                            <td>
                                            	<table>
                                                    <tr>
                                                    	<td><label><?php echo $label_product_quantity ?></label></td>
                                                        <td><input type='text' class='text' name='product_special[<?php echo $temp ?>][quantity]' value="<?php echo $special['quantity'] ?>" /></td>
                                                    </tr>
                                                    <tr>
                                                    	<td><label><?php echo $label_product_priority ?></label></td>
                                                        <td><input type='text' class='text' name='product_special[<?php echo $temp ?>][priority]' value="<?php echo $special['priority'] ?>" /></td>
                                                    </tr>
                                                    <tr>
                                                    	<td><label><?php echo $label_product_price ?></label></td>
                                                        <td><input type='text' class='text' name='product_special[<?php echo $temp ?>][price]' value="<?php echo $special['price'] ?>" /></td>
                                                    </tr>
                                                    <tr>
                                                    	<td><label><?php echo $label_date_start ?></label></td>
                                                        <td><input type='text number' value="<?php echo $special['date_start'] ?>" class='text elife-datepicker' name='product_special[<?php echo $temp ?>][date_start]' /></td>
                                                    </tr>
                                                    <tr>
                                                    	<td><label><?php echo $label_date_end ?></label></td>
                                                        <td><input type='text number' value="<?php echo $special['date_end'] ?>" class='text elife-datepicker' name='product_special[<?php echo $temp ?>][date_end]' /></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td id="lineProductSpecial<?php echo $temp ?>"><a class='button' onclick='deleteProductSpecial(<?php echo $temp ?>)'><?php echo $button_delete ?></a></td>
                                        </tr>
                                        <tr id="lineProductSpecial<?php echo $temp ?>"><td colspan="3"><div style="border: 1px solid #ccc;"></div></td></tr>
                                        <script language="javascript">
                                            $(document).ready(function(e) {
                                                productSpecial.index++;
                                            });
                                        </script>
                                    <?php $temp++ ;} } ?>  
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            
            <!----------------------- product discount --------------------------->
            <div id="fragment-discount">
            
            <table>
                <tr>
                    <td width="250px"><label><?php echo $label_product_discount_price ?></label></td>
                    <td>
                        <select id="customergroupdiscount" name="">
                            <?php echo $customergroup ?>
                        </select>
                        <a onclick="addProductDiscount()" class="button"><?php echo $button_add ?></a>
                    </td>
                </tr>
                
                <tr>
                     <td colspan="2">
                        <table>
                            <thead>
                                <th><?php echo $label_user_type ?></th>
                                <th><?php echo $text_information ?></th>
                                <th><?php echo $text_tool ?></th>
                            </thead>
                            
                            <tbody id="listProductDiscount">
                                <?php $temp = 0; if(count($product_discount) > 0){ foreach($product_discount as $special) { ?>
                                    <tr	id="rowProductDiscount<?php echo $temp ?>">
                                        <td><label><?php echo $reward['name'] ?></label></td>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td><label><?php echo $label_product_quantity ?></label></td>
                                                    <td><input type='text' class='text' name='product_discount[<?php echo $temp ?>][quantity]' value="<?php echo $special['quantity'] ?>" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label><?php echo $label_product_priority ?></label></td>
                                                    <td><input type='text' class='text' name='product_discount[<?php echo $temp ?>][priority]' value="<?php echo $special['priority'] ?>" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label><?php echo $label_product_price ?></label></td>
                                                    <td><input type='text' class='text' name='product_discount[<?php echo $temp ?>][price]' value="<?php echo $special['price'] ?>" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label><?php echo $label_date_start ?></label></td>
                                                    <td><input type='text number' value="<?php echo $special['date_start'] ?>" class='text elife-datepicker' name='product_discount[<?php echo $temp ?>][date_start]' /></td>
                                                </tr>
                                                <tr>
                                                    <td><label><?php echo $label_date_end ?></label></td>
                                                    <td><input type='text number' value="<?php echo $special['date_end'] ?>" class='text elife-datepicker' name='product_discount[<?php echo $temp ?>][date_end]' /></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td><a class='button' onclick='deleteProductDiscount(<?php echo $temp ?>)'><?php echo $button_delete ?></a></td>
                                    </tr>
                                    <tr id="lineProductDiscount<?php echo $temp ?>"><td colspan="3"><div style="border: 1px solid #ccc;"></div></td></tr>
                                    <script language="javascript">
                                        $(document).ready(function(e) {
                                            productDiscount.index++;
                                        });
                                    </script>
                                <?php $temp++ ;} } ?>  
                            </tbody>
                        </table>
                    </td>
                </tr>
            </table>
            
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
<script src='<?php echo DIR_JS?>ajaxupload.js' type='text/javascript' language='javascript'> </script>
<script language="javascript">
var DIR_UPLOADPHOTO = "<?php echo $DIR_UPLOADPHOTO?>";
var DIR_UPLOADATTACHMENT = "<?php echo $DIR_UPLOADATTACHMENT?>";

$(document).ready(function() {
	//tabs definition
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });	
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
});
/********************************************************** product discount ***********************************************************************/
function ProductDiscount(){
	this.index = 0;

	this.add = function(){
		var customergroupid = $('#customergroupdiscount').val();
		var customergroupname = $('#customergroupdiscount option:selected').text();
		
		var cellcustomergroupname = "<label>" + customergroupname + "</label>";
		var cell_discount_quantity = "<input type='text' value='0' class='text' name='product_discount[" + productDiscount.index + "][quantity]' />";
		var cell_discount_priority = "<input type='text' value='1' class='text' name='product_discount[" + productDiscount.index + "][priority]' />";
		var cell_discount_price = "<input type='text' value='0' class='number text' name='product_discount[" + productDiscount.index + "][price]' />";
		var cell_discount_date_start = "<input type='text number' value='' id='datestart" + productDiscount.index + "' class='text elife-datepicker' name='product_discount[" + productDiscount.index + "][date_start]' />";
		var cell_discount_date_end = "<input type='text number' value='' id='dateend" + productDiscount.index + "' class='text elife-datepicker' name='product_discount[" + productDiscount.index + "][date_end]' />";
		var cell_hidden_discount_customergroupid = "<input type='hidden' class='customergroupidproductDiscount' value='" + customergroupid + "' name='product_discount[" + productDiscount.index + "][customer_group_id]' />";
		var cell_button_delete = "<a onclick='deleteProductDiscount(" + productDiscount.index + ")' class='button'><?php echo $button_delete ?></a>";
		
		var row="<tr id='rowProductDiscount" + productDiscount.index + "'>";
		row += "<td>" + "<label>" + cellcustomergroupname + "</label>" + cell_hidden_discount_customergroupid + "</td>";
		row += "<td>";
		row += "<table>";
		row += "<tr><td width='150px'><label><?php echo $label_product_quantity ?></label></td><td> " + cell_discount_quantity + " </td></tr>";
		row += "<tr><td><label><?php echo $label_product_priority ?></label></td><td> " + cell_discount_priority + " </td></tr>";
		row += "<tr><td><label><?php echo $label_product_price ?></label></td><td> " + cell_discount_price + " </td></tr>";
		row += "<tr><td><label><?php echo $label_date_start ?></label></td><td> " + cell_discount_date_start + " </td></tr>";
		row += "<tr><td><label><?php echo $label_date_end ?></label></td><td> " +  cell_discount_date_end + " </td></tr>";
		row += "</table>";
		row += "</td>";
		row += "<td>" + cell_button_delete + "</td>";
		
		row += "</tr>";
		row += "<tr id='lineProductDiscount" + productDiscount.index + "'>" ;
		row += "<td colspan='3'><div style='border: 1px solid #ccc;'></div></td>";
		row += "</tr>";
		$('#listProductDiscount').append(row);
		productDiscount.index++;
		$(".elife-datepicker").datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: 'dd-mm-yy'
		});
		numberReady();
	}
}

var productDiscount = new ProductDiscount();

function addProductDiscount(){
/*	var arr = productDiscount.arraycustomergroupId;
	var customergroupid = $('#customergroupspecial').val();
	
	if(jQuery.inArray(customergroupid,arr) > -1) {
		alert('<?php echo $announcement_user_type ?>');
	}else{*/
		productDiscount.add();
/*	}*/
}

function deleteProductDiscount(id){
	$('#rowProductDiscount' + id).remove();
	$('#lineProductDiscount' + id).remove();
}
/********************************************************** product special ***********************************************************************/
function ProductSpecial(){
	this.index = 0;
	this.arrayCustomerGroupId = [];
	this.add = function(){
		var customergroupid = $('#customergroupspecial').val();
		var customergroupname = $('#customergroupspecial option:selected').text();
		this.arrayCustomerGroupId.push(customergroupid);
		
		var cellcustomergroupname = "<label>" + customergroupname + "</label>";
		var cell_special_quantity = "<input type='text' value='0' class='text' name='product_special[" + productSpecial.index + "][quantity]' />";
		var cell_special_priority = "<input type='text' value='1' class='text' name='product_special[" + productSpecial.index + "][priority]' />";
		var cell_special_price = "<input type='text' value='0' class='number text' name='product_special[" + productSpecial.index + "][price]' />";
		var cell_special_date_start = "<input type='text number' value='' id='datestart" + productSpecial.index + "' class='text elife-datepicker' name='product_special[" + productSpecial.index + "][date_start]' />";
		var cell_special_date_end = "<input type='text number' value='' id='dateend" + productSpecial.index + "' class='text elife-datepicker' name='product_special[" + productSpecial.index + "][date_end]' />";
		var cell_hidden_special_customergroupid = "<input type='hidden' class='customergroupidproductspecial' value='" + customergroupid + "' name='product_special[" + productSpecial.index + "][customer_group_id]' />";
		var cell_button_delete = "<a onclick='deleteProductSpecial(" + productSpecial.index + ")' class='button'><?php echo $button_delete ?></a>";
		
		var row="<tr id='rowProductSpecial" + productSpecial.index + "'>";
		row += "<td>" + "<label>" + cellcustomergroupname + "</label>" + cell_hidden_special_customergroupid + "</td>";
		row += "<td>";
		row += "<table>";
		row += "<tr><td width='150px'><label><?php echo $label_product_quantity ?></label></td><td> " + cell_special_quantity + " </td></tr>";
		row += "<tr><td><label><?php echo $label_product_priority ?></label></td><td> " + cell_special_priority + " </td></tr>";
		row += "<tr><td><label><?php echo $label_product_price ?></label></td><td> " + cell_special_price + " </td></tr>";
		row += "<tr><td><label><?php echo $label_date_start ?></label></td><td> " + cell_special_date_start + " </td></tr>";
		row += "<tr><td><label><?php echo $label_date_end ?></label></td><td> " +  cell_special_date_end + " </td></tr>";
		row += "</table>";
		row += "</td>";
		row += "<td>" + cell_button_delete + "</td>";
		
		row += "</tr>";
		row += "<tr id='lineProductSpecial" + productSpecial.index + "'>" ;
		row += "<td colspan='3'><div style='border: 1px solid #ccc;'></div></td>";
		row += "</tr>";
		$('#listproductspecial').append(row);
		productSpecial.index++;
		$(".elife-datepicker").datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: 'dd-mm-yy'
		});
		numberReady();
	}
}

var productSpecial = new ProductSpecial();

function addProductSpecial(){
/*	var arr = productSpecial.arraycustomergroupId;
	var customergroupid = $('#customergroupspecial').val();
	
	if(jQuery.inArray(customergroupid,arr) > -1) {
		alert('<?php echo $announcement_user_type ?>');
	}else{*/
		productSpecial.add();
/*	}*/
}

function deleteProductSpecial(id){
	$('#rowProductSpecial' + id).remove();
	$('#lineProductSpecial' + id).remove();
}
/********************************************************** product reward ***********************************************************************/
function ProductReward(){
	this.index = 0;
	this.arrayCustomerGroupId = [];
	
	this.add = function(){
		var customergroupid = $('#customergroupreward').val();
		var customergroupname = $('#customergroupreward option:selected').text();
		this.arrayCustomerGroupId.push(customergroupid);
		
		var cellcustomergroupname = "<label>" + customergroupname + "</label>";
		var cell_reward_points = "<input type='text' value='0' class='text number' name='product_reward[" + productReward.index + "][points]' />";
		var cell_hidden_reward_customergroupid = "<input type='hidden' value='" + customergroupid + "' name='product_reward[" + productReward.index + "][customer_group_id]' />";
		var cell_delete_button = "<a class='button' onclick='deleteProductReward(" + this.index + ")'><?php echo $button_delete ?></a>";
		
		var row = "<tr id='productreward" + productReward.index + "'>"
		row += "<td>" + cellcustomergroupname + "</td>";
		row += "<td style='text-align:center;'>" + cell_reward_points + cell_hidden_reward_customergroupid + "</td>";
		row += "<td>" + cell_delete_button + "</td>";
		row += "</tr>";
		
		$("#listproductreward").append(row);
	}
}

var productReward = new ProductReward();

function addRewardPoint(){
	var arr = productReward.arrayCustomerGroupId;
	var customergroupid = $('#customergroupreward').val();
	
	if(jQuery.inArray(customergroupid,arr) > -1) {
		alert('<?php echo $warning_added_customer_group ?>');
	}else{
		productReward.add();
	}
}

function deleteProductReward(id){
	$('#productreward' + id).remove();	
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

//check option
function checkOption(){
	var arrayOptionId = [];
	$('.option').each(function(index, element) {
    	arrayOptionId.push(this.value); 
    });
	
	if(jQuery.inArray($('#option').val(), arrayOptionId) > -1) {
		alert('<?php echo $warning_added_option ?>');
	}else{
		addOption();
	}	
}

//add option
function addOption(){
	//remove selected class
	$('#option-tabs ul li').each(function(index, element) {
		if($(this).hasClass('selected'))
		{
			$(this).removeClass('selected');
		}
	});
	
	//append li tag to option-tabs
	$('#option-tabs ul').each(function() {
    	$(this).append("<li class='selected'><a href='#fragment-" + $('#option').val() + "'><span>" + $("#option option:selected").text() + "</span></a></li><input class='option' type='hidden' value='" + $('#option').val() + "' name='product_option[" + $('#option').val() + "][value]' />");
	});
	
	var content = '';
	content += '<div id="content' + $('#option').val() + '">';
	
	content += '</div>';
	//get option value base on optionid
	$.post("?route=product/product/getOptionValue", {optionid : $('#option').val()}, function(data){
		if(data){
			obj = jQuery.parseJSON(data);
			var labeloptionvaluename = "<label><?php echo $label_option_value_name ?>:</label>";
			var selectoptionvalue = "<select id='optionvalue" + $('#option').val() + "' name='" + $('#option').val() + "'>";
			for(i in obj.optionvalue){
				 selectoptionvalue += "<option value='" + obj.optionvalue[i].option_value_id + "'>" + obj.optionvalue[i].name + "</option>";
			}
			selectoptionvalue += "</select>";
			
			var optionid = $('#option').val();
			//var optionvalueid = $('#optionvalue" + optionid + "').val();
			var buttonaddoptionvalue = "<a onclick='checkOptionValue(" + optionid + ")' class='button' ><?php echo $button_add ?></a>";
			
			var row = "<div>";
			row += labeloptionvaluename;
			row += '&nbsp;&nbsp;&nbsp;';
			row += selectoptionvalue;
			row += '&nbsp;&nbsp;&nbsp;';
			row += buttonaddoptionvalue;
			row += "</div>";
			$("#content" + $('#option').val()).append(row);
			
			var table = "<table class='optionvalue'>";
			table += "<thead>";
			table += "<th width='232px'><?php echo $label_option_value_name ?></th>";
			table += "<th width='50px'><?php echo $label_product_subtract_stock ?></th>";
			table += "<th width='115px'><?php echo $label_product_original_price ?></th>";
			table += "<th width='95px'><?php echo $label_product_quantity ?></th>";
			table += "<th width='95px'><?php echo $label_reward ?></th>";
			table += "<th width='55px'></th>";
			table += "</thead>";
			table += "<tbody id='listoptionvalue" + optionid + "'>";
			table += "</tbody>";
			table += "<table>";
			$("#content" + $('#option').val()).append(table);
		}
	});
	
	//append content
	$('#option-tabs').append("<div style='width:730px; margin-left:250px;' class='option-tabs' id='fragment-" + $('#option').val() + "'>" + content + "</div>");
	//$('#option-tabs').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	showTab();
}

/********************************************************** Product Option Value ***********************************************************************/
function checkOptionValue(optionid){
	var arrayOptionValueId = [];
	$('.optionvalue').each(function(index, element) {
    	arrayOptionValueId.push(this.value); 
    });
	
	if(jQuery.inArray( $('#optionvalue' + optionid ).val(), arrayOptionValueId) > -1) {
		alert('<?php echo $warning_added_option_value ?>');
	}else{
		addOptionValue(optionid);
	}	
}

function addOptionValue(optionid){
	var optionvalueid = $('#optionvalue' + optionid ).val();
	var optionvaluename = $("#optionvalue" + optionid + " option:selected").text();
	
	var celloptionvalueid = "";
	var cell_option_value_name = "<label>" + optionvaluename + "</label><input type='hidden' class='optionvalue' value='" + optionvalueid + "' name='product_option[" + optionid + "][product_option_value][" + optionvalueid + "][option_value_id]'";
	var cell_option_value_subtract_stock = "<input type='checkbox' class='checkbox' value='0' name='product_option[" + optionid + "][product_option_value][" + optionvalueid + "][subtract]' />";
	var cell_option_value_quantity = "<input type='text' value='1' style='width:85px;' name='product_option[" + optionid + "][product_option_value][" + optionvalueid + "][quantity]' class='text' />";
	var cell_option_value_price = "<input type='text' class='text number' value='0' style='width:95px;' name='product_option[" + optionid + "][product_option_value][" + optionvalueid + "][price]' />";
	var cell_option_value_points = "<input type='text' class='text number' value='0' style='width:85px;' name='product_option[" + optionid +"][product_option_value][" + optionvalueid + "][points]' />";
	var cell_option_value_buttondel = "<a class='button' onclick='deleteOptionValue(" + optionvalueid + ")'><?php echo $button_delete ?></a>";
	
	var row="<tr id='optionvalue" + optionvalueid + "'>";
	row += "<td width='150px'>" + cell_option_value_name + "</td>";
	row += "<td width='50px'>" + cell_option_value_subtract_stock + "</td>";
	row += "<td width='100px'>" + cell_option_value_price + "</td>";
	row += "<td width='100px'>" + cell_option_value_quantity + "</td>";
	row += "<td width='100px'>" + cell_option_value_points + "</td>";
	row += "<td width='50px'>" + cell_option_value_buttondel + "</td>";
	row += "</tr>";

	$('#listoptionvalue' + optionid).append(row);
}

$('.checkbox').live('click', function(index, element) {
	$('.checkbox').each(function(){
		if(this.checked == true)
		{
			$(this).val('1');
		}else{
			$(this).val('0');
		}
	});
});

function deleteOptionValue(optionvalueid){
	$('#optionvalue' + optionvalueid).remove();
}

function OptionValue(){
	this.index = 0;
	this.add = function(){
	}	
	
}

var optionvalue = new OptionValue();
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
		var pageValue = oEditor.getData();
		$('textarea#' + value).val(pageValue);
	}
	
	$.post("?route=product/product/save", $("#frm").serialize(),
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
		re = "?route=module/optionproduct&sitemapid=<?php echo $_GET['sitemapid'] ?>";
	window.location = re;
}

/********************************************************************************************************************************************************/

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

//get option value base on optionid, productid
function getOptionValueByOptionid(optionid, productid){
	$.post("?route=product/product/getOptionValueByOptionid", {optionid : optionid, productid : productid}, function(data){
		if(data){
			obj = jQuery.parseJSON(data);
			for(i in obj.optionvalue){
				var celloptionvalueid = "";
				var cell_option_value_name = "<label>" + obj.optionvalue[i].name + "</label><input type='hidden' class='optionvalue' value='" + obj.optionvalue[i].option_value_id + "' name='product_option[" + obj.optionvalue[i].product_option_id + "][product_option_value][" + obj.optionvalue[i].option_value_id + "][option_value_id]'";
				var cell_option_value_subtract_stock = "<input type='checkbox' class='checkbox' value='0' name='product_option[" + obj.optionvalue[i].product_option_id + "][product_option_value][" + obj.optionvalue[i].option_value_id + "][subtract]' />";
				var cell_option_value_quantity = "<input type='text' value='1' style='width:85px;' name='product_option[" + obj.optionvalue[i].product_option_id + "][product_option_value][" + obj.optionvalue[i].option_value_id + "][quantity]' class='text' />";
				var cell_option_value_price = "<input type='text' class='text number' value='0' style='width:95px;' name='product_option[" + obj.optionvalue[i].product_option_id + "][product_option_value][" + obj.optionvalue[i].option_value_id + "][price]' />";
				var cell_option_value_points = "<input type='text' class='text number' value='0' style='width:85px;' name='product_option[" + obj.optionvalue[i].product_option_id +"][product_option_value][" + obj.optionvalue[i].option_value_id + "][points]' />";
				var cell_option_value_buttondel = "<a class='button' onclick='deleteOptionValue(" + obj.optionvalue[i].option_value_id + ")'><?php echo $button_delete ?></a>";
				
				var row="<tr id='optionvalue" + obj.optionvalue[i].option_value_id + "'>";
				row += "<td width='150px'>" + cell_option_value_name + "</td>";
				row += "<td width='50px'>" + cell_option_value_subtract_stock + "</td>";
				row += "<td width='100px'>" + cell_option_value_price + "</td>";
				row += "<td width='100px'>" + cell_option_value_quantity + "</td>";
				row += "<td width='100px'>" + cell_option_value_points + "</td>";
				row += "<td width='50px'>" + cell_option_value_buttondel + "</td>";
				row += "</tr>";
				$('#listoptionvalue' + optionid).append(row);
			}
		}
		//obj = jQuery.parseJSON(data);
	});
}
</script>

<script src="<?php echo DIR_JS?>jquery.tabs.pack.js" type="text/javascript"></script>