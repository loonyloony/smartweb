<div class="productcarousel-title">
	<img style="vertical-align:middle" width="22" height="19" align="product top" src="<?php echo DIR_IMAGE?>icon_item.png" />
  <span>CƠ HỘI MUA MERCEDES ĐÃ QUA SỬ DỤNG ĐƯỢC KIỂM ĐỊNH CHÍNH HÃNG</span>
</div>

<div id="ca-container" class="ca-container">
  <div class="ca-wrapper">
    
    <div class="ca-item">
      <div class="ca-item-main"> 
      	<div class="ca-item-title">
      		<span>MERCEDES C CLASS ĐỜI 2011</span>
        </div>
        <div>
      		<img width="224" height="125" alt="product title" src="<?php echo DIR_IMAGE?>product-image.jpg"/> 
        </div>
      </div>
    </div>
    
    <div class="ca-item">
      <div class="ca-item-main"> 
      	<div class="ca-item-title">
      		<span>MERCEDES C CLASS ĐỜI 2011</span>
        </div>
        <div>
      		<img width="224" height="125" alt="product title" src="<?php echo DIR_IMAGE?>product-image2.jpg"/> 
        </div>
      </div>
    </div>
    
    <div class="ca-item">
      <div class="ca-item-main"> 
      	<div class="ca-item-title">
      		<span>MERCEDES C CLASS ĐỜI 2011</span>
        </div>
        <div>
      		<img width="224" height="125" alt="product title" src="<?php echo DIR_IMAGE?>product-image3.jpg"/> 
        </div>
      </div>
    </div>
    
    <div class="ca-item">
      <div class="ca-item-main"> 
      	<div class="ca-item-title">
      		<span>MERCEDES C CLASS ĐỜI 2011</span>
        </div>
        <div>
      		<img width="224" height="125" alt="product title" src="<?php echo DIR_IMAGE?>product-image4.jpg"/> 
        </div>
      </div>
    </div>
    
  </div>
</div>

<div class="productcarousel-footer">
	<div class="elife-right">
  	<a href="#">Xem tất cả xe Mercedes đã qua sử dụng &gt;</a><br/>
    <img width="284" height="1" src="<?php echo DIR_IMAGE?>bgline_link.png" />
  </div>
</div>

<script type="text/javascript">
	$('#ca-container').contentcarousel();
	var int = setInterval("$('.ca-nav-next').trigger('click');",5000);    
	$('.ca-item').hover(function(){
		clearInterval(int);
	},function(){
		int = setInterval("$('.ca-nav-next').trigger('click');",5000);    
	});
	
</script>
