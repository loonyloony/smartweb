<div class="section">

    <div class="elife-section-title">
        <h1>
            <a>LỊCH SỬ ĐƠN HÀNG</a>
        </h1>
    </div>
    
    <div>
    	<?php echo $paginate ?>
    	<p>&nbsp;</p>
    	<div class="clearer">&nbsp;</div>
    </div>
    
    <div class="section-content">
        
            <div id="elife-search">
            	<!--
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
                -->
            </div>
            
            
            <div class="sitemap treeindex">
            
            	<table class="data-table smartorder" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <!--<th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>-->
                        <th width="6%"><?php echo $text_number ?></th>
                        <th width="15%">Mã Hóa Đơn</th>
                        <th width="35%">Thông Tin Khách Hàng</th>
                        <th width="30%">Thông Tin Đơn Hàng</th>
                        <th width="10%"><?php echo $text_price ?></th>
                    </tr>
        
        <?php
        if(count($orders) > 0)
        {
        	$stt = 1;
            foreach($orders as $item)
            {
        ?>
                    <tr id="order-<?php echo $item['orderid']?>" class="order" onclick="showdetail('<?php echo $item['orderid']?>')" >
                        <!--<td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['orderid']?>]" value="<?php echo $item['orderid']?>" ></td>-->
                        
                        <td class="stt"><?php echo $stt++ ?></td>
                        <td>
                        	<?php echo $item['orderid']?>
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
                            	<tr class="total">
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
            
            <div>
        		<?php echo $paginate ?>
                <div class="clearer">&nbsp;</div>
       		</div>
        
    </div>
    
</div>
<script>
	function showdetail(id) {
		if($("#sub"+id).is(":visible")) {
			$("#sub"+id).hide("slow");
			$("#order-"+id).css('background-color', 'transparent');
		} else {
			$("#sub"+id).show("slow");
			
			$("#order-"+id).css('background-color', '#efefef');
		}
	}
	
	function paginate(page) {
		window.location = "lich-su-don-hang.html?page="+page;
	}
</script>