<div class="section">
	<form id="frmlink" name="frm" action="" method="post" enctype="multipart/form-data">
	<div class="section-title">
    	<div class="titletext left"><?php echo $heading_title?></div>
        <div class="button right">
            <input type="button" value="<?php echo $button_save ?>" class="button" onclick="save()"/>
            <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('index.php')"/>
            <input type="hidden" name="sitemapid" value="<?php echo $link['sitemapid']?>" />
        </div>
    	<div class="clearer"></div>
    </div>
    
    <div class="section-content padding1">
    	
        	<div class="error">
            	<?php foreach($errors as $item) {?>
                	<?php echo $item?>
                <?php }?>
            </div>
        	<table class="form-table">
            	<tr>
                    <th width="100px"><label><?php echo $label_link ?></label></th>
                    <td>
                    	<input type="text" class="text" value="<?php echo $link['hyperlink'] ?>" name="hyperlink" size="60" />
                    </td>
                </tr>
            </table>
            
        	<div id="container">
              <ul>
              	<?php foreach($languages as $languageid => $languagename) {?>
                <li><a href="#tab<?php echo $languageid?>"><span><?php echo $languagename?></span></a></li>
                <?php } ?>
              </ul>
              <?php foreach($languages as $languageid => $languagename) {?>
              <div id="tab<?php echo $languageid?>">
              	<table class="form-table">
                    <tr>
                        <th width="100px"><label><?php echo $lbl_title ?></label></th>
                        <td>
                            <input type="text" id="sitemapname_<?php echo $languageid?>" name="link_<?php echo $languageid?>[sitemapname]" value="<?php echo $link[$languageid]['sitemapname']?>" class="text" size="60"/>
                        </td>
                    </tr>
                    <tr>
                        <th width="100px"><label><?php echo $text_description ?></label></th>

                        <td>
                            <input type="text" id="description_<?php echo $languageid?>" name="link_<?php echo $languageid?>[description]" value="<?php echo $link[$languageid]['description']?>" class="text" size="60"/>
                        </td>
                    </tr>
                    <tr>
                        <th width="100px"><label><?php echo $text_meta_keyword ?></label></th>
                        <td>
                        	<textarea cols="60" rows="6" id="meta_keyword_<?php echo $languageid?>" name="link_<?php echo $languageid?>[meta_keyword]"><?php echo $link[$languageid]['meta_keyword']?></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th width="100px"><label><?php echo $text_meta_description ?></label></th>
                        <td>
                        	<textarea cols="60" rows="6" id="meta_description_<?php echo $languageid?>" name="link_<?php echo $languageid?>[meta_description]"><?php echo $link[$languageid]['meta_description']?></textarea>
                        </td>
                    </tr>
                </table>
              </div>
              <?php } ?>
              
              
          	</div>
        	
        
    </div>
    </form>
</div>

<script language="javascript">
$(document).ready(function() {
       $('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'normal' });
	   $("SELECT").selectBox();
});
function save()
{
	$.blockUI({ message: "<h1>Please Wait</h1>" }); 
	$.post("?route=module/link/save", $("#frmlink").serialize(),
		function(data){
			if(data != "true")
			{
				$.blockUI({ message: data });
				$('.blockOverlay').attr('title','Click to unblock').click($.unblockUI); 
				//setTimeout($.unblockUI(),3000);
			}
			else
			{
				linkto("?route=module/link&sitemapid=<?php echo $_GET['sitemapid'] ?>");	
			}
		}
	);
}
</script>