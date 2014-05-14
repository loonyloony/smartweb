<div class="section">
	<form method="post" enctype="multipart/form-data" name="frmform" id="frmform">
    <div class="section-title">
        <div class="titletext left"><?php echo $config_title?></div>
        <div class="button right">
        <input type="button" value="<?php echo $button_save ?>" class="button" onclick="save()"/>
        <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('<?php echo $config_backurl?>')"/>
        
        <input type="hidden" name="id" value="<?php echo $sitemap['id']?>" />
        <input type="hidden" name="sitemapid" value="<?php echo $sitemap['sitemapid']?>" />
        <input type="hidden" name="refersitemap" value="[<?php echo $sitemap['sitemapid']?>]" />
        
        <input type="hidden" name="mediaid" value="<?php echo $items['common']['mediaid']?>" />
        <input type="hidden" name="mediatype" value="<?php echo $mediatype?>" />
        
        <input type="hidden" id="handler" />
        <input type="hidden" id="outputtype" />
        
        <input type="hidden" id="imageid" name="imageid" value="<?php echo $imageid?>" />
        <input type="hidden" id="imagethumbnail" name="imagethumbnail" value="<?php echo $imagethumbnail?>" />
        
        </div>
        <div class="clearer"></div>
    </div>
    
	<div class="section-content padding1">
    	
        <div id="error" class="ben-error" style="display:none;margin-left:10px;color:red"></div>
               
        <div id="container">
        	<?php include(DIR_TEMPLATE."media/form_tab_container.tpl");?>
            
            <?php 
            	if(in_array("tab_map",$arr_tabs)){
                    include(DIR_TEMPLATE."media/form_tab_map.tpl");
                }
                
                if(in_array("tab_editor",$arr_tabs)){
                    include(DIR_TEMPLATE."media/form_tab_editor.tpl");
                }
                
                if(in_array("tab_faq",$arr_tabs)){
                    include(DIR_TEMPLATE."media/form_tab_faq.tpl");
                }
                
                if(in_array("tab_information",$arr_tabs)){
                    include(DIR_TEMPLATE."media/form_tab_information.tpl");
                }
                
                if(in_array("tab_image",$arr_tabs)){
                    include(DIR_TEMPLATE."media/form_tab_image.tpl");
                }
                
                if(in_array("tab_file",$arr_tabs)){
                    include(DIR_TEMPLATE."media/form_tab_file.tpl");
                }
                
                if(in_array("tab_video",$arr_tabs)){
                    include(DIR_TEMPLATE."media/form_tab_video.tpl");
                }
                
                
            ?>
        </div>
		
        
        
        
    </div>
    </form>
</div>


<script>
$(document).ready(function() {
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
});
</script>