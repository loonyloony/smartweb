<!-- Tab Information -->
<div id="tab_partnerslink">
    <input type="hidden" id="listselectfile" name="listselectfile" />
    <table class="data-table ">        
        <tr>
            <td class="ben-title-content ben-text-right"><?php echo $label_link ?></td>
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
        
        <tr>
            <td class="ben-title-content ben-text-right"> Seo url: </td>
            <td><input type="text" size="120" class="text"  id="seourl" name="seourl" value="<?php echo $items['common']['alias'] ?>" /></td>
        </tr>
    </table>
</div>