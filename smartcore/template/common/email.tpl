Cảm ơn bạn đã đặt hàng tại website <br />

Dưới đây là thông tin đơn hàng của bạn. <br />

<table>
	<tr>
		<td width="200px">Họ và tên người mua:</td>
        <td><?php echo $order['name'] ?>.</td>
    </tr>
    <tr>
		<td width="200px">Địa chỉ Email:</td>
        <td><?php echo $order['email'] ?>.</td>
    </tr>
    <tr>
		<td width="200px">Điện thoại:</td>
        <td><?php echo $order['telephone'] ?>.</td>
    </tr>
    <tr>
		<td width="200px">Địa chỉ nhận hàng:</td>
        <td><?php echo $order['address'] ?>.</td>
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

<table>
	<tr style="background:#006cff">
    	<td style="border:1px solid #ccc; padding:5px; color:#fff; font-weight:600; text-align:center">STT</td>
        <td style="border:1px solid #ccc; padding:5px; color:#fff; font-weight:600; text-align:center">Sản phẩm</td>
        <td style="border:1px solid #ccc; padding:5px; color:#fff; font-weight:600; text-align:center">Hình ảnh</td>
        <td style="border:1px solid #ccc; padding:5px; color:#fff; font-weight:600; text-align:center">Giá(vnđ)</td>
        <td style="border:1px solid #ccc; padding:5px; color:#fff; font-weight:600; text-align:center">Số Lượng</td>
        <td style="border:1px solid #ccc; padding:5px; color:#fff; font-weight:600; text-align:center">Thành Tiền</td>
    </tr>
    <?php $temp=1; if(count($order['cart']) > 0) { foreach($order['cart'] as $item) { ?>
    <tr>
    	<td style="border:1px solid #ccc; padding:5px; text-align:center"><?php echo $temp++ ?></td>
        <td style="border:1px solid #ccc; padding:5px; font-weight:600"><?php echo $item['name'] ?></td>
        <td style="border:1px solid #ccc; padding:5px;">
        	<?php if(count($item['image']) > 1) { foreach($item['image'] as $image) { ?>
            <img src="<?php echo IMAGE_SERVER  ?>images/smartweb_<?php echo SKINID ?>/resize-100x100/<?php echo $image ?>" width="100" />
            <?php } } else { ?>
            <img src="<?php echo IMAGE_SERVER  ?>images/smartweb_<?php echo SKINID ?>/resize-100x100/<?php echo $item['image'] ?>" width="100" />
            <?php } ?>
        </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:right">
        	<?php echo $this->string->numberFormate($item['price']) ?>
        </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:center">
        	<?php echo $item['product-qty'] ?>
        </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:right">
        	<?php echo $this->string->numberFormate($item['price'] * $item['product-qty']) ?>
        </td>
        
    </tr>
    <?php } } ?>
    <tr>
    	<td colspan="5" style="border:1px solid #ccc; padding:5px; text-align:right; font-weight:600"> Tổng Cộng: </td>
        <td style="border:1px solid #ccc; padding:5px; text-align:right; font-weight:600; color:#ff0000"><?php echo $this->string->numberFormate($order['ctotal']) ?></td>
    </tr>
</table>
      

Đây là email được gởi tự động từ website. Vui lòng không trả lời email này vì chúng tôi sẽ không nhận được email của bạn. Nếu không hiểu về nội dung email này hãy đơn giản là xóa nó khỏi hòm thư của bạn

