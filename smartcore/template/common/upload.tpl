
<?php $this->document->addScript("jquery.ui.widget.js") ?>
<?php $this->document->addScript("jquery.iframe-transport.js") ?>
<?php $this->document->addScript("jquery.fileupload.js") ?>
<?php 
	$productSession = $this->session->data['PostPropertyProduct'];
    
	$path = 'images/resize-150x150/';
	if($this->member->getId() == '') {
    	$path .= 'guest/';
    } else {
    	$path .= 'user' . $this->member->getId() . '/';
    }

	if(!isset($productSession)) {
    	if(isset($product_upload_files)) {
        	$form_upload_files = $product_upload_files;
        }
    } else {
    	$form_upload_files = $productSession['upload_files'];
    }
?>
<input id="fileupload" type="file" style="display:none" name="files[]" data-url="<?php echo ROOT_HTTP_SERVER ?>component/userupload/" multiple>
<div id="progress" style="display:none">
    <div class="bar" style="width: 0%;"></div>
</div>
<div id="upload_result">
	<input type="hidden" id="upload_files" name="upload_files" value="<?php echo $form_upload_files ?>" />
    <div class="result">
    </div>
</div>

<script>

var uploadFiles = "<?php echo $form_upload_files ?>";
if(uploadFiles != "") {
	var arrFiles = uploadFiles.split(";");
	
	for(i = 0; i < arrFiles.length-1; i++) {
		$("#upload_result .result").append("<div class='post-image-item elife-left'><img src='<?php echo $path ?>" + arrFiles[i] + "' /> <p><a class='btndeleteimage' alt='"+ arrFiles[i] +"'><img src='<?php echo DIR_IMAGE?>delete-icon.png' /></a></p></div>");
	}
	
	$('.btndeleteimage').on('click',function(){
		var imagePath = $(this).attr('alt');
		var imagePaths = $("#upload_result #upload_files").val();
		$("#upload_result #upload_files").val(imagePaths.replace(imagePath+";", ""));
		$(this).parent().parent().remove();
	});
}

$(function () {
	
    $('#fileupload').fileupload({
        dataType: 'json',
		acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
        maxFileSize: 5000000, // 5 MB
		maxNumberOfFiles: 5,
		getNumberOfFiles: function () {
			return 5;
		},
		formData: {
			user : '<?php echo $user_upload ?>',
			skinid: '<?php echo PROJECTID ?>'
	  	},
        progressall: function (e, data) {
			var progress = parseInt(data.loaded / data.total * 100, 10);
			$('#progress .bar').css(
				'width',
				progress + '%'
			);
		},
		done: function (e, data) {
            $.each(data.result.files, function (index, file) {
				var cur_val = $("#upload_result #upload_files").val();
                $("#upload_result #upload_files").val(cur_val+file.name+";");
				$("#upload_result .result").append("<div class='post-image-item elife-left'><img src='<?php echo $path ?>" + file.name + "' /> <p><a class='btndeleteimage' alt='"+file.name+"'><img src='<?php echo DIR_IMAGE?>delete-icon.png' /></a></p></div>");
            });
			
			$('.btndeleteimage').on('click',function(){
				var imagePath = $(this).attr('alt');
				var imagePaths = $("#upload_result #upload_files").val();
				$("#upload_result #upload_files").val(imagePaths.replace(imagePath+";", ""));
				$(this).parent().parent().remove();
			});			
        },
		fail: function (e, data) {
			alert("Server fails occur");
		},
    });
	
});



</script>