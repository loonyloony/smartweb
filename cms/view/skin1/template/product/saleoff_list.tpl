<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section">

	<div class="section-title"><?php echo $heading_title?></div>
    
    <div class="section-content">
    	
        <form action="" method="post" id="listitem" name="listitem">
        	<div id="elife-search">
            	<!--<label>Tên sản phẩm</label>
                <input type="text" id="parentproduct" name="parentproduct" class="text" value="" />-->
                <!--<label>MemberID</label>
                <input type="text" id="userid" name="userid" class="text" value="" />-->
                <label>Khách hàng</label>
                <input type="text" id="customername" name="customername" class="text" value="" />
               <!-- <label>Địa chỉ</label>
                <input type="text" id="address" name="address" class="text" value="" />-->
                <!--<label>Email</label>
                <input type="text" id="email" name="email" class="text" value="" />-->
               <!-- <label>Điện thoại</label>
                <input type="text" id="phone" name="phone" class="text" value="" /><br />-->
                <label>Tình trạng</label>
                <select id="status" name="status">
                	<option value=""></option>
                    <?php foreach($this->document->saleoff as $key => $val) { ?>
                    <option value="<?php echo $key?>" ><?php echo $val?></option>
                    <?php } ?>
                </select>
                <label>Từ ngày</label>
				<script language="javascript">
                    $(function() {
                        $("#fromdate").datepicker({
                                changeMonth: true,
                                changeYear: true,
                                dateFormat: 'dd-mm-yy'
                                });
                        });
                 </script>
                 <input type="text" id="fromdate" name="fromdate" value="" class="text" />
                 
                <label>đến ngày</label>
				<script language="javascript">
                $(function() {
                    $("#todate").datepicker({
                            changeMonth: true,
                            changeYear: true,
                            dateFormat: 'dd-mm-yy'
                            });
                    });
                </script>
                 <input type="text" id="todate" name="todate" value="" class="text"/>
                <br />
                <input type="button" class="button" name="btnSearch" value="Tìm kiếm" onclick="searchForm()"/>
                <input type="button" class="button" name="btnSearch" value="Xem tất cả" onclick="window.location = '?route=product/saleoff'"/>
            </div>
        	<div class="button right">
            	<input class="button" type="button" name="delete_all" value="<?php echo $button_delete ?>" onclick="deleteorder()"/>  
            </div>
            <div class="clearer">&nbsp;</div>
            
            <div class="sitemap treeindex">
                <table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="15%">Tên sản phẩm</th>
                        <th width="25%">Họ tên khách hàng</th>
                        <!--<th width="25%">Địa chỉ</th>
                        <th width="15%">Số điện thoại</th>-->
                        <th width="50%">Thông tin liên hệ</th>
                        <!--<th width="15%">Thời gian</th>-->
                        <!--<th width="200px"></th>-->
                       <!-- <th width="15%"><?php echo $column_orderdate?></th>                    
                        <th width="10%"><?php echo $column_orderstatus?></th>   -->                               
                    </tr>
        
        
        <?php
        	$count = 1;
            foreach($orders as $order)
            {
        ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $order['id']?>]" value="<?php echo $order['id']?>" ></td>
                        <td><!--<a href="?route=product/saleoff/view&orderid=<?php echo $order['orderid']?>"><?php echo $order['orderid']?></a>--><?php echo $order['productname']?></td>
                        <td><?php echo $order['customername']?></td>
                       <!-- <td><?php echo $order['address']?></td>
                		<td><?php echo $order['phone']?></td>-->
                        <td>
                        	<table class="thongtin">
                            	<tr>
                                	<td width="60px">Địa chỉ:</td>
                                    <td><?php echo $order['address']?></td>
                                </tr>
                                <tr>
                                	<td>Điện thoại:</td>
                                    <td><?php echo $order['phone']?></td>
                                </tr>
                                <tr>
                                	<td>Email:</td>
                                    <td><?php echo $order['email'] ?></td>
                                </tr>
                                <tr>
                                	<td>CMND:</td>
                                    <td><?php echo $order['idcard'] ?></td>
                                </tr>
                                <tr>
                                	<td>Giá mua:</td>
                                    <td><?php echo $this->string->numberFormate($order['purchaseprice']) ?> <?php echo $this->document->setup['Currency']?></td>
                                </tr>
                                <tr>
                                	<td>Thời gian:</td>
                                    <td><?php echo $this->date->formatMySQLDate($order['purchasedate'],"longdate")?> <?php echo $this->date->getTime($order['orderdate'])?></td>
                                </tr>
                                <tr>
                                	<td>Ghi chú:</td>
                                    <td><?php echo $order['comment'] ?></td>
                                </tr>
                                <tr>
                                	<td>Tình trạng:</td>
                                    <td>
                                    	<select name="orderstatus[<?php echo $order['id'] ?>]" id="orderstatus<?php echo $order['id']?>">
                                            <option value="new">Chưa liên hệ</option>
                                            <option value="contacted">Đã liên hệ</option>
                                            <option value="deleted">Hủy</option>
                                        </select>
                                        
                                        <script language="javascript">
                                        $(document).ready(function(e) {
                                            $("#orderstatus<?php echo $order['id'] ?>").val("<?php echo $order['status'] ?>");
                                        });
                                        
										$("#orderstatus<?php echo $order['id']?>").change(
											function(){
												id = "<?php echo $order[id] ?>";
												status = $("#orderstatus<?php echo $order['id']?>").val();
												//alert($("#orderstatus<?php echo $order['id']?>").val());
												$.post("?route=product/saleoff/updatestatus", 
													{ 
														id: id ,
														status : status
													},
													function(data){
														if(data == "true")
														{
															alert("Cập nhật thành công");	
														}
													});
											}
										);
										
                                        </script>
                                    
                                    </td>
                                </tr>
                            </table>
                        
                        </td>
                        
                      <!--  <td class="link-control">-->
                            <!--<select id="status<?php echo $order['orderid']?>" onchange="order.updateStatus('<?php echo $order['orderid']?>',this.value)">
                            	<?php foreach($this->document->status as $key => $val) { ?>
                                <option value="<?php echo $key?>" <?php echo ($order['status'] == $key)?'selected="selected"':''?>><?php echo $val?></option>
                                <?php } ?>
                            </select>-->
                         <!--   <?php echo $this->document->status[$order['status']]?>
                        </td>-->
                    </tr>
        <?php
            }
        ?>
                        
                                                    
                </tbody>
                </table>
            </div>
        
        
        </form>
        
        <div class="phantrang"><?php echo $listpage ?></div>
    </div>
    
