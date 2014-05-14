<div class="section" id="sitemaplist">

	<div class="section-title"><?php echo $title_heading_additional_source?></div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<div class="right">
            	<a onclick="save()" class="button"><?php echo $button_save ?></a>
            	<a onclick="linkto('?route=property/additionalsource')" class="button"><?php echo $button_cancel ?></a>
     	        <input type="hidden" name="additionalsourceid" value="<?php echo $additionalsource['additionalsourceid']?>"/>
            </div>
            <div class="clearer">&nbsp;</div>
        	<div id="error" class="error" style="display:none"></div>
            <div id="container">
            	<ul>
                	<li class="tabs-selected"><a href="#fragment-information"><?php echo $text_information ?></a></li>
                	<li><a href="#fragment-editor"><?php echo $text_editor ?></a></li>
                </ul>
                
                <div id="fragment-information">
                	<table>
                    	<tr>
                        	<td width="150px"><label><?php echo $text_additionalsource_title ?>:</label></td>
                            <td><input type="text" id="title" name="title" value="<?php echo $additionalsource['title']?>" class="text" size=60 /></td>
                        </tr>
                        <tr>
                        	<td><label><?php echo $text_additionalsource_type?></label></td>
                            <td>
                            	<select id="type" name="type">
                                	<option value="radio">radio</option>
                                    <option value="checkbox">checkbox</option>
                                    <option value="dropdown">dropdown</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
                
                
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
                                	<td>
                                    	<label><?php echo $text_additionalsource_name ?>:</label>
                                    </td>
                                    <td>
                                    	<input type="textbox" class="text" size="80" name="additional_source_description[<?php echo $key ?>][sourcename]" id="editor<?php echo $count ?>" value="<?php echo $additional_source_description[$key]['sourcename'] ?>" />
                                    </td>
                                </tr>
                                    <?php $count++ ?>
                                <tr>
                                	<td>
                                    	<label><?php echo $text_additionalsource_values ?>:</label>
                                    </td>
                                    <td>
                                    	<textarea name="additional_source_description[<?php echo $key ?>][sourcevalue]" id="editor<?php echo $count ?>" cols="80" rows="10"><?php echo $additional_source_description[$key]['sourcevalue'] ?></textarea>
                                        <p>Ex: value1, value2, value3</p>
                                    </td>
                                </tr>
                                	<?php $count++ ?>
                            </table>
						
                        </div>
						<?php 
                        		}
                        	}
                        ?>
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
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	$('#type').val("<?php echo $additionalsource['type'];?>");
});

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	
	var countLanguage = eval("<?php echo count($language) ?>");
	countLanguage = (countLanguage * 2) + 1;
	
	$.post("?route=property/additionalsource/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=property/additionalsource";
			}
			else
			{
			
				$('#error').html(data).show('slow');
				$.unblockUI();
				
			}
			
		}
	);
}
</script>
