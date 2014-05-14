<div id="tab_faq">
        
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
                        <td class="ben-title-content ben-text-right">Câu hỏi</td>
                        <td>
                            <input class="text" type="text" size="120" name="title<?php echo $key ?>" id="title<?php echo $key ?>" value="<?php echo $items[$key]['title'] ?>"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="ben-title-content ben-text-right">Trả lời:</td>
                        <td>
                            <textarea style="width:627px;height:150px" id="summary<?php echo $key ?>" name="summary<?php echo $key ?>" ><?php echo $items[$key]['summary'] ?></textarea>
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
	}
});
//update form
function save(){
	showloading();
	var url="?route=media/dataform/save";
	var arr_language=<?php echo json_encode($arr_language) ?>;
	for(var x in arr_language){
			var summary = CKEDITOR.instances['summary'+x] ;
			var pageValue = summary.getData();
			$('textarea#summary'+x).val(pageValue);
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

