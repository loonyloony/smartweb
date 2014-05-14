<div class="section" id="sitemaplist">

	<div class="section-title">
    	<div class="titletext left">
    		<?php echo $title_heading_filter?>
        </div>
        <div class="button right">
            <a onclick="save()" class="button"><?php echo $button_save ?></a>
            <a onclick="linkto('?route=product/filter')" class="button"><?php echo $button_cancel ?></a>
        </div>
        <div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<input type="hidden" name="filterid" value="<?php echo $filter['filterid']?>"> 	
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
                                	<td width="150px"><label><?php echo $label_filter_name ?>:</label></td>
                                    <td>
                                    	<input type="text" class="text" size=60 name="filter_description[<?php echo $key ?>][name]" value="<?php echo $filter_description[$key]['name'] ?>" />
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
                        	<td width="150px"><label><?php echo $label_filter_type ?></label></td>
                            <td>
                            	<select id="filtertype" name="type">
                                <?php if(isset($filtertype)){ foreach($filtertype as $type){ ?>
                                	<option value="<?php echo $type ?>"><?php echo $type ?></option>
                                <?php } } ?>
                                </select>	
                            </td>
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
	
	$('#sub_preview').attr("src", "<?php echo $filter['imagepreview'] ?>");
	$('#filtertype').val("<?php echo $filter['type'] ?>");
});

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
		
	$.post("?route=product/filter/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=product/filter";
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
