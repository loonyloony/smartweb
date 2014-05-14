<!--<div class="lastestnews elife-left">
    <div class="elife-wrapper">
        <div class="elife-section">
            <div class="elife-section-title"><h2><?php echo $title_latestnews1 ?></h2></div>
            <div class="elife-section-content">
                <div class="elife-post">
                    <h3><a class="elife-post-title">10 Latest Open Source Website Design and Development Tools</a></h3>
                    <p class="elife-post-summary">
                       In website design industry, new tools are added frequently. Some of the latest tools that the industry is using currently include jQuerin Grid Builder, Normalize CSS 1.0 and Photon.
                    </p>
                    <div class="clearer">&nbsp;</div>
                </div>
                <div class="elife-post">
                    <h3><a class="elife-post-title">Significance Of Designing Your Website Around The Content</a></h3>
                    <p class="elife-post-summary">
                        For web designers, there are a number of challenges that they have to confront when working on a project.
                    </p>
                    <div class="clearer">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="recentworks elife-right">
    <div class="elife-wrapper">
        <div class="elife-section">
            <div class="elife-section-title"><h2><?php echo $title_completedprojects ?></h2></div>
            <div class="elife-section-content">
                <a><img src="<?php echo DIR_IMAGE?>recentworks/1.jpg" /></a>
                <a><img src="<?php echo DIR_IMAGE?>recentworks/2.jpg" /></a>
                <a><img src="<?php echo DIR_IMAGE?>recentworks/3.jpg" /></a>
                <a><img src="<?php echo DIR_IMAGE?>recentworks/4.jpg" /></a>
                <a><img src="<?php echo DIR_IMAGE?>recentworks/5.jpg" /></a>
                <a><img src="<?php echo DIR_IMAGE?>recentworks/6.jpg" /></a>
                <a><img src="<?php echo DIR_IMAGE?>recentworks/7.jpg" /></a>
                <a><img src="<?php echo DIR_IMAGE?>recentworks/8.jpg" /></a>
            </div>
        </div>
    </div>
</div>
<div class="clearer">&nbsp;</div>
-->

<?php
	$this->document->addStyle("smartweb_infor.css");
?>

<div class="smartweb_block_even">
	<div class="smartweb-wrapper">
	<h1>CÁC DỰ ÁN THIẾT KẾ WEB VỚI SẢN PHẨM SMARTWEB ĐÃ THỰC HIỆN</h1>
<div class="elife-hline"></div>
<div>
    <p>Với khoảng chi phí đầu tư từ <b>4 - 5 triệu đồng</b>, SmartWeb đã cung cấp tất cả các dịch vụ cần thiết cho việc vận hành và phát triển web: <b>thiết kế web, hosting, domain, xây dựng nội dung web, email thương hiệu</b>. Chúng tôi tối ưu hóa sản phẩm về giá nhưng cũng đảm bảo về mặt thẩm mỹ và chất lượng, với mỗi website, sẽ có một chuyên viên thiết kế nghiên cứu và thiết kế riêng, không hề rập khuôn như các sản phẩm web khác trên thị trường. <a href="smartweb.html">Tham khảo thêm về SmartWeb</a></p>
    
</div>
<div class="slides_martwebsample">
	<div id="sample_slideshow">
        <a href="http://htn.vn" target="_blank" class="active"><img src="<?php echo DIR_IMAGE?>sample1.jpg" /></a>
        <a href="http://buffethanoi.com" target="_blank"><img src="<?php echo DIR_IMAGE?>sample2.jpg" /></a>
        <a href="http://sgdrcvinguyen.com" target="_blank"><img src="<?php echo DIR_IMAGE?>sample3.jpg" /></a>
    </div>
    <div class="lcd_sample"></div>
</div>

<script type="text/javascript">

/*** 
    Simple jQuery Slideshow Script
    Released by Jon Raasch (jonraasch.com) under FreeBSD license: free to use or modify, not responsible for anything, etc.  Please link out to me if you like it :)
***/

function slideSwitch() {
    var $active = $('#sample_slideshow a.active');

    if ( $active.length == 0 ) $active = $('#sample_slideshow a:last');

    // use this to pull the images in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#sample_slideshow a:first');

    // uncomment the 3 lines below to pull the images in random order
    
    // var $sibs  = $active.siblings();
    // var rndNum = Math.floor(Math.random() * $sibs.length );
    // var $next  = $( $sibs[ rndNum ] );


    $active.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });

}

$(function() {
    setInterval( "slideSwitch()", 3000 );
});

</script>
	</div>
</div>