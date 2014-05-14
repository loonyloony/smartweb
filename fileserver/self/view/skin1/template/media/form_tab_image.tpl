<div id="tab_image"> 
    <a onclick="uploadMultiImage()" class="button control_form"><?php echo $text_add_row ?></a>
    <div class="clearer"></div>
    <table class="data-table" style="margin-top:10px;" id="subimage">
        <tr>
            <th><?php echo $text_image ?></th>
            <th><?php echo $text_title ?> </th>
            <th width="100px"> <?php echo $column_control ?> </th>
        </tr>

        <?php $index=0; if(count($items['image'])){ foreach($items['image'] as $image){ ?>
        
     
        <tr>
            <td>
                <div style="margin-bottom:10px;">
                    <img  imagetype='images/resizepng-150x100' id="subimagepreview<?php echo $index?>" src="images/resizepng-150x100/<?php echo $image['filepath'] ?>" />
                    <input id="imagepath<?php echo $index?>" type='hidden' name='subimagepath[]'  value="<?php echo $image['filepath'] ?>"  />
                    <div class="clearer"></div>
                </div>
                <div class="clearer"></div>
                <a onclick="elifeupload_one('imagepath<?php echo $index?>','subimagepreview<?php echo $index?>')" class='button'><?php echo $button_selectimage ?></a>
            </td>
            
            <td>
                <?php foreach($image['imagetitle'] as $item){ ?>
                <input  type='text' class='text left' value="<?php echo $item['title'] ?>" size='80' name="subimagetitle<?php echo $item['languageid'] ?>[]" />
                <div class="icon_language left">
                <img class="icon_language" width="32" height="26" src="<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $item['languageid'] ?>.png "  /></div>
                <?php }?>
            </td>
            
            <td>
                <a class="btndeleteimage button"><?php echo $button_delete?></a>
            </td>
        </tr>
       <?php 
       $index++;
        }
      }
      ?>
    </table>
</div>

<script language="javascript">

var index = parseInt("<?php echo count($items['image']) ?>");

function uploadMultiImage(){
	var img = 	"<div style='margin-bottom:10px;'>";
		img +=	"<img imagetype='images/resizepng-150x100' id='subimagepreview" + index + "' src=''/>";
		img +=	"<input id=imagepath" + index + "  type='hidden' name='subimagepath[]'  />";
		img +=	"<div class='clearer'></div>";
		img +=	"</div>"
		img +=	"<a onclick=elifeupload_one('imagepath" + index + "','subimagepreview" + index + "') class='button'><?php echo $button_selectimage ?></a>";
					
	var strlanguage	=	"<?php foreach($arr_language as $key=>$value){ ?>";
		strlanguage +=	"<input type='text' class='text left' size='80' name=subimagetitle<?php echo $key ?>[] />";
		strlanguage +=	"<div class='icon_language left'>";
		strlanguage +=	"<img class='icon_language' width='32' height='24' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $key ?>.png'  />";
		strlanguage +=	"</div>";
		strlanguage +=	"<br>";
		strlanguage +=	"<?php } ?>";
		
	var control='<a class="btndeleteimage button"><?php echo $button_delete ?></a>';
	
	var row	=	"<tr>";
		row +=	"<td width='150px'>" + img + "</td>";
		row +=	"<td>" + strlanguage + "</td>";
		row +=	"<td>" + control + "</td>";
		row +=	"</tr>";
	
	$('#subimage').append(row);
	index++;
}

$('.btndeleteimage').live('click',function(){
	$(this).parent().parent().remove();
});
</script>