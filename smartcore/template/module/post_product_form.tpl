<?php
	$this->document->addScript("jquery-ui.js");
    $this->document->addStyle("jquery-ui.css");
    
    //session PostProductProperty
    $productSession = $this->session->data['PostPropertyProduct'];
    
    //var_dump($productedit);
    
    if(!isset($productSession)) {
    	if(isset($productedit)) {
            $form_productid = $productedit['productid'];
            $form_name = $productedit['name'];
            $form_feature = $productedit['feature'];
            $form_seo_url = $productedit['seo_url'];
            $form_location = $productedit['location'];
            $form_postalcode = $productedit['postalcode'];
            $form_zoneid = $productedit['zoneid'];
            $form_stationid = $productedit['stationid'];
            $form_propertytypeid = $productedit['propertytypeid'];
            $form_price = $productedit['price'];
            $form_floorsize = $productedit['length'];
            $form_date_available_from = $this->date->formatMySQLDate($productedit['date_available_from'], "DMY", "/");
            
            $mapInfos = explode('##', $productedit['locationmap']);
            $form_zoom = $mapInfos[0];
            $form_x = $mapInfos[1];
            $form_y = $mapInfos[2];
        }
    } else {
    	$form_productid = $productSession['productid'];
    	$form_name = $productSession[product_description][$_SESSION['lang_session']][name];
        $form_feature = $productSession['feature'];
        $form_seo_url = $productSession[product_description][$_SESSION['lang_session']][seo_url];
        $form_location = $productSession['location'];
        $form_postalcode = $productSession['postalcode'];
        $form_zoneid = $productSession['zoneid'];
        $form_stationid = $productSession['stationid'];
        $form_propertytypeid = $productSession['propertytypeid'];
        $form_price = $productSession['price'];
        $form_floorsize = $productSession['length'];
        $form_date_available_from = $productSession['date_available_from'];
        
        $form_zoom = $productSession['zoom'];
        $form_x = $productSession['x'];
        $form_y = $productSession['y'];
        
    }
