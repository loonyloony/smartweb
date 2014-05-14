<div id="tab_file">
<a onclick=uploadMultiFileDownload("file") class="button control_form"><?php echo $text_add_row ?></a>
<div class="clearer"></div>
<table class="data-table " style="margin-top:10px;" id="download">
    <tr>
        <th><?php echo ($_GET['route'] == 'module/download') ? $lbl_file : $text_image ?></th>
        <th> <?php echo $entry_title ?> </th>
        <th> <?php echo $column_control ?> </th>
    </tr>

    <?php 
    	$index = 0;
    	if(count($items['file'])){ foreach($items['file'] as $image){ 
    	$index++;
    ?>
    <tr>
        <td>
            <div class='file_item' style="margin-bottom:10px;">
            	<a class='uploadfilelink'>
                	<img class='video-image-contact' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>button/dinhkem.png' />
                	<span id="fileurlpreview<?php echo $index?>"><?php echo $image['filepath'] ?></span>
                </a>
                <br><input id="filepath<?php echo $index?>" type="hidden" name="subfilepath[]" value="<?php echo $image['filepath']?>"> 
                <div class="clearer"></div>
            </div>
            <a onclick="elifeupload_onefile('filepath<?php echo $index?>','fileurlpreview<?php echo $index?>')" class="button"><?php echo $entry_file ?></a>
        </td>
        
        <td>
            <?php 
            foreach($image['imagetitle'] as $item){ ?>
            <input  type='text' class='text left' value="<?php echo $item['title'] ?>" size='80' name="subfiletitle<?php echo $item['languageid'] ?>[]" />
            <div class="icon_language left">
            <img class="icon_language" width="32" height="26" src="<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $item['languageid'] ?>.png "  /></div>
            <?php }?>
        </td>
        <td>
        	<a class="btndeletefile button"><?php echo $button_delete?></a>
        </td>
    </tr>
    <?php } } ?>
</table>
</div>


<script>
var index=parseInt("<?php echo count($items['file']) ?>");
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
	img += "<input id='filepath" + index + "' type='hidden' name='subfilepath[]'/>";
	img += "<a onclick=elifeupload_onefile('filepath" + index + "','fileurlpreview" + index + "') class='button'><?php echo $entry_file ?></a>";
	img += "<div class='clearer'></div>";
	img += "</div>"
	
					
	var strlanguage = ""
	strlanguage +="<?php foreach($arr_language as $key=>$value){ ?>";
	strlanguage +="<input type='text' class='text left' size='80' name=subfiletitle<?php echo $key ?>[] />   <div class='icon_language left'><img class='icon_language' width='32' height='24' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $key ?>.png'  /></div><br>";
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

</script>