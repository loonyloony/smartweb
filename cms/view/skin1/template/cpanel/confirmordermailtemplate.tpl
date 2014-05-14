<p>
Xin chào quý khách,
</p>
<br/>
<p>Cảm ơn bạn đã đặt hàng tại website </p>
<p>Dưới đây là thông tin xác nhận đơn hàng của bạn. </p>

<h2> Thông Tin Đơn Hàng </h2>
<table>
	<tr>
		<td width="200px">Họ và tên người mua:</td>
        <td><?php echo $order['customername'] ?></td>
    </tr>
    <tr>
		<td width="200px">Địa chỉ Email:</td>
        <td><?php echo $order['email'] ?></td>
    </tr>
    <tr>
		<td width="200px">Điện thoại:</td>
        <td><?php echo $order['phone'] ?></td>
    </tr>
    <tr>
		<td width="200px">Địa chỉ nhận hàng:</td>
        <td><?php echo $order['address'] ?></td>
    </tr>
    <tr>
		<td width="200px">Đặt ngày:</td>
        <td><?php echo $this->date->getToday() ?></td>
    </tr>
    <tr>
    	<td>Hóa đơn số:</td>
        <td><?php echo $order['orderid'] ?></td>
    </tr>
</table>

<h2> Chi Tiết Đơn Hàng </h2>
<table>
	<tr style="background:#bde5f8">
    	<td style="border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center">STT</td>
        <td style="border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center">Sản phẩm</td>
        <td style="border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center">Hình ảnh</td>
        <td style="border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center">Giá(vnđ)</td>
        <td style="border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center">Số Lượng</td>
        <td style="border:1px solid #ccc; padding:5px; color:#00529b; font-weight:600; text-align:center">Thành Tiền</td>
    </tr>
    <?php $temp=1; if(count($products) > 0) { foreach($products as $item) { ?>
    <tr>
    	<td style="border:1px solid #ccc; padding:5px; text-align:center"><?php echo $temp++ ?></td>
        <td style="border:1px solid #ccc; padding:5px; font-weight:600"><?php echo $item['name'] ?></td>
        <td style="border:1px solid #ccc; padding:5px; width:100px">
            <img src="<?php echo IMAGE_SERVER  ?>images/smartweb_<?php echo SKINID ?>/resize-100x100/<?php echo $item['image'] ?>" width="100" />
        </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:right">
        	<?php echo $this->string->numberFormate($item['price']) ?>
        </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:center">
        	<?php echo $item['quantity'] ?>
        </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:right">
        	<?php echo $this->string->numberFormate($item['price'] * $item['quantity']) ?> vnđ<br />
            <?php if($item['discount'] > 0 && $item['description'] != ""){ ?>
                <span style="color:#ff0000"><i><?php echo $item['description'] ?></i></span><br />
                <strong><i>Còn:</i> <?php echo $this->string->numberFormate($item['subtotal']) ?> vnđ</strong>
            <?php } ?>
        </td>
        
    </tr>
    <?php } } ?>
    <tr>
    	<td colspan="5" style="border:1px solid #ccc; padding:5px; text-align:right; font-weight:600"> Tổng Cộng: </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:right; font-weight:600; color:#ff0000"><?php echo $this->string->numberFormate($ordertotal) ?> vnđ</td>
    </tr>
    
    <tr>
    	<?php if($order['promotion'] > 0 && $order['promotionamount'] > 0) {?>
        <td colspan="5" style="border:1px solid #ccc; padding:5px; text-align:right; font-weight:600">
            Giảm <?php echo $order['promotion'] ?>% cho hóa đơn từ <?php echo $this->string->numberFormate($order['promotionamount']) ?> vnđ
        </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:right; color:#ff0000; font-weight:bold">
            <?php echo $this->string->numberFormate(round(($ordertotal * $order['promotion'])/100,2)) ?> vnđ
        </td>
        <?php }?>
    </tr>
    <td colspan="5" style="border:1px solid #ccc; padding:5px; text-align:right; font-weight:600">Còn:</td>
    <td style="border:1px solid #ccc; padding:5px; text-align:right; font-weight:bold; color:#ff0000">
        <?php echo $this->string->numberFormate($ordertotal - round(($ordertotal * $order['promotion'])/100,2)) ?> vnđ
    </td>

</table>
<p>
	Trân trọng,<br />
    <?php echo $this->config->get('config_sitename') ?>
</p>
<p><i>Đây là email được gởi tự động từ website. Vui lòng không trả lời email này vì chúng tôi sẽ không nhận được email của bạn.</i></p>
<p><i>Nếu không hiểu về nội dung email này hãy đơn giản là xóa nó khỏi hòm thư của bạn</i></p>