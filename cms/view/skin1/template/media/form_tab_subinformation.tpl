<!-- Tab Information -->
<div id="tab_subinformation">
	
    <div class="right"><a class="button" id="addSubInfor"><?php echo $button_add ?></a></div>
    <div class="clearer"></div>
    <div id="sublist">
    	
    </div>
</div>

<script language="javascript">
$(document).ready(function(){
	$("#sublist").load("?route=media/dataform/loadSubInfor&sitemapid=<?php echo $_GET['sitemapid'] ?>");
});

function removeSubInfor(mediaid)
{
	//$.blockUI({ message: "<h1>Đang xử lý...</h1>" });
	$.ajax({
		url: "?route=media/dataform/removeSubInfor&mediaid="+mediaid, 
		cache: false,
		success: function(html)
		{
			$("#sublist").load("?route=media/dataform/loadSubInfor&sitemapid=<?php echo $_GET['sitemapid'] ?>");
		}
	});
	
}

function editSubInfor(mediaid)
{
	$("#dialog").load("?route=media/dataform/addSubInfor&mediaid=" + mediaid + "&sitemapid=<?php echo $_GET['sitemapid'] ?>").dialog({height: 'auto', width:'auto', modal:true});	
}

$("#addSubInfor").click(function(){
	/*var arr_language=<?php echo json_encode($arr_language) ?>;
	for(var x in arr_language){
			
			var subdescription = CKEDITOR.instances['subdescription'+x] ;
			var pageValue = subdescription.getData();
			$('textarea#subdescription'+x).val(pageValue);
	
	}
	
	$.post(url,$('#frmsubinfor').serialize(),function(datas){
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
		
		});*/
		
		//$("#dialog").dialog();
		//$("#dialog").dialog("option", "position", { my: "center", at: "center", of: window });
		$("#dialog").load("?route=media/dataform/addSubInfor&sitemapid=<?php echo $_GET['sitemapid'] ?>").dialog({height: 'auto', width:'auto', modal:true});
		  /*.load("?route=media/dataform", 
		  function()
		  {
			$("#dialog").dialog({ 
			  modal: true, 
			  height: "auto", 
			  width: "auto", 
			  buttons:  
			  { 
				"Register New Account": 
				function()  
				{ 
		
				}, 
		
				"Cancel": 
				function() 
				{ 
					$(this).dialog("close"); 
				} 
			  } 
		  }); 
		});*/
});
</script>