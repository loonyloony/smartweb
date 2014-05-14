<?php $this->document->addScript("jquery.jscroll.js") ?>
<?php if (count($media) == 0) echo ($this->config->get('config_languageid') == 'vn')?'Chưa có dữ liệu cho trang này' : 'No information found for this page'; else { ?>
<div class="elife-section-title"><h1><a><?php echo htmlspecialchars_decode($media['title']) ?></a></h1></div>
<div class="elife-section-content">
    <div id="left-col">
        <?php if($media['imagepath'] != ""){?>
        <div class="elife-section-image"><img src="images/resizepng-400x300/<?php echo $media['imagepath']?>" /></div>
        <?php } ?>
    	<div id="detail">
        	<h2 class="h2-title"><span><?php echo ($this->config->get('config_languageid') == 'vn')?'Thông Tin Chung' : 'General Information' ?></span></h2>
            <div>
        		<?php echo htmlspecialchars_decode($media['summary']) ?>
            </div>
        </div>
        <div id="sub-detail">
        	<?php 
            	if ($list_detail != "") {
            		foreach ($list_detail as $sub) {
            ?> 
                    <div id="sublink<?php echo $sub['id'] ?>" >
                        <h2 class="h2-title"><span><?php echo $sub['title'] ?></span></h2>
                        <?php echo htmlspecialchars_decode($sub['description']) ?>
                    </div>   
            <?php   
                } }
            ?>
        </div>
        <div class="elife-post-author"><?php echo $media['author'] ?></a></div>
		<div class="elife-post-source"><?php echo $media['source'] ?></a></div>
    </div>
    <div id="right-col">
    	<h3 style="font-size:1.3em" ><?php echo ($this->config->get('config_languageid') == 'vn')?'Danh mục thông tin hữu ích' : 'Useful information menu' ?></h3>
    	<div class="box">
    		<?php echo htmlspecialchars_decode($media['description']) ?>
        </div>
        <h3 style="font-size:1.3em" ><?php echo ($this->config->get('config_languageid') == 'vn')?'Liên hệ tư vấn thủ tục đăng kí Visa' : 'Contact us for the process of registering visa' ?></h3>
        <div class="box2">
        	<div class="elife-error elife-hidden"></div>
			<form method="post" action="" id="contactForm" name="contactForm">
            <table>
            	<tr>
                	<td><?php echo ($this->config->get('config_languageid') == 'vn')?'Họ tên' : 'Full name' ?>: </td>
                    <td><input id="fullname" name="fullname" type="text"  /></td>
                </tr>
                <tr>
                	<td><?php echo ($this->config->get('config_languageid') == 'vn')?'Quốc tịch' : 'Nationality' ?>: </td>
                    <td><input id="nationality" name="nationality" type="text"  /></td>
                </tr>
                <tr>
                	<td><?php echo ($this->config->get('config_languageid') == 'vn')?'Nơi đến' : 'Destination' ?>: </td>
                    <td><input id="destination" name="destination" type="text"  /></td>
                </tr>
                <tr>
                	<td>Email: </td>
                    <td><input id="email" name="email" type="text"  /></td>
                </tr>
                <tr>
                	<td><?php echo ($this->config->get('config_languageid') == 'vn')?'Mục đích' : 'Purpose' ?>: </td>
                    <td><textarea id="content" name="content" ></textarea></td>
                </tr>
                <tr >
                	<td colspan="2" style="text-align:center">
                    	  <label>
                    	    <input type="radio" name="service" value="information" id="service_0"  />
                    	    <?php echo ($this->config->get('config_languageid') == 'vn')?'Tự làm visa' : 'How to register visa ' ?></label>
                    	  <label>
                    	    <input type="radio" name="service" value="support" id="service_1" checked="checked" />
                    	    <?php echo ($this->config->get('config_languageid') == 'vn')?'Tìm dịch vụ hỗ trợ' : 'Find the service to support you' ?></label>                  	
                    </td>
                </tr>
                <tr>
                	<td></td>
                    <td><button type="button" onclick="sendMessage()" class="elife-button">Gửi</button><button type="reset" class="elife-button">Nhập lại</button></td>
                </tr>
            </table>
            </form> 
        </div>
    </div>
    <div class="clearer"></div>
    
</div>
<?php } ?>
<div class="elife-post-footer">
    <span><a href="<?php echo HTTP_SERVER ?>" class="elife-button">&larr; <?php echo ($this->config->get('config_languageid') == 'vn')?'Trở về trang chủ' : 'Back to home' ?> </a></span>
</div>
<div class="elife-section-footer"></div>
<script>
	$("#right-col").jScroll();

	$("a[href*=#sublink]").click(function() {
     	var id = $(this).attr("href");
		id = id.substr(1);
		
		$('html, body').animate({
         scrollTop: $("#"+id).offset().top
     	}, 2000);
		return false;
 	});
	
	function sendMessage(){
        $.blockUI({ message: "Vui lòng chờ ... " }); 
    
        $.post("?route=module/visainformation/sendMessage", 
    
                $("#contactForm").serialize(), 
    
                function(data){
                    if(data!="true"){
                        $('.elife-error').html(data);
                        $('.elife-error').fadeIn("slow");
                    } else {
                        alert("Tin nhắn của bạn đã được gởi tới chúng tôi");
                        window.location.reload();
                    }
    
                    $.unblockUI();
    
                });
		return false;
    }
</script>




