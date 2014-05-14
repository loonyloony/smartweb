<style>
	#container_subinfor{
		padding:5px;
		background-color:#fff	
	}
</style>

<div id="container_subinfor">
	<div class="button right">
    	<a class="button" onClick="saveSubInfor()"><?php echo $button_save ?></a>
    </div>
    <div class="clearer"></div>
    <form id="frmsubinfor">
    	<input type="hidden" name="mediaid" value="<?php echo $items['mediaid'] ?>" />
        <input type="hidden" name="mediatype" value="subinfor" />
        <input type="hidden" name="keyword" value="[<?php echo $sitemap ?>]" />
        
        <ul>
            <!-- tab language -->
            <?php foreach($arr_language as $key=>$item){ ?>
                <li><a href="#tab-subedit<?php echo $item['languageid'] ?>"><span><?php echo $item['name'] ?></span></a></li>
            <?php } ?>
        </ul>
    
        <?php foreach($arr_language as $key=>$item){ ?>
        <div id="tab-subedit<?php echo $item['languageid']?>">
            <table class="data-table ">

                <tr>
                    <td class="ben-title-content ben-text-right"><?php echo $lbl_title ?></td>
                    <td>
                        <input class="text" type="text" size="120" name="subtitle<?php echo $item['languageid'] ?>" id="subtitle<?php echo $item['languageid'] ?>" value="<?php echo $items['description'][$item['languageid']][$item['languageid']]['title'] ?>"/>
                    </td>
                </tr>
                
                <tr>
                    <td class="ben-title-content ben-text-right">
                        <?php echo $text_description ?><br />
                        <a class="button" onclick="elifeupload_editor('description<?php echo $key ?>')">Chèn hình</a>
                    </td>
                    <td>
                        <textarea id="subdescription<?php echo $item['languageid'] ?>" name="subdescription<?php echo $item['languageid'] ?>" ><?php echo $items['description'][$item['languageid']][$item['languageid']]['subdescription'] ?></textarea>
                    </td>
                </tr>
            </table>
        
        </div>
        <?php }?>
    </form>
</div>

<script language="javascript">
$(document).ready(function(){
	$('#container_subinfor').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	var arr_language=<?php echo json_encode($arr_language) ?>;
	
	var instance;

	for(var x in arr_language){
		instance = CKEDITOR.instances['subdescription'+arr_language[x].languageid];
		if(instance)
		{
			CKEDITOR.remove(instance);
		}
		
		setCKEditorType('subdescription'+arr_language[x].languageid,0,'700px','250px', SKIN_PATH);	
	}
});

function saveSubInfor()
{
	var arr_language=<?php echo json_encode($arr_language) ?>;
	
	for(var x in arr_language){	
		var subdescription = CKEDITOR.instances['subdescription'+arr_language[x].languageid] ;
		var pageValue = subdescription.getData();
		$('textarea#subdescription'+arr_language[x].languageid).val(pageValue);
	}
	
	var url = "?route=media/dataform/saveSubInfor";
	
	$.post(url, $("#frmsubinfor").serialize(), function(data){
		if(data == "true")
		{
			$("#sublist").load("?route=media/dataform/loadSubInfor&sitemapid=<?php echo $sitemap ?>");
			jQuery('#dialog').dialog('close');
		}
		else
		{
			alert("Thử lại lần sau");	
		}
	});	
}
</script>