?>
<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>
<div class="post_product elife-section-content">
	<div class="elife-wrapper">
    	<form id="post_product" name="post_product" >
        	<div class="content">
				<div class="elife-wrapper">
					<div id="message" class="elife-error elife-hidden"></div>
					<div class="elife-left" style="width:100%">
						<input id="productid" name="productid" type="hidden" value="<?php echo $form_productid?>"/>
						<input type="radio" name="feature" value="sale" />&nbsp;<label>For Sale</label>&nbsp;&nbsp;&nbsp;
						<input type="radio" name="feature" value="rent" />&nbsp;<label>For Rent</label><br />
						<p>
							<span id="name_error" class="error-item"><?php echo $war_product_name_empty?></span>    
							<input id="name" type="text" class="elife-textbox" name="product_description[<?php echo $_SESSION['lang_session'];?>][name]" value="<?php echo $form_name?>" style="width:94%" maxlength="100" placeholder="Subject/Title for Ad"/><span>&nbsp;(100)</span>
						</p>
						<!--
						<p style="display:none">
							<input id="seo_url" type="text" class="elife-textbox" name="product_description[<?php echo $_SESSION['lang_session'];?>][seo_url]" value="<?php echo $form_seo_url ?>" style="width:46.3%" maxlength="200" placeholder="SEO url"/><span>&nbsp;(200)</span>
							<span id="seo_url_error" class="error-item"><?php echo $war_seo_url_empty?></span>
							
							<?php if ($product_description[$_SESSION['lang_session']]['seo_url'] == '') {?>
							<script>
								$(document).ready(function() {
									createSeo();	
								});
							</script>
							<?php } ?>
						</p>
						-->                    
					</div>				
					<div class="info-room elife-left">
						<div class="elife-left" style="width:48%" >
							<p>
								<span id="location_error" class="error-item"><?php echo $war_product_location_empty?></span>
								<input id="address" type="text" class="elife-textbox" name="location" value="<?php echo $form_location?>" placeholder="Address" style="width:436px"/><br />
							</p>
							
							<p class="elife-text-right" style="width:100%">
								<input type="text" class="elife-textbox" name="postalcode" value="<?php echo $form_postalcode?>" id="postalcode" placeholder="Postal Code" style="width:100px;"/><br />
							</p>
							
							<p>
								<label><?php echo $text_district?></label><br/>
								<select id="zoneid" name="zoneid" style="width:100%;" >
									<?php echo $cboZone?>
								</select><br />
								<input id="zonename" name="zonename" type="hidden" value="" />
							</p>
							
							<p>
								<label><?php echo $text_nearest_station?></label><br/>
								<select id="stationid" name="stationid" style="width:100%;" >
									<option value="">Not provided</option>
									<?php echo $cboStation?>
								</select>
								<input id="stationname" name="stationname" type="hidden" value="" />
							</p>
						</div>
						<div class="elife-right" style="width:48%" >
							<?php 
								include(DIR_TEMPLATE."module/form_map.tpl");
							?>
						</div>
					</div>
					<div class="attribute-room elife-left" style="width:100%">
						<table>
							<tr>
								<td width="12%"><label><?php echo $text_choose_property_type?>:</label></td>
								<td width="50%">
									<?php if(isset($arrPropertyType)) {?>
									<?php foreach($arrPropertyType as $propertyType) {?>
										<span style="display:table-cell; width:150px; height:10px">
											<input type="radio" id="propertytypeid-<?php echo $propertyType['propertytypeid']?>" name="propertytypeid" value="<?php echo $propertyType['propertytypeid']?>">&nbsp;<label for="propertytypeid-<?php echo $propertyType['propertytypeid']?>"><?php echo $propertyType['name']?></label>&nbsp;&nbsp;&nbsp;</option>
										</span>
									<?php }}?>
									<input id="propertytypename" name="propertytypename" type="hidden" value="" />
								</td>
							</tr>
							<tr>
								<td style="vertical-align:top"><label><?php echo $text_choose_room_type?>:</label></td>
								<td>
									<div>
									<?php $indexRoom = 0;?>
									<?php if(isset($arrRoomType)) {?>
									<?php foreach($arrRoomType as $roomType) {
										if($indexRoom != 0 && $indexRoom % 3 == 0) {?>
											<p/>
									<?php }?>
										<span style="display:table-cell; width:150px; height:30px">
											<input type="radio" id="roomtypeid-<?php echo $roomType['roomtypeid']?>" name="roomtypeid" value="<?php echo $roomType['roomtypeid']?>">&nbsp;<label for="roomtypeid-<?php echo $roomType['roomtypeid']?>"><?php echo $roomType['name']?></label>&nbsp;&nbsp;&nbsp;</option>
										</span>
									<?php
										$indexRoom++;    		
										} 
									?>
									<?php }?>
									</div>
									<input id="roomtypename" name="roomtypename" type="hidden" value="" />
								</td>
							</tr>
							<tr>
								<td><label><?php echo $text_price?>:</label></td>
								<td>
									<input id="price" class="elife-textbox number" placeholder="<?php echo $text_sin_unit ?>" type="text" name="price" value="<?php echo $form_price?>" style="width:290px" />&nbsp;<span>(<?php echo $text_sin_unit ?>)</span>
									<span id="price_error" class="error-item"><?php echo $war_product_price_empty?></span>
								</td>
							</tr>
							<tr>
								<td><label><?php echo $label_product_floor_size?>:</label></td>
								<td>
									<input id="floorsize" class="elife-textbox number" placeholder="<?php echo $text_floorsize_foot_unit ?>" type="text" name="length" value="<?php echo $form_floorsize ?>" style="width:290px" />&nbsp;<span>(<?php echo $text_floorsize_foot_unit ?>)</span>
									<span id="floorsize_error" class="error-item"><?php echo $war_product_floorsize_empty?></span>
								</td>
							</tr>
							<tr>
								<td><label><?php echo $label_date_available_from ?>:</label></td>
								<td>
									<input id="date_available_from" class="elife-textbox" type="text"  name="date_available_from" value="<?php echo $form_date_available_from ?>"/>
									<span id="date_available_from_error" class="error-item"><?php echo $war_product_availabledate_empty?></span>
								</td>
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
							<tr>
								<td><label><?php echo $text_image ?>:</label></td>
								<td>
									<a id="btnSelectImage" class="elife-button"><?php echo $button_select_image?></a>
									<?php echo $form_upload?>
									
									<!--
									<div class="post-image-item elife-left">
										<img src="images/resize-200x200/user3/3-1349406366_480x0.jpg" />
										<p>
											<a class="btndeleteimage"><img src="<?php echo DIR_IMAGE?>delete-icon.png" /></a>
										</p>
									</div>
									-->
								</td>
							</tr>
							
							<!--
							<tr>
								<td><label><?php echo $text_another_image ?>:</label></td>
								<td><a class="elife-button"><?php echo $button_select_another_image?></a></td>
							</tr>
							-->
							
						</table>
					</div>
					<div class="clearer">&nbsp;</div>
					<div class="elife-text-right mobile-step1">
						<a id="btnProcess" class="elife-button-process"><?php echo $button_process_step2?></a>
					</div>
				</div>
			</div>
            
        </form>
    </div>
</div>

<script type="text/javascript">

function createSeo() {
	$("#name").on('change keyup paste',function(){
		var name = $(this).val();
		name = bodau(name);
		name = name.toLowerCase(); // lowercase
		name = name.replace(/^\s+|\s+$/g, ''); // remove leading and trailing whitespaces
		name = name.replace(/\s+/g, '-'); // convert (continuous) whitespaces to one -
		name = name.replace(/[^a-z-]/g, ''); // remove everything that is not [a-z] or -			
		$("#seo_url").val(name); 
	});
}


