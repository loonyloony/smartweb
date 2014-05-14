<?php
	$this->document->addScript("jquery-ui.js");
	$this->document->addStyle("jquery-ui.css");
?>
<a class="elife-button" id="open_comment" onclick="openComment()" >Comment</a>
<div id="comment_dialog" title="Send Message" style="display:none" >
	<form id="frm_comment" >
    	<div class="elife-error" style="display:none"></div>
  		<input type="hidden" name="mediaid" value="<?php echo $mediaid ?>" />
        <input type="hidden" name="objtype" value="<?php echo $objtype ?>" />
    	<label>Subject: </label> <input type="text" class="elife-textbox" name="subject" /><br />
        <label>Content: </label> <textarea name="description"></textarea><br />
        <input type="button" value="submit" class="elife-button" id="submit_comment" /> 
    </form>
</div>
<script>

	function openComment(){
		var w_height = $(window).height(); 
		var w_width = $(window).width(); 
		
		if (w_height > 400) w_height = 400;
		if (w_width > 600) w_width = 600;
		
		$("#comment_dialog").dialog({
				title: 'Sending Message',
				width: w_width,
				height: w_height,
				modal: true,
				resizable: false,
				open: function(){
					jQuery('.ui-widget-overlay').bind('click',function(){
						jQuery('#comment_dialog').dialog('close');
					})
				},
				position: ['center', 'center']
		});
	}
	
	$("#submit_comment").click(function() {
		$.blockUI({ message: "<h1><?php echo $text_pleasewait ?></h1>" }); 
	
		$.post("?route=module/comment/save", $("#frm_comment").serialize(), 
			function(data){
				if(data=="true"){
					alert("<?php echo $text_send_successfully ?>");
					window.location.reload();
				} else {
					$('.elife-error').html(data);
					$('.elife-error').fadeIn("slow");
					$.unblockUI();
				}
			});		
	});

</script>