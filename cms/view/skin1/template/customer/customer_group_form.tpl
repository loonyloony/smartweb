<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section" id="sitemaplist">

	<div class="section-title">
    	<div class="titletext left"><?php echo $label_heading_title ?></div>
     	<div class="button right">
            <input type="button" value="<?php echo $button_save ?>" class="button" onclick="save()"/>
            <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('<?php echo $cancel?>')"/>
        </div>
        <div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<input type="hidden" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']?>" />   
        	
            <div id="error" class="error" style="display:none"></div>
            
        	<div id="container">
            	<ul>
                	<li class="tabs-selected"><a href="#fragment-editor"><?php echo $text_editor ?></a></li>
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
                                	<td width="150px;"><label><?php echo $label_customer_group_name ?>:</label></td>
                                    <td>
                                    	<input type="text" class="text" name="customer_group_description[<?php echo $key ?>][name]" value="<?php echo $customer_group_description[$key][name] ?>" size="60"/>
                                    </td>
                                </tr>

                                <tr>
                                	<td><label><?php echo $text_description ?>:</label></td>
                                    <td>
                                    	<textarea name="customer_group_description[<?php echo $key ?>][description]" id="editor<?php echo $count ?>" cols="80" rows="10"><?php echo $customer_group_description[$key][description] ?></textarea>
                                    </td>
                                </tr>
                                	<script language="javascript">
                                    	$(document).ready(function(){
											setCKEditorType("editor<?php echo $count ?>",2);
										});
                                    </script>
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

<script src="<?php echo DIR_JS?>jquery.tabs.pack.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf-8">

$(document).ready(function() {
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	$("#provincecity").load('?route=common/country/getzonescb&countrycode='+$("#country").val()+'&selectzone=<?php echo $user["provincecity"]?>');
});

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	
	var countLanguage = eval("<?php echo count($language) ?>");
	countLanguage = (countLanguage * 1) + 1;
	for(i=1; i<countLanguage; i++){
		var value = 'editor'+i;
		var oEditor = CKEDITOR.instances[value]	;
		var pageValue = oEditor.getData();
		$('textarea#' + value).val(pageValue);
	}
	
	$.post("?route=customer/customergroup/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=customer/customergroup";
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