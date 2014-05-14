<div class="section" id="sitemaplist">

	<div class="section-title"><?php echo $title_heading ?></div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<div class="right">
            	<a onclick="save()" class="button"><?php echo $button_save ?></a>
            	<a onclick="linkto('<?php echo $cancel ?>')" class="button"><?php echo $button_cancel ?></a>
     	        <input type="hidden" name="supportid" value="<?php echo $supportonline['supportid']?>">
                <input type="hidden" name="addonid" value="<?php echo $_GET['addonid']?>">
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
                        	<li class="<?php echo $class ?>"><a href="#tab-edit<?php echo $key ?>"><?php echo $item ?></a></li>
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
                        <div id="tab-edit<?php echo $key ?>">

                			<table>
                            	<tr>
                                	<td><label><?php echo $label_support_online_name ?></label></td>
                                    <td><input type="text" class="text" name="support_description[<?php echo $key ?>][title]" value="<?php echo $support_description[$key][title] ?>" size="60" /></td>
                                </tr>
                            	<tr>
                                	<td><label><?php echo $text_summary ?>:</label></td>
                                    <td>
                                    	<textarea name="support_description[<?php echo $key ?>][description]" id="editor<?php echo $count ?>" cols="80" rows="10"><?php echo $support_description[$key][description] ?></textarea>
                                    </td>
                                </tr>
								<script language="javascript">
                                    $(document).ready(function(){
                                        setCKEditorType("editor<?php echo $count ?>",1);
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
                
                <div id="fragment-information">
                	<table>
                    	<tr>
                        	<td width="150px"><label><?php echo $text_phone ?>:</label></td>
                            <td><input type="text" name="telephone" value="<?php echo $supportonline['telephone']?>" class="text" size=60 /></td>
                        </tr>
                        
                        <tr>
                        	<td><label for="image">Yahoo:</label></td>
                            <td><input type="text" name="yahoo" value="<?php echo $supportonline['yahoo']?>" class="text" size=60 /></td>
                        </tr>
                        
                        <tr>
                        	<td><label>Skype:</label></td>
                            <td><input type="text" name="skype" value="<?php echo $supportonline['skype']?>" class="text" size=60 /></td>
                        </tr>
                    </table>
                </div>
            </div>
            
        </form>
    
    </div>
    
</div>

<script language="javascript">

$(document).ready(function() {
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	$('#sub_preview').attr("src", "<?php echo $manufacturer['imagepreview'] ?>");	
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
	
	$.post("?route=sidebar/supportonline/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				var url = "";
				var addonid = "<?php echo $_GET['addonid'] ?>";
				if(addonid != ""){
					url += '&addonid=' + addonid;	
				}
				window.location = "?route=sidebar/supportonline" + url;
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