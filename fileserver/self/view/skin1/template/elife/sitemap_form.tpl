<div class="section">
	<form id="frmSiteMap" name="frm" action="" method="post" enctype="multipart/form-data">
	<div class="section-title">
    	<div class="titletext left"><?php echo $heading_title?></div>
        <div class="button right">
            <input type="button" value="<?php echo $button_save ?>" class="button" onclick="save()"/>
            <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('?route=elife/sitemap')"/>
            <input type="hidden" name="sitemap[sitemapid]" value="<?php echo $sitemap['sitemapid']?>" />
            <input type="hidden" name="sitemap[position]" value="<?php echo $sitemap['position']?>" />
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
                    <th width="100px"><label><?php echo $lbl_sitemapparent?></label></th>
                    <td>
                        <select id="sitemapparent" name="sitemap[sitemapparent]">
                        	<?php echo $cbx_sitemapparent?>
                        </select>
                        &nbsp;&nbsp;
                        <label><?php echo $label_module_type?></label>
                        <select id="moduleid" name="sitemap[moduleid]">
                        	<?php echo $cbx_moduleid?>
                        </select>
                        
                    </td>
                </tr>
                <tr>
                    <th width="100px">
                    	<label>SEO Url</label>
                    </th>
                    <td>
                        <input type="text" id="seo_url" name="sitemap[seo_url]" value="<?php echo $sitemap['seo_url']?>" class="text" size="60"/>
                        <p class="other">Từ không dấu tiếng việt, Không dùng khoảng trắng, thay thế bằng dấu "-", Ví dụ: gioi-thieu</p>
                    </td>
                </tr>
                <tr>
                    <th width="100px"><label>Vị trí xuất hiện</label></th>
                    <td>
                        <?php echo $chk_top_mainmenu?>&nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $chk_top_footermenu?>
                    </td>
                </tr>
                <tr>
                    <th width="100px"><label><?php echo $lbl_layout?></label></th>
                    <td>
                        <select id="layoutid" name="sitemap[layoutid]">
                        	<?php echo $cbx_layout?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th width="100px"><label><?php echo $lbl_status?></label></th>
                    <td>
                        <?php echo $rdb_status?>
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
                            <input type="text" id="sitemapname_<?php echo $languageid?>" name="sitemap_<?php echo $languageid?>[sitemapname]" value="<?php echo $sitemap[$languageid]['sitemapname']?>" class="text" size="60"/>
                        </td>
                    </tr>
                    <tr>
                        <th width="100px"><label><?php echo $text_description ?></label></th>
                        <td>
                            <input type="text" id="description_<?php echo $languageid?>" name="sitemap_<?php echo $languageid?>[description]" value="<?php echo $sitemap[$languageid]['description']?>" class="text" size="60"/>
                        </td>
                    </tr>
                    <tr>
                        <th width="100px"><label><?php echo $text_meta_keyword ?></label></th>
                        <td>
                        	<textarea cols="60" rows="6" id="meta_keyword_<?php echo $languageid?>" name="sitemap_<?php echo $languageid?>[meta_keyword]"><?php echo $sitemap[$languageid]['meta_keyword']?></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th width="100px"><label><?php echo $text_meta_description ?></label></th>
                        <td>
                        	<textarea cols="60" rows="6" id="meta_description_<?php echo $languageid?>" name="sitemap_<?php echo $languageid?>[meta_description]"><?php echo $sitemap[$languageid]['meta_description']?></textarea>
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
	$.post("?route=elife/sitemap/save", $("#frmSiteMap").serialize(),
		function(data){
			if(data != "true")
			{
				$.blockUI({ message: data });
				$('.blockOverlay').attr('title','Click to unblock').click($.unblockUI); 
				//setTimeout($.unblockUI(),3000);
			}
			else
			{
				linkto("?route=elife/sitemap");	
			}
		}
	);
}
</script>