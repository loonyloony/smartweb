<div class="section">

    <div class="section-title">
    	<div class="titletext left"> QUẢN LÝ ĐƠN ĐẶT HÀNG </div>
        <!--<div class="button right">
           	 	<input class="button" type="button" name="active" value="Xác nhận" onclick="active()"/>
                <input class="button" type="button" name="delivered" value="Hoàn tất" onclick="deliver()"/> 
                <input class="button" type="button" name="cancel" value="Hủy" onclick="cancel()"/>   
         </div>-->
         <div class="clearer">^&nbsp;</div>
    </div>
        
    <div class="section-content">
        
        <form action="<?php echo HTTP_SERVER ?>?route=cpanel/smartorder" method="post" id="listitem" name="listitem">
            <div id="elife-search">
            	<label>ID</label>
                <input type="text" onkeypress="validate_id(event)" id="search_id" name="search_id" class="text" value="<?php echo $post_data['search_id'] ?>" />
                <label>Account / Tên khách hàng</label>
                <input type="text" id="search_customer" name="search_customer" class="text" value="<?php echo $post_data['search_customer'] ?>" />
                <label>Giá từ</label>
                <input type="text" id="search_from" onkeypress="validate(event)" name="search_from" class="text" value="<?php echo $post_data['search_from'] ?>" />
                <label>Đến</label>
                <input type="text" id="search_to" onkeypress="validate(event)" name="search_to" class="text" value="<?php echo $post_data['search_to'] ?>" />
               	<label>Trạng thái</label>
                <select id="search_status" name="search_status">
                	<option value="">Tất Cả</option>
                	<?php echo $cborderstatus ?>
                </select>
                <br />
                <input type="button" class="button" name="btnSearch" value="Tìm" onclick="paginate(1)"/>
                <input type="button" class="button" name="btnSearch" value="Xem tất cả" onclick="location.reload()"/>
            </div>
            
            
            <div class="sitemap treeindex">
            
            	<table class="data-table smartorder" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <!--<th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>-->
                        <th width="6%"><?php echo $text_number ?></th>
                        <th width="10%">Mã Hóa Đơn</th>
                        <th width="30%">Thông Tin Khách Hàng</th>
                        <th width="30%">Thông Tin Đơn Hàng</th>
                        <th width="10%"><?php echo $text_price ?></th>
                        <th width="10%"></th>
                    </tr>
        
        <?php
        if(count($orders) > 0)
        {
        	$stt = 1;
            foreach($orders as $item)
            {
        ?>
                    <tr class="order-<?php echo $item['status']?>">
                        <!--<td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['orderid']?>]" value="<?php echo $item['orderid']?>" ></td>-->
                        
                        <td><?php echo $stt++ ?></td>
                        <td>
                        	<?php echo $item['orderid']?>
                            <p>
                            	<div id="detail<?php echo $item['orderid'] ?>" style="color:#888; font-weight:bold; text-decoration:underline; cursor:pointer" onclick="showdetail('<?php echo $item['orderid']?>')" ><a class="button">Chi tiết</a></div>
                            </p>
                        </td>
                        <td>
                        	<?php if(isset($item['customer']) && count($item['customer']) > 0){ ?>
                            <p>
                            	<label>Họ Tên:</label> <?php echo $item['customer']['firstname'] . " " . $item['customer']['lastname'] ?>
                            </p>
                            <p>
                            	<label>Email:</label> <?php echo $item['customer']['email'] ?>
                            </p>
                            <p>
                            	<label>Số điện thoại:</label> <?php echo $item['customer']['telephone'] ?>
                            </p>
                            <p>
                            	<label>Địa chỉ:</label> <?php echo $item['customer']['address'] ?>
                            </p>
                            <?php } ?>
                        </td>
                        <td>
                        	<p>
                        		<label>Họ tên:</label> <?php echo $item['customername'] ?>
                            </p>
                            <p> 
                            	<label>Số điện thoại:</label> <?php echo $item['phone'] ?>
                            </p>
                            <p>
                            	<label>Email:</label> <?php echo $item['email'] ?>
                            </p>
                            <p>
                            	<label>Địa chỉ:</label> <?php echo $item['address'] ?>
                            </p>
                        </td>
                        <td><?php echo $this->string->numberFormate($item['total']) ?> </td>
                        <td>
                        	<select id="cbstatus-<?php echo $item['orderid'] ?>" alt="<?php echo $item['status'] ?>" class="cbstatus">
                          	<?php echo $item['cbstatus'] ?>
                          </select>
                            <?php if($item['status'] == 'active' || $item['status'] == 'deliver')  {?>
                            <p><div style="color:#888; font-weight:bold; text-decoration:underline; cursor:pointer" onclick="sendMail('<?php echo $item['orderid']?>', '<?php echo $item['status'] ?>')" ><a class="button">Gửi mail</a></div></p>
                            <?php } ?>
                            
                            <?php if($item['status'] == 'cancel'){?>  	
                            	<div style="margin-top:5px; color:#888; font-weight:bold; text-decoration:underline; cursor:pointer" onclick="removeOrder('<?php echo $item['orderid']?>')" ><a class="button">Xóa</a></div>
                            <?php  }?>
                        </td>
                    </tr>
                    <?php if(count($item['products'])) { $ordertotal = 0;?>
                    <tr id="sub<?php echo $item['orderid']?>" style="display:none">
                    	<td colspan="7">
                            <table class="smartorder-item">
                            	<?php foreach($item['products'] as $product) { ?>
                                    <tr>
                                        <td style="width:20%; text-align:center">
                                            <div style="width:200px">
                                                <?php $arrpoimage = explode(",", $product['poimage']);?>
                                                <?php if(count($arrpoimage) > 1) { foreach($arrpoimage as $po) { ?>
                                                <div style="float:left; width:105px">
                                                    <img src="images/resize-100x100/<?php echo $po ?>" width="100px" style="margin-left:5px; margin-bottom:5px" />
                                                </div>
                                                <div class="clearer">&nbsp;</div>
                                                <?php } } else { ?>
                                                    <img src="images/resize-100x100/<?php echo $product['image'] ?>" width="100px" style="margin-left:5px; margin-bottom:5px" />
                                                <div class="clearer">&nbsp;</div>
                                                <?php } ?>
                                            </div>
                                        </td>
                                        <td style="width:40%"><?php echo ($product['title'] != "")?$product['title'] : $product['name'] ?> </td>
                                        <td style="width:10%; text-align:center"><?php echo $product['quantity'] ?></td>
                                        <td style="width:15%; text-align:right">
                                            <?php echo $this->string->numberFormate($product['price']) ?>
                                        </td>
                                        <td style="width:15%; text-align:right">
                                            <?php echo $this->string->numberFormate($product['price'] * $product['quantity']) ?> vnđ<br />
                                            <?php if($product['discount'] > 0 && $product['description'] != ""){ ?>
                                                <span style="color:#ff0000"><i><?php echo $product['description'] ?></i></span><br />
                                                <strong><i>Còn:</i> <?php echo $this->string->numberFormate($product['subtotal']) ?> vnđ</strong>
                                            <?php } $ordertotal += $product['subtotal']; ?>
                                        </td>
                                        
                                    </tr>
                            	<?php } ?>
                            	<tr>
                                	<td colspan="4" style="text-align:right; font-weight:600; color:#ff0000;">Tổng cộng:</td>
                                    <td style="text-align:right; font-weight:bold">
                                    	<?php echo $this->string->numberFormate($ordertotal) ?> vnđ
                                    </td>
                                </tr>
                                
                                <?php if(isset($item['promotion']) && $item['promotion'] > 0 && $item['promotionamount'] > 0) { ?>
                                	<tr>
                                    	<td colspan="4" style="text-align:right; font-weight:600">
                                        	Giảm <?php echo $item['promotion'] ?>% cho hóa đơn từ <?php echo $this->string->numberFormate($item['promotionamount']) ?> vnđ
                                        </td>
                                        <td style="text-align:right; color:#ff000; font-weight:bold">
                                            <?php echo $this->string->numberFormate(round(($ordertotal * $item['promotion'])/100,2)) ?> vnđ
                                        </td>
                                    </tr>
                                    <td colspan="4" style="text-align:right; font-weight:600; color:#ff0000">Còn:</td>
                                    <td style="text-align:right; font-weight:bold">
                                    	<?php echo $this->string->numberFormate($ordertotal - round(($ordertotal * $item['promotion'])/100,2)) ?> vnđ
                                    </td>
                                <?php } ?>
                                
                            </table>
                        </td>
                    </tr>
                    <?php } ?>
        <?php
            }
        }
        ?>                                  
                </tbody>
                </table>
            </div>
            <input type="hidden" id="page" name="page" value="<?php echo $post_data['page'] ?>"  />
        	<?php echo $paginate ?>
        </form>
        
    </div>
    
