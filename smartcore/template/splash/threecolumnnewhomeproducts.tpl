<div id="dvu">
	<div class="elife-left">
    	<a href="bao-tri-bao-duong.html"><img src="<?php echo DIR_IMAGE; ?>dvu1.png"  /></a>
    </div>
    
    <div class="elife-left">
    	<a href="cho-thue-may-phat-dien.html"><img src="<?php echo DIR_IMAGE; ?>dvu2.png"  /></a>
    </div>
    
    <div class="elife-left last">
    	<a href="sua-chua-trung-tu-dai-tu.html"><img src="<?php echo DIR_IMAGE; ?>dvu3.png"  /></a>
    </div>
    <div class="clearer"></div>
</div>
<div id="home-product-list">
	<div class="elife-left col3">
    	<h2>Máy phát điện mới</h2>
        <div class="list-product">
        
        <?php if(count($new_generators)) { foreach($new_generators as $item) { ?>
        	<div class="product-item">
            	<div class="product-item-image elife-left">
                	<a href="<?php echo $item['link'] ?>"><img src="images/resize-120x80/<?php echo $item['image']?>" alt="<?php echo $item['name'] ?>" /></a>
                </div>
                <div class="product-item-content elife-left">
                	<div class="product-item-content-title"><a href="<?php echo $item['link'] ?>"><?php echo $item['name'] ?></a></div>
                    <div class="product-item-content-summary"><?php echo $this->string->getTextLength(htmlspecialchars_decode($item['summary']), 0, 25) ?></div>
                </div>
                
                <div class="clearer">&nbsp;</div>
            </div>
        <?php } } ?>
        </div>
    </div>
    
    <div class="elife-left col3">
    	<h2>Máy phát điện đã qua sử dụng</h2>
        <div class="list-product">
        <?php if(count($old_generators)) { foreach($old_generators as $item) { ?>
        	<div class="product-item">
            	<div class="product-item-image elife-left">
                	<a href="<?php echo $item['link'] ?>"><img src="images/resize-120x80/<?php echo $item['image']?>" alt="<?php echo $item['name'] ?>" /></a>
                </div>
                <div class="product-item-content elife-left">
                	<div class="product-item-content-title"><a href="<?php echo $item['link'] ?>"><?php echo $item['name'] ?></a></div>
                    <div class="product-item-content-summary"><?php echo $this->string->getTextLength(htmlspecialchars_decode($item['summary']), 0, 25) ?></div>
                </div>
                
                <div class="clearer">&nbsp;</div>
            </div>
        <?php } } ?>
        </div>
    </div>
    
    <div class="elife-left col3 last">
    	<h2>Dịch vụ</h2>
   		<div id="hotline-content">
        	<div class="hotline">
        		<div class="hotline-title">Đường dây nóng:</div>
            	<div class="hotline-phone">1900 1687</div>
            </div>
            <div class="hotline-contact">
            	<?php for($i=0; $i < 2; $i++) { ?>
            	<div class="hotline-contact-infor elife-left">
                	<?php echo $supportonline[$i]['title'] ?>:<br />
                    <a href="ymsgr:sendIM?<?php echo $supportonline[$i]['yahoo']?>"><img border="0" src="http://opi.yahoo.com/online?u=<?php echo $supportonline[$i]['yahoo']?>&amp;m=g&amp;t=1"></a><br />
                    <?php if($supportonline[$i]['telephone'] != ''){ ?>
                    ĐT: <?php echo $supportonline[$i]['telephone'] ?>
                    <?php } ?>
                </div>
                <?php } ?>
                <div class="clearer">&nbsp;</div>
            </div>
        </div>
    </div>
    
    <div class="clearer"></div>
</div>