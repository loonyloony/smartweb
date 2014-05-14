<!-- Tab Information -->
<div id="tab_information">
    <input type="hidden" id="listselectfile" name="listselectfile" />
    <table class="data-table ">
        <tr>     
            <td class="ben-title-content ben-text-right"><?php echo $label_author ?></td>
            <td><input type="text" class="text" size="60" name="author" value="<?php echo $items['common']['author'] ?>" /></td>
        </tr>
        
        <tr>
            <td class="ben-title-content ben-text-right"><?php echo $entry_source ?></td>
            <td><input type="text" class="text" size="60" name="source" value="<?php echo $items['common']['source'] ?>" /></td>
        </tr>
        
        <tr>
            <td class="ben-title-content ben-text-right"><?php echo $text_avatar ?></td>
            <td >
            <a onclick="elifeupload_one('imagepath','imagepreview')" class="button"> <?php echo $button_selectimage ?></a><br />
            <input type="hidden" id="imagepath" name="imagepath" value="<?php echo $items['common']['imagepath']?>" />
            <div class="clearer"></div>
            <div id="image-content"> 
            <img id="imagepreview" imagetype="images/resizepng-200x160" src="images/resizepng-200x160/<?php echo $items['common']['imagepath']?>" /> 
            </div>
            </td>
        </tr>
        
        <?php if(SKINID == 'elifesupport') { ?>
        <tr>
        	<td class="ben-title-content ben-text-right"> Top: </td>
            <td><input type="checkbox" name="top" value="top" <?php echo ($items['common']['top'] == 'top') ? 'checked' : '' ?> /></td>
        </tr>
        <?php } ?>
    </table>
</div>