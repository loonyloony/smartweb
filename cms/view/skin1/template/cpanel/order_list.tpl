<div class="section">

    <div class="section-title">
    	<div class="titletext left"> QUẢN LÝ ĐƠN ĐẶT HÀNG </div>
        <div class="button right">
           	 	<input class="button" type="button" name="active" value="Xác nhận" onclick="active()"/>
                <input class="button" type="button" name="delivered" value="hoàn tất" onclick="deliver()"/> 
                <input class="button" type="button" name="cancel" value="hủy" onclick="cancel()"/>   
         </div>
         <div class="clearer">^&nbsp;</div>
    </div>
        
    <div class="section-content">
        
        <form action="<?php echo HTTP_SERVER ?>?route=cpanel/order" method="post" id="listitem" name="listitem">
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
                	<?php echo $stt_box ?>
                </select>
                <br />
                <input type="button" class="button" name="btnSearch" value="Tìm" onclick="paginate(1)"/>
                <input type="button" class="button" name="btnSearch" value="Xem tất cả" onclick="location.reload()"/>
            </div>
            
            
            <div class="sitemap treeindex">
            
            	<table class="data-table order-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="9%"><?php echo $text_number ?></th>
                        <th width="10%">ID</th>
                        <th width="20%">Khách hàng</th>
                        <th width="40%">Thông tin</th>
                        <th width="10%"><?php echo $text_price ?></th>
                        <th width="10%"></th>
                    </tr>
        
        <?php
        //print_r($list_order);
        if(count($list_order) > 0)
        {
        	$stt = 1;
            foreach($list_order as $item)
            {
        ?>
                    <tr class="order-<?php echo $item['status']?>" onclick="show_sub('sub<?php echo $item['orderid']?>')" style="cursor:pointer">
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['orderid']?>]" value="<?php echo $item['orderid']?>" ></td>
                        
                        <td><?php echo $stt++ ?></td>
                        <td><?php echo $item['orderid']?></td>
                        <td><?php echo $item['userid'] ?></td>
                        <td>
                        	<?php echo $item['customername'] ?> (dt: <?php echo $item['phone'] ?>)<br />
                            email: <?php echo $item['email'] ?> - địa chỉ: <?php echo $item['address'] ?>                    
                        </td>
                        <td><?php echo $this->string->numberFormate($item['total']) ?> </td>
                        <td><?php echo $stt_map[$item['status']] ?> </td>
                    </tr>
                    <tr id="sub<?php echo $item['orderid']?>" style="display:none">
                    	<td colspan="7">
                            <table>
                            <?php foreach($item['order_product'] as $d) { ?>
                                <tr>
                                    <td style="width:300px"><?php echo ($d['title'] != "")?$d['title'] : $d['name'] ?> </td>
                                    <td style="width:50px"><?php echo $d['quantity'] ?> </td>
                                    <td style="width:100px"><?php echo $this->string->numberFormate($d['price']) ?> </td>
                                    <td style="width:450px">
                                    	<div style="width:200px">
                                            <?php $arrpoimage = explode(",", $d['poimage']);?>
                                            <?php if(count($arrpoimage) > 1) { foreach($arrpoimage as $po) { ?>
                                            <div style="float:left; width:105px">
                                                <img src="images/resize-100x100/<?php echo $po ?>" width="100px" style="margin-left:5px; margin-bottom:5px" />
                                            </div>
                                            <div class="clearer">&nbsp;</div>
                                            <?php } } else { ?>
                                                <img src="images/resize-100x100/<?php echo $d['image'] ?>" width="100px" style="margin-left:5px; margin-bottom:5px" />
                                            <div class="clearer">&nbsp;</div>
                                            <?php } ?>
                                        </div>
                                    </td>
                                </tr>
                            <?php } ?>
                            </table>
                        </td>
                    </tr>
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
	function show_sub(id) {
		if($("#"+id).is(":visible")) {
			$("#"+id).hide("slow");
		} else {
			$("#"+id).show("slow");	
		}
	}
	
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
	
	function active() {
		$.post("<?php echo HTTP_SERVER ?>?route=cpanel/order/active", $("#listitem").serialize(), function (data) {
			if(data == "true") {
				alert("Xác nhận các đơn hàng thành công");
				location.reload();	
			} else {
				alert(data);	
			}
		});
	}
	
	function deliver() {
		$.post("<?php echo HTTP_SERVER ?>?route=cpanel/order/deliver", $("#listitem").serialize(), function (data) {
			if(data == "true") {
				alert("Hoàn tất các đơn hàng thành công");
				location.reload();	
			} else {
				alert(data);	
			}
		});
	}
	
	function cancel() {
		$.post("<?php echo HTTP_SERVER ?>?route=cpanel/order/cancel", $("#listitem").serialize(), function (data) {
			if(data == "true") {
				alert("Hủy các đơn hàng thành công");
				location.reload();	
			} else {
				alert(data);	
			}
		});
	}
</script>