<div class="section" id="sitemaplist">

	<div class="section-title">
    	<div class="texttitle left"><?php echo $title_heading ?></div>
        <div class="button right">
            <a onclick="save()" class="button"><?php echo $button_save ?></a>
            <a onclick="linkto('<?php echo $cancel ?>')" class="button"><?php echo $button_cancel ?></a>
        </div>
    	<div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<input type="hidden" name="weblinkid" value="<?php echo $weblink['weblinkid']?>">
            <input type="hidden" name="addonid" value="<?php echo $_GET['addonid']?>">
           
        	<div id="error" class="error" style="display:none"></div>
            
            <div>
            	<table>
                	<tr>
                        <td width="100px;"><label><?php echo $text_title ?></label></td>
                        <td><input type="text" class="text" name="weblink_description[vn][title]" value="<?php echo $weblink_description[vn][title] ?>" size="60" /></td>
                    </tr>
                    <tr>
                        <td width="100px"><label><?php echo $label_link ?></label></td>
                        <td><input type="text" name="link" value="<?php echo $weblink['link']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td width="100px"><label><?php echo $text_description ?></label></td>
                        <td>
                       		<textarea id="imagepath" name="image" cols="50" rows="7" ><?php echo $weblink['image']?></textarea>
                        </td>
                    </tr> 
                </table>
            </div>
            
            
            
        </form>
    
    </div>
    
</div>

<script language="javascript">


function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
		
	$.post("?route=splash/banner/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				var url = "";
				var addonid = "<?php echo $_GET['addonid'] ?>";
				if(addonid != ""){
					url += '&addonid=' + addonid;	
				}
				window.location = "?route=splash/bannertext" + url;
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