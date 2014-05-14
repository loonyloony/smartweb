<script>
	var seo = new Array();
</script>
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
                    
                    <?php 
                    	//config pages needed seo url 
                        $seo_modules = array('module/news','module/galleryalbum');
                        $route = $this->request->get['route'];
                        $flag = false;
                        foreach($seo_modules as $sm) {
                        	if(strpos($route, $sm) !== false) {
                            	$flag = true;
                            }
                       	}
                    	if($flag) { ?>
                    <script>
                    	$(document).ready(function() {
							seo["<?php echo $key ?>"] = $("#seourl<?php echo $key ?>").val();
							createSeo("<?php echo $key ?>");
						});
                    </script>
                    <tr>
                        <td class="ben-title-content ben-text-right"> Seo url: </td>
                        <td><input type="text" size="120" class="text"  id="seourl<?php echo $key ?>" name="seourl<?php echo $key ?>" value="<?php echo $items[$key]['alias'] ?>" /></td>
                    </tr>
                    <?php } ?>
                    
                    <tr>
                        <td class="ben-title-content ben-text-right"><?php echo $text_summary ?></td>
                        <td>
                            <textarea id="summary<?php echo $key ?>" name="summary<?php echo $key ?>" ><?php echo $items[$key]['summary'] ?></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="ben-title-content ben-text-right">
                            <?php echo $text_description ?><br />
                            <a class="button" onclick="elifeupload_editor('description<?php echo $key ?>')"><?php echo $text_add_image?></a>
                        </td>
                        <td>
                            <textarea id="description<?php echo $key ?>" name="description<?php echo $key ?>" ><?php echo $items[$key]['description'] ?></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class=" ben-title-content ben-text-right ben-text-right"><?php echo $text_meta_title ?></td>
                        <td>
                            <textarea id="meta_title<?php echo $key ?>" name="meta_title<?php echo $key ?>" cols="80" rows="8"><?php echo $items[$key]['meta_title'] ?></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class=" ben-title-content ben-text-right ben-text-right"><?php echo $text_meta_keyword ?></td>
                        <td>
                            <textarea id="metakeyword<?php echo $key ?>" name="metakeyword<?php echo $key ?>" cols="80" rows="8"><?php echo $items[$key]['metakeyword'] ?></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="ben-title-content  ben-text-right ben-text-right"><?php echo $text_meta_description ?></td>
                        <td>
                            <textarea id="metadescription<?php echo $key ?>" name="metadescription<?php echo $key ?>" cols="80" rows="8" ><?php echo $items[$key]['metadescription'] ?></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="ben-title-content  ben-text-right ben-text-right"><?php echo $text_seo_content ?></td>
                        <td>
                            <textarea id="seo_content<?php echo $key ?>" name="seo_content<?php echo $key ?>" ><?php echo $items[$key]['seo_content'] ?></textarea>
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
		setCKEditorType('seo_content'+x,1,'800px','150px', SKIN_PATH);	
	}
});

function createSeo(key) {
	$("#title"+key).on('change keyup paste',function(){
		if (seo[key] != '') return;
		var name = $(this).val();
		name = bodau(name);
		name = name.toLowerCase(); // lowercase
		name = name.replace(/^\s+|\s+$/g, ''); // remove leading and trailing whitespaces
		name = name.replace(/\s+/g, '-'); // convert (continuous) whitespaces to one -
		name = name.replace(/[^a-z-]/g, ''); // remove everything that is not [a-z] or -			
		$("#seourl"+key).val(name); 
	});
}


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
			
			var seo_content = CKEDITOR.instances['seo_content'+x] ;
			var pageValue = seo_content.getData();
			$('textarea#seo_content'+x).val(pageValue);
	
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