</div>
<script language="javascript">
function deleteorder()
{
	var answer = confirm("Bạn có muốn xóa không?")
	if (answer)
	{
		$.post("?route=product/saleoff/delete", 
				$("#listitem").serialize(), 
				function(data)
				{
					if(data!="")
					{
						alert(data)
						window.location.reload();
					}
				}
		);
	}
}

function searchForm()
{
	var url =  "?route=product/saleoff";
	
	/*if($("#orderid").val() != "")
		url += "&parentproduct=" + $("#parentproduct").val();*/
	/*if($("#userid").val() != "")
		url += "&userid="+ $("#userid").val();*/
	if($("#customername").val() != "")
		url += "&customername="+ $("#customername").val();
	/*if($("#address").val() != "")
		url += "&address="+ $("#address").val();
	if($("#email").val() != "")
		url += "&email="+ $("#email").val();
	if($("#phone").val() != "")
		url += "&phone="+ $("#phone").val();*/
	if($("#status").val() != "")
		url += "&status="+ $("#status").val();
	if($("#fromdate").val() != "")
		url += "&fromdate="+ $("#fromdate").val();
	if($("#todate").val() != "")
		url += "&todate="+ $("#todate").val();
	
	window.location = url;
}

$("#parentproduct").val("<?php echo $_GET['parentproduct']?>");
$("#userid").val("<?php echo $_GET['userid']?>");
$("#customername").val("<?php echo $_GET['customername']?>");
$("#address").val("<?php echo $_GET['address']?>");
$("#email").val("<?php echo $_GET['email']?>");
$("#phone").val("<?php echo $_GET['phone']?>");
$("#status").val("<?php echo $_GET['status']?>");
$("#fromdate").val("<?php echo $_GET['fromdate']?>");
$("#todate").val("<?php echo $_GET['todate']?>");
</script>