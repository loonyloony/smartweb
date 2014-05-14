<div class="section" id="sitemaplist">

	<div class="section-title"><?php echo $title_heading_option?></div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<div class="right">
            	<a onclick="save()" class="button"><?php echo $button_save ?></a>
            	<a onclick="linkto('?route=product/option')" class="button"><?php echo $button_cancel ?></a>
     	        <input type="hidden" name="optionid" value="<?php echo $option['optionid']?>">
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
                                	<td width="150px"><label><?php echo $label_option_name ?>:</label></td>
                                    <td>
                                    	<input type="text" class="text" size=60 name="option_description[<?php echo $key ?>][name]" value="<?php echo $option_description[$key]['name'] ?>" />
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
                        	<td width="150px"><label><?php echo $label_option_type ?></label></td>
                            <td>
                            	<select id="optiontype" name="type">
                                <?php if(isset($optiontype)){ foreach($optiontype as $type){ ?>
                                	<option value="<?php echo $type ?>"><?php echo $type ?></option>
                                <?php } } ?>
                                </select>	
                            </td>
                        </tr>
                        
                        <tr>
                        	<td colspan="2">
                            	<div class="right">
                                    <a onclick="addOptionValue()" class="button"><?php echo $button_add ?></a>
                                </div>
                                <div class="clearer"></div>
                                <table class="data-table" cellpadding="0" cellspacing="0">
                                    <thead>
                                        <tr class="tr-head">
                                            <th width="40%"><?php echo $label_option_value_name ?></th>
                                            <th width="30%"><?php echo $text_image ?></th>
                                            <th width="20%"><?php echo $text_sortorder ?></th>
                                            <th width="10%"></th>
                                        </tr>
                                    </thead>
                        
                                    <tbody id="listoptionvalue">
                                        
                                    </tbody>   
                                </table>
                            </td>
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
	
	$('#sub_preview').attr("src", "<?php echo $option['imagepreview'] ?>");
	$('#optiontype').val("<?php echo $option['type'] ?>");
	
	var optionid = "<?php echo $_GET['optionid'] ?>";
	if(optionid != ''){
		option.show();
	}
});

function OptionValue(){
	this.index = 0;
	var arrayOfLanguage = <?php echo json_encode($language) ?>;
	
	this.show = function(){
		$.post("?route=product/option/getOptionValueDescription", {optionid : "<?php echo $_GET['optionid'] ?>"},
			function(data){
				data = jQuery.parseJSON(data);
				for(var i in data.option_value){				
					var celloptionvaluedescription = "<td>";
					for(var j in data.option_value[i].option_value_description){
						celloptionvaluedescription += "<input type='text' class='text' size='50' value='" + data.option_value[i].option_value_description[j].name + "' name='option_value[" + option.index + "][option_value_description][" + data.option_value[i].option_value_description[j].languageid +"][name]' /> <img src='<?php echo HTTP_SERVER.DIR_IMAGE ?>" + data.option_value[i].option_value_description[j].languageid + ".jpg' />";
					}
					celloptionvaluedescription += "</td>";
					var celloptionvalueimage = "<td><img id='imagevaluepreview" + option.index + "' imagetype='images/resizepng-200x160/' src='images/resizepng-200x160/" + data.option_value[i].image + "' />";
					celloptionvalueimage += "<input type='hidden' class='text' id='imagevaluepath" + option.index + "' name='option_value[" + option.index + "][image]' value='" + data.option_value[i].image + "' />";
					celloptionvalueimage += "<a onclick=elifeupload_onefile('imagevaluepath" + option.index + "','imagevaluepreview" + option.index + "') class='button'><?php echo $button_selectimage ?></a>";
					celloptionvalueimage += "  <a class='button'><?php echo $button_delete ?></a></td>"
					var celloptionvaluesortorder = "<td><input type='text' class='text' value='" + data.option_value[i].sortorder + "' name='option_value[" + option.index + "][sortorder]' /></td>";
					var celloptionvaluetool = "<td><a onclick='deleteOptionValue(" + option.index + ")' class='button'><?php echo $button_delete ?></a></td>";
					
					var row = "<tr id='rowOptionValue" + option.index + "'>";
					row += celloptionvaluedescription;
					row += celloptionvalueimage;
					row += celloptionvaluesortorder;
					row += celloptionvaluetool;
					row +="</tr>";
					$('#listoptionvalue').append(row);
					option.index++;
				}
			});
	}
	
	this.add = function(){
		var celloptionvaluedescription = "<td>";
		$.each(arrayOfLanguage, function(index, value){
			celloptionvaluedescription += "<input type='text' class='text' size='50' value='' name='option_value[" + option.index + "][option_value_description][" + index +"][name]' /> <img src='<?php echo HTTP_SERVER.DIR_IMAGE ?>" + value + ".jpg' />";
			celloptionvaluedescription += "<br />";
		});
		celloptionvaluedescription += "</td>";
		var celloptionvalueimage = "<td><img id='imagepreview' imagetype='images/resizepng-200x160' src='images/resizepng-200x160/<?php echo $product['image']?>' />";
		celloptionvalueimage += "<a onclick=elifeupload_onefile('imagevaluepath" + option.index + "','imagevaluepreview" + option.index + "') class='button'><?php echo $button_selectimage ?></a><input type='hidden' class='text' id='imagepath' name='option_value[" + option.index + "][image]' /></td>";	
		var celloptionvaluesortorder = "<td><input type='text' class='text' value='1' name='option_value[" + option.index + "][sortorder]' /></td>";
		var celloptionvaluetool = "<td><a onclick='deleteOptionValue(" + option.index + ")' class='button'><?php echo $button_delete ?></a></td>";
		
		var row = "<tr id='rowOptionValue" + option.index + "'>";
		row += celloptionvaluedescription;
		row += celloptionvalueimage;
		row += celloptionvaluesortorder;
		row += celloptionvaluetool;
		row +="</tr>";
		$('#listoptionvalue').append(row);
		option.index++;
	}
}

var option = new OptionValue();

function addOptionValue(){
	option.add();	
}

function deleteOptionValue(id){
	$('#rowOptionValue' + id).remove();
}

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
		
	$.post("?route=product/option/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=product/option";
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
