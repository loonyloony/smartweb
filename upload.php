<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language="javascript" src="fileserver/common/js/jquery.js"></script>
<title>Untitled Document</title>
</head>

<body>
	<div id="upload_video">
    	<div class="field">
        	<form action='' id="youtube_video_upload" method="post" enctype="multipart/form-data">
            	<input name="file" type="file" class="multimedia_file" />
                <div class="errMsg" style="display:none; color:red">
                	You need to specify a file.
                </div>
                <div class="errMsg2" style="display:none; color:red">
                	Video cannot be uploaded this time. Please try again after sometime.
                </div>
                <input class="token" name="token" type="hidden" value="" />
                <input value="Upload Video File" class="upload_button" type="submit" />
            </form>
            <br />
        </div>
    </div>
    
    <script>
    	$(document).ready(function(e) {
            $('#youtube_video_upload .multimedia_file').click(function(){
				$(this).siblings('.errMsg').css('display', 'none');
				$(this).children('.errMsg2').css('display', 'none');
			});
			
			$('#youtube_video_upload').submit(function(){
				if($(this).children('.multimedia_file').val() == null || $(this).children('.multimedia_file').val() == "")
				{
					$(this).children('.errMsg').css('display', '');
					return false;	
				} else if($(this).children('.token').val() == null || $(this).children('.token').val() == "") {
					$(this).children('.errMsg2').css('display', '');
					return false;
				}
			});
			
			$('#youtube_video_upload').children('.upload_button').attr('disabled', 'true');
        });
		
		$('#video_link').click(function(){
			$("#add_link").css("display", "none");
			$("#upload_video").css("display","");
		});
		
		$('#youtube_link').click(function(){
			$("#upload_video").css("display","none");
			$("#add_link").css("display", "");
			$('.errMsg').css("display", "none");
			$('.errMsg2').css("display", "none");
		});
		
		//asyn ajax request to fetch upload URL and token from youtube
		$.get('<%= url_for(:action => "uploadToken", :controller => "multimedias", :only_path => false)%>',function(data){
        if(data != ""){
          $('#youtube_video_upload').attr('action', data.uploadUrl + '?nexturl=<%= url_for(:action => "new", :controller => "multimedias", :only_path => false)%>');
          $('#youtube_video_upload').children('.token').val(data.token);
          $('#youtube_video_upload').children('.errMsg2').css("display", "none");
		  alert('def');
        }else{
          alert('abc');
        }
      }, "json");
		
    </script>
</body>
</html>
