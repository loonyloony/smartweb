<!-- HTML TIN TỨC -->
<?php
	$this->document->addScript("jquery.js");
    $this->document->addScript("jquery.jcarousel.min.js");
	$this->document->addScript("jquery.pikachoose.min.js");
	$this->document->addScript("jquery.touchwipe.min.js");
	
	
	$this->document->addScript("");
	  
	$this->document->addStyle("bottom.css");
?>
<script language="javascript">

			$(document).ready(
				function (){
					$("#pikame").PikaChoose({carousel:true,carouselOptions:{wrap:'circular'}});
				});
</script>

<script>
$(document).ready(function() {
    $("#content").find("[id^='tab']").hide(); // Hide all content
    $("#tabs li:first").attr("id","current"); // Activate the first tab
    $("#content #tab1").fadeIn(); // Show first tab's content
    
    $('#tabs a').click(function(e) {
        e.preventDefault();
        if ($(this).closest("li").attr("id") == "current"){ //detection for current tab
         return;       
        }
        else{             
          $("#content").find("[id^='tab']").hide(); // Hide all content
          $("#tabs li").attr("id",""); //Reset id's
          $(this).parent().attr("id","current"); // Activate this
          $('#' + $(this).attr('name')).fadeIn(); // Show content for the current tab
        }
    });
});
</script>

<div class="elife-section-title"><h1><a><?php echo $product['name'] ?></a></h1></div>
<div class="seo_content" ><?php echo htmlspecialchars_decode($product['seo_content']) ?></div>
<div class="elife-section-content">
    <div class="elife-item-line"></div>
    <div class="elife-product-detail">
        <table width="100%">
            <tr>
                
					<div class="pikachoose">
						<ul id="pikame" class="jcarousel-skin-pika">
							<?php if(count($product['product_image'])){ foreach($product['product_image'] as $product_image){ 
                                if($product_image['image']=='')
                                  continue;
                            ?>
								<li>
									<a title="<?php echo $product['name'] ?>" href="">
										<img src="images/fixsize-350x200/<?php echo $product_image['image']?>" alt="<?php echo $product_image['image'] ?>" />
									</a>
								</li>
							<?php } } ?>
            </tr>    
             <tr>

				<ul id="tabs">
					<li><a href="#" name="tab1">Description</a></li>
					<li><a href="#" name="tab2">Demensions</a></li>				
				</ul>

				<div id="content"> 
					<div id="tab1">
						<p><label><?php echo $text_model ?>:</label> <span class="model"><?php echo $product['model'] ?></span></p>						
						 <div class="product-description">
							<p><?php echo htmlspecialchars_decode($product['description']) ?></p>
						</div>            
					</div>
					<div id="tab2">
						<p>
							<?php echo htmlspecialchars_decode($product['summary']) ?>
						</p>  
						
					</div>					
				</div>				 
                
            </tr>
        </table>
      	
        <div class="clearer"></div>
    </div>
    
    <div class="elife-content-line"></div>
    <h2><?php echo $title_other ?></h2>
    <div class="elife-product-list">
        <div class="elife-wrapper">
            <ul id="product-row-0" class="product-row">
                <!--Product-->
                <?php if(count($products) > 0) { foreach ($products as $item) { ?>
                    <li id="productid" class="product">
                        <div class="product-image">
                            <a class="product-link" href="<?php echo $item['link'] ?>">
                                <!--<span class="sale-icon"></span>-->
                                <img height="150px" alt="<?php echo $item['name'] ?>" src="images/fixsize-182x150/<?php echo $item['image']?>">
                            </a>
                        </div>
                        <div class="product-name" title="<?php echo $item['name'] ?>">
                            <a class="product-link" href="<?php echo $item['link'] ?>">
                                <span class="model"><?php echo $item['name'] ?></span>                      
                                
                            </a>
                        </div>
                    </li>
                <?php } } ?>
            </ul>
            <div class="clearer"></div>
        </div>
    </div>
</div>

<div class="elife-section-footer"></div>