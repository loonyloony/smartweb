<div class="section">

	<h2><?php echo $text_history_order ?></h2>
    <div class="section-content historyorder">
                  
            
            <div class="sitemap treeindex">
            
            	<table class="order-tbl" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr>
                        <th width="10%"><?php echo $text_number ?></th>
                        <th width="20%"><?php echo $text_id ?></th>
                        <th width="30%"><?php echo $text_date ?></th>
                        <th width="20%"><?php echo $text_price ?></th>
                        <th width="20%"><?php echo $text_status ?></th>
                    </tr>
        
        <?php
        if(count($list_order) > 0)
        {
        	$stt = 1;
            foreach($list_order as $item)
            {
        ?>
                    <tr class="order-<?php echo $item['status']?>" onclick="show_sub('sub<?php echo $item['orderid']?>')" style="cursor:pointer">
                        <td style="text-align:center"><?php echo $stt++ ?></td>
                        <td><?php echo $item['orderid']?></td>
						<td><?php echo $this->date->formatMySQLDate($item['orderdate']) ?></td>
                        <td style="color:#ff0000; font-weight:bold; text-align:right"><?php echo $this->string->numberFormate($item['total']) ?> đ</td>
                        <td style="text-align:right; font-weight:bold"><?php echo $stt_map[$item['status']] ?> </td>
                    </tr>
                    <tr id="sub<?php echo $item['orderid']?>" style="display:none">
                    	<td colspan="7">
                    	<table class="detail-order-tbl">
                        <?php foreach($item['order_product'] as $d) { ?>
                        	<tr>
                            	<td style="color:#4580b8; font-weight:600"><?php echo $d['name'] ?> </td>
                                <td width="10%" style="text-align:right"><?php echo $this->string->numberFormate($d['price']) ?> đ</td>
                                <td width="10%"><?php echo "x ". $d['quantity'] ?> </td>
                                <td width="20%" style="text-align:right"><?php echo $this->string->numberFormate($d['quantity']*$d['price']) ?> đ</td>
                            </tr>
                        <?php } ?>
                        	<tr>
                            	<td colspan="3" style="text-align:right; font-weight:700"> Tổng cộng </td>
                                <td style="color:#ff0000; font-weight:bold; text-align:right"><?php echo $this->string->numberFormate($item['total']) ?> đ</td>
                            </tr>
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
	
</script>