//reload page step1
$(function() {
	
	$('#btnSelectImage').click(function(){
		$('#fileupload').click();
	});
	
	//feature
	var feature = "<?php echo $form_feature?>";
	if(feature != "") {
		var $radioFeatures = $('input:radio[name=feature]');
		if($radioFeatures.is(':checked') === false) {
			$radioFeatures.filter("[value="+feature+"]").prop('checked', true);
		}
	} else {
		var $firstFeature = $( "input:radio[name='feature']:first");
		$firstFeature.prop('checked', true);
	}
	
	//zoneid
	var zoneid = "<?php echo $form_zoneid?>";
	if(zoneid != "") {
		$('#zoneid').val(zoneid);
	}
	
	//stationid
	var stationid = "<?php echo $form_stationid?>";
	if(stationid != "") {
		$('#stationid').val(stationid);
	}
	
	//propertytypeid
	var propertytypeid = "<?php echo $form_propertytypeid?>";
	if(propertytypeid != "") {
		var $radioPropertyTypes = $('input:radio[name=propertytypeid]');
		if($radioPropertyTypes.is(':checked') === false) {
			$radioPropertyTypes.filter("[value="+propertytypeid+"]").prop('checked', true);
		} 
	} else {		
		var $firstPropertyType = $( "input:radio[name='propertytypeid']:first");
		$firstPropertyType.prop('checked', true);
	}
	
	//roomtypeid
	var roomtypeid = "<?php echo $form_roomtypeid ?>";
	if(roomtypeid != "") {
		var $radioRoomTypes = $('input:radio[name=roomtypeid]');
		if($radioRoomTypes.is(':checked') === false) {
			$radioRoomTypes.filter("[value="+roomtypeid+"]").prop('checked', true);
		} 
	} else {		
		var $firstRoomType = $( "input:radio[name='roomtypeid']:first");
		$firstRoomType.prop('checked', true);
	}
	
	
});

$(function() {
	var url = "?route=module/postproduct/poststep1";
	$('#btnProcess').on('click', function(){
		
		//validate
		var isValid = true;
		var name = $('#name').val();
		var seo_url = $('#seo_url').val();
		var location = $('#address').val();
		var price = $('#price').val();
		var floorsize = $('#floorsize').val();
		var date_available_from = $('#date_available_from').val();
		
		if(name == '') {
			$('#name_error').show('slow');
			$('#name').focus();
			isValid = false;
		} else {
			$('#name_error').hide();
		}
		
		/*
		if(isValid && seo_url == '') {
			$('#seo_url_error').show('slow');
			$('#seo_url').focus();
			isValid = false;
		} else {
			$('#seo_url_error').hide();
		}
		*/
		
		if(isValid && location == '') {
			$('#location_error').show('slow');
			$('#address').focus();
			isValid = false;
		} else {
			$('#location_error').hide();
		}
		
		if(isValid && price == '0') {
			$('#price_error').show('slow');
			$('#price').focus();
			isValid = false;
		} else {
			$('#price_error').hide();
		}
		
		if(isValid && floorsize == '0') {
			$('#floorsize_error').show('slow');
			$('#floorsize').focus();
			isValid = false;
		} else {
			$('#floorsize_error').hide();
		}
		
		if(isValid && date_available_from == '') {
			$('#date_available_from_error').show('slow');
			$('#date_available_from').focus();
			isValid = false;
		} else {
			$('#date_available_from_error').hide();
		}
		
		//zonename
		var zonename = $("#zoneid option:selected").text();
		$('#zonename').val(zonename);
		
		//stationname
		var stationname = $("#stationid option:selected").text();
		$('#stationname').val(stationname);
		
		//propertytypename
		var propertytypename = $("input[name=propertytypeid]:checked + label").text();
		$('#propertytypename').val(propertytypename);
		
		//roomtypename
		var roomtypename = $("input[name=roomtypeid]:checked + label").text();
		$('#roomtypename').val(roomtypename);
		
		var productid = $("#productid").val();
		if(isValid) {								  
			$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
			$.post(url, $('#post_product').serialize(), function(data){
				if(data == "true") {
					
					var paramAnonymous = "";
					var anonymous = "<?php echo $_GET['anonymous'] ?>";
					if(anonymous != '') {
						paramAnonymous = "&anonymous=true";
					}
					
					if(productid == "") {
						window.location.href = "free-listing.html?step=2" + paramAnonymous;
					} else {
						window.location.href = "free-listing.html?step=2&productid=" + productid + paramAnonymous;
					}
				} else {
					$('#message').html(data).show('slow');
					$.unblockUI();
					window.scrollTo(0,0);
				}
			});
		}
	});
});			



</script>