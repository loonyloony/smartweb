<p>
Xin chào quý khách,
</p>
<br/>
<p>Cảm ơn Quý khách đã tin tưởng và mua hàng tại website </p>
<p>Email này để xác nhận việc hoàn tất đơn hàng có hóa đơn số <strong><?php echo $order['orderid'] ?></strong></p>
<p>Quý khách vui lòng đăng nhập vào hệ thống website tại <a href="<?php echo $this->config->get('config_siteurl') ?>" target="_blank">Fan hàng hiệu</a> để xem lịch sử đơn hàng và cập nhật những sản phẩm mới nhất của các thương hiệu nổi tiếng tại website</p>
<?php if(isset($fan) && $fan == "true") { ?>
<h2> Thông Tin Thành Viên </h2>
<table>
	<tr>
		<td width="200px">Họ:</td>
        <td><?php echo $customer['lastname'] ?></td>
    </tr>
    <tr>
		<td width="200px">Tên:</td>
        <td><?php echo $customer['firstname'] ?></td>
    </tr>
    <tr>
		<td width="200px">Địa chỉ Email:</td>
        <td><?php echo $customer['email'] ?></td>
    </tr>
    <tr>
		<td width="200px">Điện thoại:</td>
        <td><?php echo $customer['telephone'] ?></td>
    </tr>
    <tr>
		<td width="200px">Địa chỉ:</td>
        <td><?php echo $customer['address'] ?></td>
    </tr>
    <tr>
		<td width="200px">Điểm thành viên hiện có:</td>
        <td><?php echo $customer['point'] ?></td>
    </tr>
</table>
<?php } ?>
<p>
	Trân trọng,<br />
    <?php echo $this->config->get('config_sitename') ?>
</p>

<p><i>Đây là email được gởi tự động từ website. Vui lòng không trả lời email này vì chúng tôi sẽ không nhận được email của bạn.</i></p>
<p><i>Nếu không hiểu về nội dung email này hãy đơn giản là xóa nó khỏi hòm thư của bạn</i></p>