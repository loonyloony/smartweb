<div id="tab_editor">
        
        <div id="container_infor">
            <ul>
                <!-- tab language -->
                <?php foreach($arr_language as $key=>$item){ ?>
                    <li><a href="#tab-edit<?php echo $key ?>"><span><?php echo $item ?></span></a></li>
                <?php } ?>
            </ul>
        
            <?php foreach($arr_language as $key=>$item){ ?>
            <div id="tab-edit<?php echo $key?>">
                <table class="data-table ">
                    <tr>
                        <td class="ben-title-content ben-text-right"><?php echo $lbl_title ?></td>
                        <td>
                            <input class="text" type="text" size="120" name="title<?php echo $key ?>" id="title<?php echo $key ?>" value="<?php echo $items[$key]['title'] ?>"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="ben-title-content ben-text-right"><?php echo $text_summary ?></td>
                        <td>
                            <textarea id="summary<?php echo $key ?>" name="summary<?php echo $key ?>" ><?php echo $items[$key]['summary'] ?></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="ben-title-content ben-text-right">
                            <?php echo $text_description ?><br />
                            <a class="button" onclick="elifeupload_editor('description<?php echo $key ?>')">Chèn hình</a>
                        </td>
                        <td>
                            <textarea id="description<?php echo $key ?>" name="description<?php echo $key ?>" ><?php echo $items[$key]['description'] ?></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class=" ben-title-content ben-text-right ben-text-right"><?php echo $text_meta_keyword ?></td>
                        <td>
                            <input class="text" name="metakeyword<?php echo $key ?>" value="<?php echo $items[$key]['metakeyword'] ?>" size="60" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="ben-title-content  ben-text-right ben-text-right"><?php echo $text_meta_description ?></td>
                        <td>
                            <input name="metadescription<?php echo $key ?>" value="<?php echo $items[$key]['metadescription'] ?>" class="text" size="60"/>
                        </td>
                    </tr>
                </table>
            
            </div>
            <?php }?>
        </div>
</div>
<script>
$(document).ready(function() {
	$('#container_infor').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	var arr_language=<?php echo json_encode($arr_language) ?>;
	for(var x in arr_language){
		setCKEditorType('summary'+x,1,'800px','150px', SKIN_PATH);
		setCKEditorType('description'+x,0,'800px','500px', SKIN_PATH);	
	}
});
</script>

<script>

//update form
function save(){
	showloading();
	var url="?route=media/dataform/save";
	var arr_language=<?php echo json_encode($arr_language) ?>;
	for(var x in arr_language){
			var summary = CKEDITOR.instances['summary'+x] ;
			var pageValue = summary.getData();
			$('textarea#summary'+x).val(pageValue);
			
			var description = CKEDITOR.instances['description'+x] ;
			var pageValue = description.getData();
			$('textarea#description'+x).val(pageValue);
	
	}
	
	$.post(url,$('#frmform').serialize(),function(datas){
			var arrs=datas.split("_");
			if(arrs[0]=="true")	{
				$.unblockUI();
				alert("<?php echo $announ_update_success ?>");
				//window.location=HTTP_SERVER+"?route=module/<?php echo $module?>/insert&sitemapid="+arrs[2]+"&mediaid="+arrs[1]+"#tab_editor";
				//window.location.reload();
				linkto('<?php echo $config_savesuccessurl?>');
			}else{
				$.unblockUI();
				$('#error').html(datas).show('slow');
			}
		
		});
}

</script>