</div>
<script>
	
	function sendMail(orderid, status) {
		$.blockUI({ message: '<h1>Vui lòng chờ ... </h1>' });
		$.post("<?php echo HTTP_SERVER ?>?route=cpanel/smartorder/sendMail", {orderid : orderid, status : status}, function (data) {
			if(data == "true"){
				alert("<?php echo $message_send_mail_success ?>");
				$.unblockUI();
			}
			$.unblockUI();
		});
	}

	function showdetail(id) {
		if($("#sub"+id).is(":visible")) {
			$("#sub"+id).hide("slow");
			$("#detail" + id).html("<a class='button'>Chi tiết</a>");
		} else {
			$("#sub"+id).show("slow");
			$("#detail" + id).html("<a class='button'>Đóng</a>");
		}
	}
	
	function removeOrder(orderid) {
		$.blockUI({ message: '<h1>Vui lòng chờ ... </h1>'});
		$.get("?route=cpanel/smartorder/removeOrder&orderid=" + orderid, function(data){
			if(data == "true"){
				alert("<?php echo $announ_update_success ?>");
				window.location.reload();
				$.unblockUI();
			}
		});
		$.unblockUI();
		
	}
	
	$(".cbstatus").change(function(){
		var idValue = $(this).attr('id');
		var arrValue = idValue.split("-");
		orderid = arrValue[1];
		status = $(this).val();
		if(confirm("Bạn có muốn đổi hóa đơn này sang trạng thái " + $("#cbstatus-" + orderid + " option:selected").text() + " không?")){
			$.blockUI({ message: '<h1>Vui lòng chờ ... </h1>' });
			$.post("<?php echo HTTP_SERVER ?>?route=cpanel/smartorder/updateStatus", {orderid : orderid, status : status}, function (data) {
				if(data == "true"){
					alert("<?php echo $announ_update_success ?>");
					window.location.reload();
					$.unblockUI();
				}
				$.unblockUI();
			});
		} else {
			$("#cbstatus-" + orderid).val($(this).attr('alt'));
		}
	});
	
	function validate(evt) {
		var theEvent = evt || window.event;
		var key = theEvent.keyCode || theEvent.which;
		key = String.fromCharCode( key );
		var regex = /[0-9]|\./;
		if( !regex.test(key) ) {
			theEvent.returnValue = false;
			if(theEvent.preventDefault) theEvent.preventDefault();
		}
	}
	
	function validate_id(evt) {
		var theEvent = evt || window.event;
		var key = theEvent.keyCode || theEvent.which;
		key = String.fromCharCode( key );
		var regex = /[0-9]/;
		if( !regex.test(key) ) {
			theEvent.returnValue = false;
			if(theEvent.preventDefault) theEvent.preventDefault();
		}
	}
	
	function paginate(page) {
		$("#page").val(page);
		document.listitem.submit();
	}
</script>