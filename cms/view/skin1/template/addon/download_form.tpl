<div class="section" id="sitemaplist">

	<div class="section-title">
    	<div class="texttitle left">Download</div>
        <div class="button right">
            <a onclick="save()" class="button"><?php echo $button_save ?></a>
            <a onclick="linkto('<?php echo $cancel ?>')" class="button"><?php echo $button_cancel ?></a>
        </div>
    	<div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
            <input type="hidden" name="addonid" value="<?php echo $_GET['addonid']?>">
            
            <input type="hidden" name="weblinkid" value="<?php echo $_GET['weblinkid']?>">
           
        	<div id="error" class="error" style="display:none"></div>
            
            <div>
                <table>
                    <tr>
                        <td width="150px"><label>Sitemap</label></td>
                        <td>
                            <select id="link" name="link">
                                <?php echo $sitemap ?>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            
            <div>
            	<div class="right">
            		<a onclick=uploadMultiFileDownload("file") class="button control_form"><?php echo $text_add_row ?></a>
                </div>
				<div class="clearer"></div>
            	<table class="data-table " style="margin-top:10px;" id="download">
                    <tr>
                        <th><?php echo ($_GET['route'] == 'module/download') ? $lbl_file : $text_image ?></th>
                        <th> <?php echo $entry_title ?> </th>
                        <th> <?php echo $column_control ?> </th>
                    </tr>
                
                    <?php 
                        $index = 0;
                        if(count($weblinks)){ foreach($weblinks as $item){ 
                    ?>
                    <tr>
                        <td>
                            <div class='file_item' style="margin-bottom:10px;">
                                <a class='uploadfilelink'>
                                    <img class='video-image-contact' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>button/dinhkem.png' />
                                    <span id="fileurlpreview<?php echo $index?>"><?php echo $item['image'] ?></span>
                                </a>
                                <br><input id="filepath<?php echo $index?>" type="hidden" name="weblink[<?php echo $index ?>][image]" value="<?php echo $item['image']?>"> 
                                <div class="clearer"></div>
                            </div>
                            <a onclick="elifeupload_onefile('filepath<?php echo $index?>','fileurlpreview<?php echo $index?>')" class="button"><?php echo $entry_file ?></a>
                        </td>
                        
                        <td>
                            <?php 
                            foreach($item['title'] as $itm){ ?>
                            <input  type='text' class='text left' value="<?php echo $itm['title'] ?>" size='80' name="weblink[<?php echo $index ?>][weblink_description][<?php echo $itm['languageid'] ?>]" />
                            <div class="icon_language left">
                            <img class="icon_language" width="32" height="26" src="<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $itm['languageid'] ?>.png "  /></div>
                            <?php }?>
                        </td>
                        <td>
                            <a class="btndeletefile button"><?php echo $button_delete?></a>
                        </td>
                    </tr>
                    <?php $index++; } } ?>
                </table>
            </div>
            
            
        </form>
    
    </div>
    
</div>

<script language="javascript">
var index=parseInt("<?php echo count($weblinks) ?>");
function uploadMultiFileDownload(filetype){
	index++;
	var imagetype="";
	if(filetype=="file"){
		imagetype="dinhkem";
	}
	if(filetype=="video"){
		imagetype="next";
	}
	var img = "";
	img	+= "<div class='file_item' style='margin-bottom:10px;'>";
	img += "<a class='uploadfilelink'>";
	img += "<img class='video-image-contact' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>button/" + imagetype + ".png' />";
	img += "<span id='fileurlpreview" + index + "'></span>";
	img += "<br />";
	img += "<input id='filepath" + index + "' type='hidden' name='weblink[" + index + "][image]'/>";
	img += "<a onclick=elifeupload_onefile('filepath" + index + "','fileurlpreview" + index + "') class='button'><?php echo $entry_file ?></a>";
	img += "<div class='clearer'></div>";
	img += "</div>"
	
					
	var strlanguage = ""
	strlanguage +="<?php foreach($arr_language as $key=>$value){ ?>";
	strlanguage +="<input type='text' class='text left' size='80' name=weblink[" + index + "][weblink_description][<?php echo $key ?>] />   <div class='icon_language left'><img class='icon_language' width='32' height='24' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $key ?>.png'  /></div><br>";
	strlanguage +="<?php }?>";
		
	var control='<a class="btndeletefile button"><?php echo $button_delete ?></a>';

	var row	="<tr><td width='150px'>"+img+"</td><td>"+strlanguage+"</td><td>"+control+"</td></tr>";
	$('#download').append(row);
	
}


//xóa subimage		
$('.btndeletefile').live('click',function(){
	$(this).parent().parent().remove();
});

$('.uploadfilelink').live('click',function(){
	var url = $(this).parent().find("span").html();
	if(url != "")
	{
		window.open('images/root/'+url);
	}
});

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
		
	$.post("?route=addon/download/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				var url = "";
				var addonid = "<?php echo $_GET['addonid'] ?>";
				if(addonid != ""){
					url += '&addonid=' + addonid;	
				}
				window.location = "?route=addon/download" + url;
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