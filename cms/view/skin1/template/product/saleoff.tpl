                                <table>
                                	<thead>
                                    	<tr>
                                        	<th>Tên sản phẩm</th>
                                           	<!-- <th>Code</th>-->
                                            <th>Số lượng khuyến mãi</th>
                                            <th>Giá khuyến mãi</th>
                                            <th>Số lượng đã mua</th>
                                            <th>Tình trạng</th>
                                            <th><?php echo $lbl_order ?></th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
<?php
	$status = 'Còn hàng';
    $class = 'green';
	foreach($child as $item)
    {
    	if($item['salenumber'] == $item['purchasenumber'])
        {
        	$status = 'Cháy hàng';
            $class = 'red';
        }
?>
                                        <tr>
                                            
                                            <td><?php echo $item['productname']?></td>
                                            <td class="number"><?php echo $this->string->numberFormate($item['salenumber'])?></td>
                                            <td class="number"><?php echo $this->string->numberFormate($item['price'])?></td>
                                            <td class="number"><?php echo $this->string->numberFormate($item['purchasenumber'])?></td>
                                            <td class="number <?php echo $class ?>"><?php echo $status ?></td>
                                            <td>
                                                <input type="text" class="text number price" id="pos-<?php echo $item['id']?>" name="pos[<?php echo $item['id']?>]" value="<?php echo $item['position']?>" size="3" style="text-align:right"/>
                                            </td>
                                            <td></td>
                                            <td>
                                                
                                                <a class="button" onclick="btnEdit('<?php echo $item['id']?>')"><?php echo $button_edit ?></a>&nbsp;<a class="button" onclick="btnRemove('<?php echo $item['id']?>')"><?php echo $button_delete ?></a>
                                            </td>
                                            
                                        </tr>
<?php
	}
?>                                    
                                    </tbody>
                                	<tfoot>
                                    	<tr>
                                        	<td colspan="3">
                                            	<center>
                                                	<input type="button" class="button" id="btnUpdatePrice" name="btnUpdatePos"  value="<?php echo $button_updateposition ?>" />
                                                   <!-- <input type="hidden" name="mainprice" value="<?php echo $child[0]['mainprice']?>" />-->
                                                </center>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
<script language="javascript">
$(document).ready(function() {
	numberReady();
})

$("#btnUpdatePrice").click(function(){
	$(".price").each(function(index){
		var arr = this.id.split('-');
		var id = arr[1];
		var pos = $(this).val().replace(/,/g,"");
		$.post("?route=product/updatePosChild", 
					{
						id : id, 
						position : pos
					},
		function(data){
			if(data=="true")
			{
				
			    $("#pricelist").load("?route=product/loadPrice&mediaid="+$("#mediaid").val());

			}
		});
	})
});

function btnEdit(id)
{
	$.getJSON("?route=product/getPrice&mediaid="+id, 
	function(data) 
	{
		
		$("#price_mediaid").val(data.price.id);
		//$("#price_title").val(data.price.productname);
		$("#number_total").val(formateNumber(formateNumber(data.price.salenumber)));
		$("#price_khuyenmai").val(formateNumber(formateNumber(data.price.price)));
		//$("#price_khuyenmai").val(formateNumber(data.price.khuyenmai));
		

		numberReady();
		
	});	
}

function btnRemove(id)
{
	//$.blockUI({ message: "<h1>Please wait...</h1>" });
	$.ajax({
		url: "?route=product/deleteProduct&mediaid="+id, 
		cache: false,
		success: function(html)
		{
			$("#pricelist").load("?route=product/loadPrice&mediaid="+$("#mediaid").val());
		}
	});	
}

</script>