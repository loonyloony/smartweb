<div id="elifepartners-yeucaubaogia" style="display:none">
	<div class="elife-page-wrapper">
    	<div class="text elife-left">
        	<h2><?php echo $title_request_a_quote ?></h2>
            <p style="background:black; color:white">Bạn vui lòng gọi điện cho chúng tôi hoặc điền vào form này, sau khi nhận được thông tin, chúng tôi sẽ cử chuyên viên tư vấn liên lạc và trao đổi với quý khách.</p>
            <p style="background:black; color:white">Quý khách có thể liên lạc chúng tôi qua số điện thoại:</p>
            <p style="background:black; color:yellow; font-size:1.2em; text-align:center"><b>(08) 62998561</b></p>
        </div>
        <div class="form elife-left">
        	<form id="frmYeucaubaogia" action="" method="post">
            	<h3>THÔNG TIN CỦA QUÝ KHÁCH</h3>
                <div class="elife-col2 elife-left">
                	<p>
                        <label for="hoten"><?php echo $label_fullname ?></label><br>
                        <input type="text" name="hoten" id="hoten" class="elife-textbox"><b class="require">(*)</b>
                    </p>
                    <p>
                        <label for="congty"><?php echo $label_companyname ?></label><br>
                        <input type="text" name="congty" id="congty" class="elife-textbox">
                    </p>
                    <p>
                        <label for="email"><?php echo $text_email?></label>
                        <input type="text" name="email" id="email" class="elife-textbox"><b class="require">(*)</b>
                       
                    </p>
                    <p>
                        <label for="dienthoai"><?php echo $text_phone ?></label>
                        <input type="text" name="dienthoai" id="dienthoai" class="elife-textbox"><b class="require">(*)</b>
                    </p>
                    <p>
                        <h3>DỊCH VỤ CẦN BÁO GIÁ:</h3>
                    </p>
                    <p>
                    	<input type="checkbox" name="service[freeweb]" id="service_freeweb" value="freeweb"> <label for="input-8" class="elife-checkbox"><a target="_blank" href="thiet-ke-web-mien-phi.html"><b>Thiết kế web miễn phí (Chương trình 200 web miễn phí)</b></a></label><br />
                        <input type="checkbox" name="service[smartweb]" id="service_smartweb" value="smartweb"> <label for="input-8" class="elife-checkbox"><a target="_blank" href="thiet-ke-web.html"><b>Elife SmartWeb</b></a> - Thiết kế web</label><br />
                    	<input type="checkbox" name="service[websign]" id="service_webdesign" value="webdesign"> <label for="input-7" class="elife-checkbox"><a target="_blank" href="webdesign-thiet-ke-web-chuyen-nghiep.html"><b>Xây dựng ứng dụng Web qui mô lớn</b></a></label><br />
                        <input type="checkbox" name="service[smartcare]" id="service_smartcare" value="smartcare"> <label for="input-9" class="elife-checkbox"><a target="_blank" href="smartcare.html"><b>SmartCare</b></a> Chăm sóc, bảo trì web</label><br />
                        <input type="checkbox" name="service[email]" id="service_email" value="email"> <label for="input-10" class="elife-checkbox"><a target="_blank" href="email-ten-mien-thuong-hieu-email-server.html"><b>SmartEmail</b></a> - Email Hosting</label><br />
                        <input type="checkbox" name="service[marketingonine]" id="service_marketingonline" value="marketingonline"> <label for="input-12" class="elife-checkbox"><a target="_blank" href="email-ten-mien-thuong-hieu-email-server.html"><b>Marketing Online</b></a> - Quảng cáo Google, SEO, Mạng xã hội...</label><br />
                        <input type="checkbox" name="service[yeucaukhac]" id="service_yeucaukhac" value="yeucaukhac"> <label for="input-11" class="elife-checkbox">Yêu cầu khác</label><br />
                    </p>
                </div>
                <div class="elife-col2 elife-right">
                	<p>
                        <label for="chiphidutru"><?php echo $text_estimated_cost?></label><br>
                        <select name="chiphidutru" id="chiphidutru">
                            <option value="----">----</option>
                            <option value="Thấp nhất có thể"><?php echo $text_lowest_possible ?></option>
                            <option value="Từ 2 - 5triệu"><?php echo $text_from?> 2 - 5<?php echo $text_million?></option>
                            <option value="Từ 5 - 10triệu"><?php echo $text_from?> 5 - 10<?php echo $text_million?></option>
                            <option value="Từ 10 - 20triệu"><?php echo $text_from?> 10 - 20<?php echo $text_million?></option>
                            <option value="Từ 20 - 40triệu"><?php echo $text_from?> 20 - 40<?php echo $text_million?></option>
                            <option value="Từ 40 - 80triệu"><?php echo $text_from?> 40 - 80<?php echo $text_million?></option>
                            <option value="Từ 40 - 100triệu"><?php echo $text_from?> 40 - 100<?php echo $text_million?></option>
                            <option value="Hơn 100 triệu"><?php echo $text_more?> 100 <?php echo $text_million ?></option>
                            <option value="Chưa xác định"><?php echo $text_not_identified ?></option>
                        </select>
                    </p>
                    <p>
                        <label for="thoigianmongmuon"><?php text_desired_time?></label><br>
                        <select name="thoigianmongmuon" id="thoigianmongmuon">
                            <option value="----">----</option>
                            <option value="Có ngay, càng nhanh càng tốt"><?php echo $text_immediately_available ?></option>
                            <option value="Trong vòng 1 tuần"><?php echo $text_for?> 1 <?php echo $text_week ?></option>
                            <option value="Trong vòng 1 tháng"><?php echo $text_for?> 1 <?php echo $text_month ?></option>
                            <option value="Trong vòng 3 tháng"><?php echo $text_for?> 3 <?php echo $text_month ?></option>
                            <option value="Hơn 3 tháng"><?php echo $text_more?> 3 <?php echo $text_month ?></option>
                        </select>
                    </p>
                    <p>
                        <label for="mota"><?php echo $text_description ?>/<?php echo $text_message ?></label><br>
                        <textarea name="mota" id="mota" rows="10" cols="90"></textarea>
                    </p>
                    <p>
                        <label for="mabaove"><?php echo $label_security_code ?></label><br>
                        <img class="secureimage elife-left" src="<?php echo $security?>" />
                        <input type="text" name="mabaove" id="mabaove" class="elife-textbox elife-autowidth">
                        <p class="clearer">&nbsp;</p>
                    </p>
                    <p>
                    	<a class="elife-button"  onclick="sendYeuCau()"><?php echo $button_send_request ?></a>
                    </p>
                </div>
            	
                <div class="clearer">&nbsp;</div>
            </form>
        </div>
        <div class="close elife-right">
        	<a class="closebutton"><?php echo $button_close ?><?php echo $button_close ?> X</a>
        </div>
    	<div class="clearer">&nbsp;</div>
    </div>
</div>

<script>
function sendYeuCau(){
	$.blockUI({ message: "<h1><?php echo $text_pleasewait ?></h1>" }); 

	$.post("?route=addon/yeucaubaogia/sendMessage", 

			$("#frmYeucaubaogia").serialize(), 

			function(data){
				if(data!="true"){
					//$('.elife-error').html(data);
					//$('.elife-error').fadeIn("slow");
					$.ajax({
					  url: "?route=addon/yeucaubaogia/getNewSecureImage"
					}).done(function ( data ) {
					  	$("img.secureimage").attr("src",data);
					});
					alert(data);
				} else {
					alert("<?php echo $war_message_send_to_us ?>");
					window.location.reload();
				}

				$.unblockUI();

			});
}
</script>