<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a><!--<span class="elife-product-count">(<?php echo $count ?> items)</span>--></h1></div>
<div class="elife-section-content elife-product">
  
    <!-- HTML PRODUCT -->
   
   


    <div class="elife-product-list">
        <div class="elife-wrapper">
        <?php if(count($products) > 0) { foreach ($products as $product) { ?>     
			<div class="item-group">
				
					<!--Product-->
					<?php if(count($product['items']) > 0) { ?>
						<?php if($product['items'][0]['productid'] != ""){ ?>
							<div class="item-groupmenu elife-left">
								<div class="product-image">
									<a class="product-link" href="<?php echo $product['sitemaplink'] ?>">
										<img style="border: 1px solid #fff;" witdh="200px" height="150px" alt="<?php echo $item['name'] ?>" src="images/fixsize-200x150/<?php echo $product['items'][0]['image']?>">
									</a>
									<div style="margin-top:10px;"><a style="font-size: 1.3em; font-weight: bold;" href="<?php echo $product['sitemaplink'] ?>"><?php echo $product['sitemapname'] ?></a></div>
								</div>  
							</div>
						<?php } ?>
						
					<?php } ?>			
					
			</div>
           
        <?php } } ?>
		 <div class="clearer"></div>
        </div>
    </div>
    
   
    
</div>
<div class="elife-section-footer"></div>

<style type="text/css">
.product-capacity {display:block}
</style>

<script language="javascript">
$('.filter_orderby').change(function(){
	var order = $('input:radio[name=order]:checked').val();
	var url = "<?php echo $this->smartweb->weburl ?>?filter=" + $(this).val() + "&order=" + order;
	var page = "<?php echo $_GET['page'] ?>";
	if(page != ''){
		url += "&page=" + page;	
	}
	window.location = url;
});

$('.order').click(function(){
	$(this).attr('checked', true);
	order = this.value;
	$('#order-' + order).attr('checked', true);
	$('.filter_orderby').change();
});

$('.order-bottom').click(function(){
	$(this).attr('checked', true);
	order = this.value;
	$('#' + order).attr('checked', true);
	$('.filter_orderby').change();
});

$('.filter_orderby').each(function(index, element) {
    $(this).val("<?php echo $_GET['filter'] ?>");
});

$(document).ready(function(e) {
	$('.order').each(function(index, element) {
        $(this).attr('checked', false);
    });
	
	$('.order-bottom').each(function(index, element) {
        $(this).attr('checked', false);
    });
	
    order = "<?php echo $_GET['order'] ?>";
	if(order == ''){
		order = 'DESC';	
	}
	$('#' + order).attr('checked', true);
	$('#order-' + order).attr('checked', true);
});
//alert("<?php echo $_GET['order'] ?>");

</script>